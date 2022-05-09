; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/atmel/atmel.c_pt.bc'
source_filename = "../drivers/net/wireless/atmel/atmel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atmel_open\22, \22a\22\09"
module asm "\09.weak\09__crc_atmel_open\09\09\09\09"
module asm "\09.long\09__crc_atmel_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_open:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_open\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_atmel_card\22, \22a\22\09"
module asm "\09.weak\09__crc_init_atmel_card\09\09\09\09"
module asm "\09.long\09__crc_init_atmel_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_atmel_card:\09\09\09\09\09"
module asm "\09.asciz \09\22init_atmel_card\22\09\09\09\09\09"
module asm "__kstrtabns_init_atmel_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+stop_atmel_card\22, \22a\22\09"
module asm "\09.weak\09__crc_stop_atmel_card\09\09\09\09"
module asm "\09.long\09__crc_stop_atmel_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stop_atmel_card:\09\09\09\09\09"
module asm "\09.asciz \09\22stop_atmel_card\22\09\09\09\09\09"
module asm "__kstrtabns_stop_atmel_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.128 = type { i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.anon.134 = type { i32, ptr, ptr }
%struct.get_set_mib = type { i8, i8, i8, i8, [212 x i8] }
%struct.anon.135 = type { i8, i8, i8, i8, i32, i32, [4 x [13 x i8]], i8, [3 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.atmel_private = type { ptr, ptr, [32 x i8], i32, ptr, i32, %struct.timer_list, ptr, ptr, %struct.iw_statistics, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i8, i8, i8, i8, i8, i8, [4 x [40 x i8]], [4 x i32], i32, i32, i16, %struct.host_info_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x %struct.bss_info], i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [32 x i8], [32 x i8], i64, [2316 x i8] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.host_info_struct = type { i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8] }
%struct.bss_info = type { i32, i32, i32, i32, i32, i32, i32, [6 x i8], [32 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.133 = type { [6 x i8], [32 x i8], i8, i8, i16, i16, i16, i8, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ass_req_format = type { i16, i16, [6 x i8], i8, i8, [32 x i8], i8, i8, [4 x i8] }
%struct.auth_body = type { i16, i16, i16, i8, i8, [253 x i8] }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.atmel_priv_ioctl = type { [32 x i8], ptr, i16 }
%struct.iwreq = type { %union.anon.129, %union.iwreq_data }
%union.anon.129 = type { [16 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.132 = type { [4 x [40 x i8]], [6 x i8], i8, i8, i8, i8, i8, i8, i32, i32, [4 x [8 x i8]] }
%struct.anon.130 = type { [6 x i8], [32 x i8], i8, i8, i16, i8, i8 }
%struct.anon.131 = type { [6 x i8], [32 x i8], i8, i8, i8, [3 x i8] }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }

@__UNIQUE_ID_author347 = internal constant [26 x i8] c"atmel.author=Simon Kelley\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [77 x i8] c"atmel.description=Support for Atmel at76c50x 802.11 wireless ethernet cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [44 x i8] c"atmel.file=drivers/net/wireless/atmel/atmel\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [18 x i8] c"atmel.license=GPL\00", section ".modinfo", align 1
@__param_str_firmware = internal constant [15 x i8] c"atmel.firmware\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@firmware = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_firmware = internal constant %struct.kernel_param { ptr @__param_str_firmware, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @firmware } }, section "__param", align 4
@__UNIQUE_ID_firmwaretype351 = internal constant [30 x i8] c"atmel.parmtype=firmware:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [38 x i8] c"atmel.firmware=atmel_at76c502-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [34 x i8] c"atmel.firmware=atmel_at76c502.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [39 x i8] c"atmel.firmware=atmel_at76c502d-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [35 x i8] c"atmel.firmware=atmel_at76c502d.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [39 x i8] c"atmel.firmware=atmel_at76c502e-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [35 x i8] c"atmel.firmware=atmel_at76c502e.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [43 x i8] c"atmel.firmware=atmel_at76c502_3com-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [39 x i8] c"atmel.firmware=atmel_at76c502_3com.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [38 x i8] c"atmel.firmware=atmel_at76c504-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [34 x i8] c"atmel.firmware=atmel_at76c504.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [43 x i8] c"atmel.firmware=atmel_at76c504_2958-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [39 x i8] c"atmel.firmware=atmel_at76c504_2958.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [44 x i8] c"atmel.firmware=atmel_at76c504a_2958-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [40 x i8] c"atmel.firmware=atmel_at76c504a_2958.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [38 x i8] c"atmel.firmware=atmel_at76c506-wpa.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [34 x i8] c"atmel.firmware=atmel_at76c506.bin\00", section ".modinfo", align 1
@__kstrtab_atmel_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_open = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_open to i32), ptr @__kstrtab_atmel_open, ptr @__kstrtabns_atmel_open }, section "___ksymtab+atmel_open", align 4
@channel_table = internal constant { [8 x %struct.anon.128], [32 x i8] } { [8 x %struct.anon.128] [%struct.anon.128 { i32 16, i32 1, i32 11, ptr @.str.22 }, %struct.anon.128 { i32 32, i32 1, i32 11, ptr @.str.23 }, %struct.anon.128 { i32 48, i32 1, i32 13, ptr @.str.24 }, %struct.anon.128 { i32 49, i32 10, i32 11, ptr @.str.25 }, %struct.anon.128 { i32 50, i32 10, i32 13, ptr @.str.26 }, %struct.anon.128 { i32 64, i32 14, i32 14, ptr @.str.27 }, %struct.anon.128 { i32 65, i32 1, i32 14, ptr @.str.28 }, %struct.anon.128 { i32 80, i32 3, i32 9, ptr @.str.29 }], [32 x i8] zeroinitializer }, align 32
@atmel_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\011%s: failed to get regulatory domain: assuming MKK1.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel_open\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/wireless/atmel/atmel.c\00", [61 x i8] zeroinitializer }, align 32
@atmel_open._entry_ptr = internal global ptr @atmel_open._entry, section ".printk_index", align 4
@init_atmel_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013atmel: Couldn't get name!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_atmel_card\00", [16 x i8] zeroinitializer }, align 32
@init_atmel_card._entry_ptr = internal global ptr @init_atmel_card._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_atmel_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&priv->management_timer)\00", [38 x i8] zeroinitializer }, align 32
@init_atmel_card.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->irqlock\00", [17 x i8] zeroinitializer }, align 32
@init_atmel_card.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->timerlock\00", [47 x i8] zeroinitializer }, align 32
@atmel_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @atmel_open, ptr @atmel_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr null, ptr @atmel_set_mac_address, ptr @eth_validate_addr, ptr @atmel_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@atmel_handler_def = internal constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @atmel_handler, i16 55, i16 1, i16 3, ptr @atmel_private_handler, ptr @atmel_private_args, ptr @atmel_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@init_atmel_card._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: register interrupt %d failed, rc %d\0A\00", [53 x i8] zeroinitializer }, align 32
@init_atmel_card._entry_ptr.12 = internal global ptr @init_atmel_card._entry.10, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atmel_cs\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_pci\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"driver/atmel\00", [19 x i8] zeroinitializer }, align 32
@init_atmel_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014atmel: unable to create /proc entry.\0A\00", [56 x i8] zeroinitializer }, align 32
@init_atmel_card._entry_ptr.18 = internal global ptr @init_atmel_card._entry.16, section ".printk_index", align 4
@init_atmel_card._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.2, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Atmel at76c50x. Version %d.%d. MAC %pM\0A\00", [50 x i8] zeroinitializer }, align 32
@init_atmel_card._entry_ptr.21 = internal global ptr @init_atmel_card._entry.19, section ".printk_index", align 4
@__kstrtab_init_atmel_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_atmel_card = external dso_local constant [0 x i8], align 1
@__ksymtab_init_atmel_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_atmel_card to i32), ptr @__kstrtab_init_atmel_card, ptr @__kstrtabns_init_atmel_card }, section "___ksymtab+init_atmel_card", align 4
@__kstrtab_stop_atmel_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_stop_atmel_card = external dso_local constant [0 x i8], align 1
@__ksymtab_stop_atmel_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stop_atmel_card to i32), ptr @__kstrtab_stop_atmel_card, ptr @__kstrtabns_stop_atmel_card }, section "___ksymtab+stop_atmel_card", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USA\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Canada\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Europe\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Spain\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"France\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MKK\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MKK1\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Israel\00", [25 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@service_interrupt.irq_order = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" \02\01\04\08\10@\80", [24 x i8] zeroinitializer }, align 32
@service_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011%s: failed to contact MAC.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"service_interrupt\00", [46 x i8] zeroinitializer }, align 32
@service_interrupt._entry_ptr = internal global ptr @service_interrupt._entry, section ".printk_index", align 4
@service_interrupt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@service_interrupt._entry_ptr.36 = internal global ptr @service_interrupt._entry.35, section ".printk_index", align 4
@service_interrupt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\011%s: *** FATAL error interrupt ***\0A\00", [59 x i8] zeroinitializer }, align 32
@service_interrupt._entry_ptr.39 = internal global ptr @service_interrupt._entry.37, section ".printk_index", align 4
@service_interrupt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Generic_irq received.\0A\00", [35 x i8] zeroinitializer }, align 32
@service_interrupt._entry_ptr.42 = internal global ptr @service_interrupt._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atmel_basic_rates = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\82\84\0B\16", [28 x i8] zeroinitializer }, align 32
@atmel_send_command_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.43, ptr @.str.2, i32 4065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_send_command_wait\00", [40 x i8] zeroinitializer }, align 32
@atmel_send_command_wait._entry_ptr = internal global ptr @atmel_send_command_wait._entry, section ".printk_index", align 4
@atmel_set_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 4119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\011%s: MIB buffer too small.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel_set_mib\00", [18 x i8] zeroinitializer }, align 32
@atmel_set_mib._entry_ptr = internal global ptr @atmel_set_mib._entry, section ".printk_index", align 4
@atmel_get_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str.2, i32 4134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel_get_mib\00", [18 x i8] zeroinitializer }, align 32
@atmel_get_mib._entry_ptr = internal global ptr @atmel_get_mib._entry, section ".printk_index", align 4
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Driver version:\09\09%d.%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Firmware version:\09%d.%d build %d\0AFirmware location:\09\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"on card\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s loaded by host\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s loaded by hotplug\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Parallel flash\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPI flash\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EEPROM\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC memory type:\09%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Regulatory domain:\09%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Host CRC checking:\09%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WPA-capable firmware:\09%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Scanning\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Joining\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Authenticating\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Associating\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reassociating\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Management error\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Down\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Current state:\09\09%s\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_handler = internal constant { [55 x ptr], [36 x i8] } { [55 x ptr] [ptr @atmel_config_commit, ptr @atmel_get_name, ptr null, ptr null, ptr @atmel_set_freq, ptr @atmel_get_freq, ptr @atmel_set_mode, ptr @atmel_get_mode, ptr null, ptr null, ptr null, ptr @atmel_get_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_set_wap, ptr @atmel_get_wap, ptr null, ptr null, ptr @atmel_set_scan, ptr @atmel_get_scan, ptr @atmel_set_essid, ptr @atmel_get_essid, ptr null, ptr null, ptr null, ptr null, ptr @atmel_set_rate, ptr @atmel_get_rate, ptr @atmel_set_rts, ptr @atmel_get_rts, ptr @atmel_set_frag, ptr @atmel_get_frag, ptr null, ptr null, ptr @atmel_set_retry, ptr @atmel_get_retry, ptr @atmel_set_encode, ptr @atmel_get_encode, ptr @atmel_set_power, ptr @atmel_get_power, ptr null, ptr null, ptr null, ptr null, ptr @atmel_set_auth, ptr @atmel_get_auth, ptr @atmel_set_encodeext, ptr @atmel_get_encodeext, ptr null], [36 x i8] zeroinitializer }, align 32
@atmel_private_handler = internal constant { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@atmel_private_args = internal constant { [3 x %struct.iw_priv_args], [56 x i8] } { [3 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 6184, i16 0, [16 x i8] c"atmelfwl\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 0, i16 18433, [16 x i8] c"atmelidifc\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 8212, i16 0, [16 x i8] c"regdomain\00\00\00\00\00\00\00" }], [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11-DS\00", [17 x i8] zeroinitializer }, align 32
@atmel_set_wap.any = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@atmel_set_wap.off = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@mac_reader = internal constant { [660 x i8], [172 x i8] } { [660 x i8] c"\06\00\00\EA\04\00\00\EA\03\00\00\EA\02\00\00\EA\01\00\00\EA\00\00\00\EA\FF\FF\FF\EA\FE\FF\FF\EA\D3\00\A0\E3\00\F0!\E1\0E\04\A0\E3\00\10\A0\E3\81\11\A0\E1\00\10\81\E3\00\10\80\E5\1C\10\90\E5\10\10\C1\E3\1C\10\80\E5\01\10\A0\E3\08\10\80\E5\02\03\A0\E3\00\10\A0\E3\B0\10\C0\E1\B4\10\C0\E1\B8\10\C0\E1\BC\10\C0\E1V\DC\A0\E3!\00\00\EB\0A\00\A0\E3\1A\00\00\EB\10\00\00\EB\07\00\00\EB\02\03\A0\E3\02\14\A0\E3\B4\10\C0\E1L\10\9F\E5\BC\10\C0\E1\10\10\A0\E3\B8\10\C0\E1\FE\FF\FF\EA\00@-\E9\00 \A0\E3\02<\A0\E3\00\10\A0\E3(\00\9F\E57\00\00\EB\00@\BD\E8\1E\FF/\E1\00@-\E9\12.\A0\E3\060\A0\E3\00\10\A0\E3\02\04\A0\E3/\00\00\EB\00@\BD\E8\1E\FF/\E1\00\02\00\02\80\01\90\E0\01\00\00\0A\01\00P\E2\FC\FF\FF\EA\1E\FF/\E1\80\10\A0\E3\F3\06\A0\E3\00\10\80\E5\00\10\A0\E3\00\10\80\E5\01\10\A0\E3\04\10\80\E5\00\10\80\E5\0E4\A0\E3\1C\10\93\E5\02\1A\81\E3\1C\10\83\E5X\11\9F\E50\10\80\E5T\11\9F\E54\10\80\E58\10\80\E5<\10\80\E5\10\10\90\E5\08\00\90\E5\1E\FF/\E1\F3\16\A0\E3\08\00\91\E5\05\00\A0\E3\0C\00\81\E5\10\00\91\E5\02\00\10\E3\FC\FF\FF\0A\FF\00\A0\E3\0C\00\81\E5\10\00\91\E5\02\00\10\E3\FC\FF\FF\0A\08\00\91\E5\10\00\91\E5\01\00\10\E3\FC\FF\FF\0A\08\00\91\E5\FF\00\00\E2\1E\FF/\E10@-\E9\00P\A0\E1\03@\A0\E1\A2\02\A0\E1\08\00\00\E2\03\00\80\E2\D8\10\9F\E5\00\00\C1\E5\01 \C1\E5\E2\FF\FF\EB\01\00\10\E3\FC\FF\FF\1A\14\00\A0\E3\C4\FF\FF\EB\04 \A0\E1\05\10\A0\E1\02\00\A0\E3\01\00\00\EB0@\BD\E8\1E\FF/\E1p@-\E9\F3F\A0\E3\000\A0\E3\00\00P\E3\08\00\00\9A\8CP\9F\E5\03`\D5\E7\0C`\84\E5\10`\94\E5\02\00\16\E3\FC\FF\FF\0A\010\83\E2\00\00S\E1\F7\FF\FF:\FF0\A0\E3\0C0\84\E5\08\00\94\E5\10\00\94\E5\01\00\10\E3\FC\FF\FF\0A\08\00\94\E5\00\00\A0\E3\00\00R\E3\0B\00\00\9A\10P\94\E5\02\00\15\E3\FC\FF\FF\0A\0C0\84\E5\10P\94\E5\01\00\15\E3\FC\FF\FF\0A\08P\94\E5\01P\C1\E4\01\00\80\E2\02\00P\E1\F3\FF\FF:\C8\00\A0\E3\98\FF\FF\EBp@\BD\E8\1E\FF/\E1\01\0C\00\02\01\02\00\02\00\01\00\02", [172 x i8] zeroinitializer }, align 32
@probe_atmel_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 3695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\011%s: MAC failed to boot MAC address reader.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"probe_atmel_card\00", [47 x i8] zeroinitializer }, align 32
@probe_atmel_card._entry_ptr = internal global ptr @probe_atmel_card._entry, section ".printk_index", align 4
@probe_atmel_card.default_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\04%\00\00\00", [26 x i8] zeroinitializer }, align 32
@probe_atmel_card._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 3737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\011%s: *** Invalid MAC address. UPGRADE Firmware ****\0A\00", [42 x i8] zeroinitializer }, align 32
@probe_atmel_card._entry_ptr.78 = internal global ptr @probe_atmel_card._entry.76, section ".printk_index", align 4
@atmel_wakeup_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 3601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\011%s: MAC failed to boot.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_wakeup_firmware\00", [42 x i8] zeroinitializer }, align 32
@atmel_wakeup_firmware._entry_ptr = internal global ptr @atmel_wakeup_firmware._entry, section ".printk_index", align 4
@atmel_wakeup_firmware._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 3606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011%s: card missing.\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_wakeup_firmware._entry_ptr.83 = internal global ptr @atmel_wakeup_firmware._entry.81, section ".printk_index", align 4
@atmel_wakeup_firmware._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 3630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011%s: MAC failed to initialise.\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_wakeup_firmware._entry_ptr.86 = internal global ptr @atmel_wakeup_firmware._entry.84, section ".printk_index", align 4
@atmel_wakeup_firmware._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 3637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011%s: MAC failed MR3 self-test.\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_wakeup_firmware._entry_ptr.89 = internal global ptr @atmel_wakeup_firmware._entry.87, section ".printk_index", align 4
@atmel_wakeup_firmware._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 3642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011%s: MAC failed MR1 self-test.\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_wakeup_firmware._entry_ptr.92 = internal global ptr @atmel_wakeup_firmware._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-wpa\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@reset_atmel_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 3892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: card type is unknown: assuming at76c502 firmware is OK.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset_atmel_card\00", [47 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry_ptr = internal global ptr @reset_atmel_card._entry, section ".printk_index", align 4
@reset_atmel_card._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 3895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: if not, use the firmware= module parameter.\0A\00", [45 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry_ptr.99 = internal global ptr @reset_atmel_card._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_at76c502.bin\00", [45 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.2, i32 3902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011%s: firmware %s is missing, cannot continue.\0A\00", [48 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry_ptr.103 = internal global ptr @reset_atmel_card._entry.101, section ".printk_index", align 4
@fw_table = internal constant { [9 x %struct.anon.134], [52 x i8] } { [9 x %struct.anon.134] [%struct.anon.134 { i32 1, ptr @.str.111, ptr @.str.112 }, %struct.anon.134 { i32 2, ptr @.str.113, ptr @.str.112 }, %struct.anon.134 { i32 3, ptr @.str.114, ptr @.str.112 }, %struct.anon.134 { i32 4, ptr @.str.115, ptr @.str.112 }, %struct.anon.134 { i32 5, ptr @.str.116, ptr @.str.112 }, %struct.anon.134 { i32 6, ptr @.str.117, ptr @.str.112 }, %struct.anon.134 { i32 7, ptr @.str.118, ptr @.str.112 }, %struct.anon.134 { i32 8, ptr @.str.119, ptr @.str.112 }, %struct.anon.134 zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s.%s\00", [24 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.96, ptr @.str.2, i32 3930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011%s: firmware %s is missing, cannot start.\0A\00", [51 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry_ptr.107 = internal global ptr @reset_atmel_card._entry.105, section ".printk_index", align 4
@reset_atmel_card._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.96, ptr @.str.2, i32 4000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: cannot turn the radio on.\0A\00", [63 x i8] zeroinitializer }, align 32
@reset_atmel_card._entry_ptr.110 = internal global ptr @reset_atmel_card._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_at76c502\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bin\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_at76c502d\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_at76c502e\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_at76c502_3com\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_at76c504\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_at76c504_2958\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_at76c504a_2958\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_at76c506\00", [17 x i8] zeroinitializer }, align 32
@switch.table.atmel_proc_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@switch.table.atmel_proc_show.120 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@switch.table.atmel_get_rate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000000, i32 2000000, i32 5500000, i32 11000000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 8, i64 9]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.122 = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.124 = internal global [10 x i64] [i64 8, i64 32, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 193]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.129 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 4, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3328]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 256]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 256]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 48]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 16, i64 2560, i64 4608]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 16, i64 2560, i64 4608]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.140 = internal global [10 x i64] [i64 8, i64 32, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 35808, i64 35809, i64 35810]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.149 = internal global [10 x i64] [i64 8, i64 32, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 11000000]
@__sancov_gen_cov_switch_values.151 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 81, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"channel_table\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 564, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1346, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1509, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1569, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1570, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1571, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"atmel_netdev_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1485, i32 36 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"atmel_handler_def\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2613, i32 36 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1585, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1589, i32 7 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1604, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1606, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1608, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 564, i32 48 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 565, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 566, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 567, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 568, i32 38 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 569, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 570, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 571, i32 36 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 156, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [10 x i8] c"irq_order\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1160, i32 18 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1188, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1208, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1239, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1255, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"atmel_basic_rates\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 558, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 4065, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 4119, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 4134, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1407, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1411, i32 7 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1418, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1420, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1422, i32 18 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1426, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1429, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1432, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1435, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1443, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1444, i32 17 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1445, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1446, i32 23 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1446, i32 30 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1447, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1448, i32 21 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1448, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1453, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1456, i32 7 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1459, i32 7 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1462, i32 7 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1465, i32 7 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1468, i32 7 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1471, i32 7 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1474, i32 7 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1480, i32 16 }
@___asan_gen_.388 = private unnamed_addr constant [14 x i8] c"atmel_handler\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2516, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant [22 x i8] c"atmel_private_handler\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2575, i32 25 }
@___asan_gen_.394 = private unnamed_addr constant [19 x i8] c"atmel_private_args\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2592, i32 34 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2009, i32 15 }
@___asan_gen_.400 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2473, i32 18 }
@___asan_gen_.403 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2474, i32 18 }
@___asan_gen_.406 = private unnamed_addr constant [11 x i8] c"mac_reader\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 394, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3695, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant [12 x i8] c"default_mac\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3734, i32 20 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3737, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3601, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3606, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3629, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3637, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3642, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3870, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3871, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3890, i32 6 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3893, i32 6 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3896, i32 32 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3900, i32 6 }
@___asan_gen_.490 = private unnamed_addr constant [9 x i8] c"fw_table\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 89, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3918, i32 39 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3928, i32 6 }
@___asan_gen_.502 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 3999, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 90, i32 24 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 90, i32 42 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 91, i32 25 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 92, i32 25 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 93, i32 28 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 94, i32 24 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 95, i32 28 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 96, i32 29 }
@___asan_gen_.532 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.533 = private constant [38 x i8] c"../drivers/net/wireless/atmel/atmel.c\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 97, i32 24 }
@___asan_gen_.535 = private unnamed_addr constant [29 x i8] c"switch.table.atmel_proc_show\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [33 x i8] c"switch.table.atmel_proc_show.120\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [28 x i8] c"switch.table.atmel_get_rate\00", align 1
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmwaretype351, ptr @__UNIQUE_ID_license350, ptr @__ksymtab_atmel_open, ptr @__ksymtab_init_atmel_card, ptr @__ksymtab_stop_atmel_card, ptr @__param_firmware, ptr @atmel_get_mib._entry, ptr @atmel_get_mib._entry_ptr, ptr @atmel_open._entry, ptr @atmel_open._entry_ptr, ptr @atmel_send_command_wait._entry, ptr @atmel_send_command_wait._entry_ptr, ptr @atmel_set_mib._entry, ptr @atmel_set_mib._entry_ptr, ptr @atmel_wakeup_firmware._entry, ptr @atmel_wakeup_firmware._entry.81, ptr @atmel_wakeup_firmware._entry.84, ptr @atmel_wakeup_firmware._entry.87, ptr @atmel_wakeup_firmware._entry.90, ptr @atmel_wakeup_firmware._entry_ptr, ptr @atmel_wakeup_firmware._entry_ptr.83, ptr @atmel_wakeup_firmware._entry_ptr.86, ptr @atmel_wakeup_firmware._entry_ptr.89, ptr @atmel_wakeup_firmware._entry_ptr.92, ptr @init_atmel_card._entry, ptr @init_atmel_card._entry.10, ptr @init_atmel_card._entry.16, ptr @init_atmel_card._entry.19, ptr @init_atmel_card._entry_ptr, ptr @init_atmel_card._entry_ptr.12, ptr @init_atmel_card._entry_ptr.18, ptr @init_atmel_card._entry_ptr.21, ptr @probe_atmel_card._entry, ptr @probe_atmel_card._entry.76, ptr @probe_atmel_card._entry_ptr, ptr @probe_atmel_card._entry_ptr.78, ptr @reset_atmel_card._entry, ptr @reset_atmel_card._entry.101, ptr @reset_atmel_card._entry.105, ptr @reset_atmel_card._entry.108, ptr @reset_atmel_card._entry.97, ptr @reset_atmel_card._entry_ptr, ptr @reset_atmel_card._entry_ptr.103, ptr @reset_atmel_card._entry_ptr.107, ptr @reset_atmel_card._entry_ptr.110, ptr @reset_atmel_card._entry_ptr.99, ptr @service_interrupt._entry, ptr @service_interrupt._entry.35, ptr @service_interrupt._entry.37, ptr @service_interrupt._entry.40, ptr @service_interrupt._entry_ptr, ptr @service_interrupt._entry_ptr.36, ptr @service_interrupt._entry_ptr.39, ptr @service_interrupt._entry_ptr.42, ptr @firmware, ptr @channel_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_atmel_card.__key, ptr @.str.5, ptr @init_atmel_card.__key.6, ptr @.str.7, ptr @init_atmel_card.__key.8, ptr @.str.9, ptr @atmel_netdev_ops, ptr @atmel_handler_def, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @service_interrupt.irq_order, ptr @.str.33, ptr @.str.34, ptr @.str.38, ptr @.str.41, ptr @atmel_basic_rates, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @atmel_handler, ptr @atmel_private_handler, ptr @atmel_private_args, ptr @.str.73, ptr @atmel_set_wap.any, ptr @atmel_set_wap.off, ptr @mac_reader, ptr @.str.74, ptr @.str.75, ptr @probe_atmel_card.default_mac, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @fw_table, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @switch.table.atmel_proc_show, ptr @switch.table.atmel_proc_show.120, ptr @switch.table.atmel_get_rate], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_atmel_card._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_interrupt.irq_order to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_interrupt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_interrupt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_interrupt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_basic_rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_send_command_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_set_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_get_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_handler to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_private_handler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_private_args to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_set_wap.any to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_set_wap.off to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_reader to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_atmel_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_atmel_card.default_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_atmel_card._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_wakeup_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_wakeup_firmware._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_wakeup_firmware._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_wakeup_firmware._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_wakeup_firmware._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_atmel_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_atmel_card._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_atmel_card._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_atmel_card._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_atmel_card._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_proc_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_proc_show.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_get_rate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_open(ptr noundef %dev) #0 align 64 {
entry:
  %m.i = alloca %struct.get_set_mib, align 1
  %mib.i.i = alloca %struct.anon.135, align 4
  %fw_entry.i = alloca ptr, align 4
  %wrqu.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %management_timer = getelementptr i8, ptr %dev, i32 2356
  %call1 = tail call i32 @del_timer_sync(ptr noundef %management_timer) #17
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %0 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %station_state, align 8
  %new_SSID_size = getelementptr i8, ptr %dev, i32 7296
  %1 = ptrtoint ptr %new_SSID_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_SSID_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %SSID = getelementptr i8, ptr %dev, i32 7312
  %new_SSID = getelementptr i8, ptr %dev, i32 7344
  %3 = call ptr @memcpy(ptr %SSID, ptr %new_SSID, i32 %2)
  %SSID_size = getelementptr i8, ptr %dev, i32 7292
  %4 = ptrtoint ptr %SSID_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %SSID_size, align 4
  %5 = ptrtoint ptr %new_SSID_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %new_SSID_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %BSS_list_entries = getelementptr i8, ptr %dev, i32 7280
  %6 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %BSS_list_entries, align 8
  %AuthenticationRequestRetryCnt = getelementptr i8, ptr %dev, i32 2896
  %7 = ptrtoint ptr %AuthenticationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %AuthenticationRequestRetryCnt, align 8
  %AssociationRequestRetryCnt = getelementptr i8, ptr %dev, i32 2900
  %8 = ptrtoint ptr %AssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %AssociationRequestRetryCnt, align 4
  %ReAssociationRequestRetryCnt = getelementptr i8, ptr %dev, i32 2904
  %9 = ptrtoint ptr %ReAssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ReAssociationRequestRetryCnt, align 8
  %CurrentAuthentTransactionSeqNum = getelementptr i8, ptr %dev, i32 2888
  %10 = ptrtoint ptr %CurrentAuthentTransactionSeqNum to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %CurrentAuthentTransactionSeqNum, align 8
  %ExpectedAuthentTransactionSeqNum = getelementptr i8, ptr %dev, i32 2892
  %11 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %ExpectedAuthentTransactionSeqNum, align 4
  %site_survey_state = getelementptr i8, ptr %dev, i32 2908
  %12 = ptrtoint ptr %site_survey_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %site_survey_state, align 4
  %station_is_associated = getelementptr i8, ptr %dev, i32 2920
  %13 = ptrtoint ptr %station_is_associated to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %station_is_associated, align 8
  %14 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %station_state, align 8
  %bus_type.i = getelementptr i8, ptr %dev, i32 2532
  %16 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i = getelementptr i8, ptr %dev, i32 2404
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr.i.i, align 32
  %and.i.i = and i32 %21, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %22 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 24576) #17, !srcloc !310
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dev2.i = getelementptr i8, ptr %dev, i32 2404
  %23 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i286.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %base_addr.i286.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_addr.i286.i, align 32
  %and.i287.i = and i32 %26, 1048575
  %add1.i288.i = or i32 %and.i287.i, -18874368
  %27 = inttoptr i32 %add1.i288.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 16384) #17, !srcloc !310
  %card_type.i = getelementptr i8, ptr %dev, i32 2536
  %28 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp3.i = icmp eq i32 %29, 2
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end103.i_crit_edge

if.end.i.if.end103.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103.i

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i) #17
  %30 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %fw_entry.i, align 4
  %firmware_length.i = getelementptr i8, ptr %dev, i32 2352
  %firmware.i = getelementptr i8, ptr %dev, i32 2348
  %31 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %firmware.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then5.i, label %if.then4.i.if.end83.i_crit_edge

if.then4.i.if.end83.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83.i

if.then5.i:                                       ; preds = %if.then4.i
  %firmware_type.i = getelementptr i8, ptr %dev, i32 2344
  %33 = ptrtoint ptr %firmware_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %firmware_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.i = icmp eq i32 %34, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.then5.i.while.cond.i_crit_edge

if.then5.i.while.cond.i_crit_edge:                ; preds = %if.then5.i
  br label %while.cond.i

if.then7.i:                                       ; preds = %if.then5.i
  %firmware_id.i = getelementptr i8, ptr %dev, i32 2312
  %35 = ptrtoint ptr %firmware_id.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %char0.i = load i8, ptr %firmware_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %cmp9.i = icmp eq i8 %char0.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.then7.i.if.end23.i_crit_edge

if.then7.i.if.end23.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %dev) #20
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %dev) #20
  %36 = call ptr @memcpy(ptr %firmware_id.i, ptr @.str.100, i32 19)
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %if.then7.i.if.end23.i_crit_edge
  %sys_dev.i = getelementptr i8, ptr %dev, i32 2408
  %37 = ptrtoint ptr %sys_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sys_dev.i, align 8
  %call26.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef %firmware_id.i, ptr noundef %38) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.not.i, label %if.end23.i.if.end82.i_crit_edge, label %do.end31.i

if.end23.i.if.end82.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %dev, ptr noundef %firmware_id.i) #20
  br label %cleanup98.thread.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then5.i.while.cond.i_crit_edge
  %fw_index.0.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %if.then5.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.anon.134], ptr @fw_table, i32 0, i32 %fw_index.0.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %34)
  %cmp40.not.i = icmp eq i32 %40, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp43.not.i = icmp eq i32 %40, 0
  %or.cond.i = or i1 %cmp40.not.i, %cmp43.not.i
  %inc.i = add nuw nsw i32 %fw_index.0.i, 1
  br i1 %or.cond.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  br i1 %cmp43.not.i, label %while.end.i.do.end71.i_crit_edge, label %for.cond.preheader.i

while.end.i.do.end71.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71.i

for.cond.preheader.i:                             ; preds = %while.end.i
  %firmware_id50.i = getelementptr i8, ptr %dev, i32 2312
  %fw_file.i = getelementptr [9 x %struct.anon.134], ptr @fw_table, i32 0, i32 %fw_index.0.i, i32 1
  %41 = ptrtoint ptr %fw_file.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw_file.i, align 4
  %fw_file_ext.i = getelementptr [9 x %struct.anon.134], ptr @fw_table, i32 0, i32 %fw_index.0.i, i32 2
  %43 = ptrtoint ptr %fw_file_ext.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_file_ext.i, align 4
  %arrayidx57.i = getelementptr i8, ptr %dev, i32 2343
  %sys_dev60.i = getelementptr i8, ptr %dev, i32 2408
  %call55.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %firmware_id50.i, i32 noundef 32, ptr noundef nonnull @.str.104, ptr noundef %42, ptr noundef nonnull @.str.93, ptr noundef %44) #17
  %45 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx57.i, align 1
  %46 = ptrtoint ptr %sys_dev60.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sys_dev60.i, align 8
  %call61.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef %firmware_id50.i, ptr noundef %47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp eq i32 %call61.i, 0
  br i1 %cmp62.i, label %for.cond.preheader.i.if.end82.i_crit_edge, label %for.cond.i

for.cond.preheader.i.if.end82.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %call55.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %firmware_id50.i, i32 noundef 32, ptr noundef nonnull @.str.104, ptr noundef %42, ptr noundef nonnull @.str.94, ptr noundef %44) #17
  %48 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx57.i, align 1
  %49 = ptrtoint ptr %sys_dev60.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sys_dev60.i, align 8
  %call61.1.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef %firmware_id50.i, ptr noundef %50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.1.i)
  %cmp62.1.i = icmp eq i32 %call61.1.i, 0
  br i1 %cmp62.1.i, label %for.cond.i.if.end82.i_crit_edge, label %for.cond.i.do.end71.i_crit_edge

for.cond.i.do.end71.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71.i

for.cond.i.if.end82.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82.i

do.end71.i:                                       ; preds = %for.cond.i.do.end71.i_crit_edge, %while.end.i.do.end71.i_crit_edge
  %firmware_id75.i = getelementptr i8, ptr %dev, i32 2312
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %dev, ptr noundef %firmware_id75.i) #20
  %51 = ptrtoint ptr %firmware_id75.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %firmware_id75.i, align 8
  br label %cleanup98.thread.i

if.end82.i:                                       ; preds = %for.cond.i.if.end82.i_crit_edge, %for.cond.preheader.i.if.end82.i_crit_edge, %if.end23.i.if.end82.i_crit_edge
  %52 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw_entry.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end82.i, %if.then4.i.if.end83.i_crit_edge
  %fw.0.i = phi ptr [ %32, %if.then4.i.if.end83.i_crit_edge ], [ %55, %if.end82.i ]
  %len.0.in.i = phi ptr [ %firmware_length.i, %if.then4.i.if.end83.i_crit_edge ], [ %53, %if.end82.i ]
  %56 = ptrtoint ptr %len.0.in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %len.0.i = load i32, ptr %len.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24577, i32 %len.0.i)
  %cmp84.i = icmp slt i32 %len.0.i, 24577
  %57 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %base_addr.i289.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %base_addr.i289.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_addr.i289.i, align 32
  br i1 %cmp84.i, label %if.then85.i, label %if.else89.i

if.then85.i:                                      ; preds = %if.end83.i
  %add.i.i = add i32 %60, 2
  %and.i290.i = and i32 %add.i.i, 1048575
  %add1.i291.i = or i32 %and.i290.i, -18874368
  %61 = inttoptr i32 %add1.i291.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 1) #17, !srcloc !310
  %62 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %63, i16 noundef zeroext 0) #17
  %conv1.i.i = and i32 %len.0.i, 65535
  %64 = and i32 %len.0.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp30.i.not.i = icmp eq i32 %64, 0
  br i1 %cmp30.i.not.i, label %if.then85.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then85.i.for.end.i.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then85.i
  %base_addr.i22.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %src.addr.132.i.i = phi ptr [ %fw.0.i, %for.body.lr.ph.i.i ], [ %incdec.ptr4.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.031.i.i = phi i32 [ %conv1.i.i, %for.body.lr.ph.i.i ], [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %incdec.ptr3.i.i = getelementptr i8, ptr %src.addr.132.i.i, i32 1
  %65 = ptrtoint ptr %src.addr.132.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %src.addr.132.i.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %src.addr.132.i.i, i32 2
  %67 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr3.i.i, align 1
  %conv5.i.i = zext i8 %66 to i16
  %conv6.i.i = zext i8 %68 to i16
  %shl.i.i = shl nuw i16 %conv6.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv5.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %69 = call i16 @llvm.bswap.i16(i16 %or.i.i) #17
  %70 = ptrtoint ptr %base_addr.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_addr.i22.i.i, align 32
  %add.i23.i.i = add i32 %71, 8
  %and.i24.i.i = and i32 %add.i23.i.i, 1048575
  %add1.i25.i.i = or i32 %and.i24.i.i, -18874368
  %72 = inttoptr i32 %add1.i25.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 %69) #17, !srcloc !310
  %sub.i.i = add nsw i32 %i.031.i.i, -2
  %cmp.i.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then85.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %conv1.i.i, %if.then85.i.for.end.i.i_crit_edge ], [ %sub.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %src.addr.1.lcssa.i.i = phi ptr [ %fw.0.i, %if.then85.i.for.end.i.i_crit_edge ], [ %incdec.ptr4.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %tobool8.not.i.i = icmp eq i32 %i.0.lcssa.i.i, 0
  br i1 %tobool8.not.i.i, label %for.end.i.i.atmel_copy_to_card.exit.i_crit_edge, label %if.then9.i.i

for.end.i.i.atmel_copy_to_card.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_card.exit.i

if.then9.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %src.addr.1.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %src.addr.1.lcssa.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i26.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 5
  %75 = ptrtoint ptr %base_addr.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %base_addr.i26.i.i, align 32
  %add.i27.i.i = add i32 %76, 8
  %and.i28.i.i = and i32 %add.i27.i.i, 1048575
  %add1.i29.i.i = or i32 %and.i28.i.i, -18874368
  %77 = inttoptr i32 %add1.i29.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %74) #17, !srcloc !312
  br label %atmel_copy_to_card.exit.i

atmel_copy_to_card.exit.i:                        ; preds = %if.then9.i.i, %for.end.i.i.atmel_copy_to_card.exit.i_crit_edge
  %78 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !313
  call void @arm_heavy_mb() #17
  %base_addr.i292.i = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %base_addr.i292.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base_addr.i292.i, align 32
  %and.i293.i = and i32 %81, 1048575
  %add1.i294.i = or i32 %and.i293.i, -18874368
  %82 = inttoptr i32 %add1.i294.i to ptr
  %83 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %82) #17, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  %84 = or i16 %83, 4
  %85 = ptrtoint ptr %base_addr.i292.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base_addr.i292.i, align 32
  %and7.i.i = and i32 %86, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %87 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 %84) #17, !srcloc !310
  br label %cleanup98.i

if.else89.i:                                      ; preds = %if.end83.i
  %and.i296.i = and i32 %60, 1048575
  %add1.i297.i = or i32 %and.i296.i, -18874368
  %88 = inttoptr i32 %add1.i297.i to ptr
  %89 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %88) #17, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  %90 = or i16 %89, 4
  %91 = ptrtoint ptr %base_addr.i289.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %base_addr.i289.i, align 32
  %and7.i299.i = and i32 %92, 1048575
  %add8.i300.i = or i32 %and7.i299.i, -18874368
  %93 = inttoptr i32 %add8.i300.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %93, i16 %90) #17, !srcloc !310
  %94 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i301.i = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %base_addr.i301.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %base_addr.i301.i, align 32
  %add.i302.i = add i32 %97, 2
  %and.i303.i = and i32 %add.i302.i, 1048575
  %add1.i304.i = or i32 %and.i303.i, -18874368
  %98 = inttoptr i32 %add1.i304.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %98, i16 1) #17, !srcloc !310
  %99 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %100, i16 noundef zeroext 0) #17
  %base_addr.i22.i307.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 5
  br label %for.body.i322.i

for.body.i322.i:                                  ; preds = %for.body.i322.i.for.body.i322.i_crit_edge, %if.else89.i
  %src.addr.132.i309.i = phi ptr [ %fw.0.i, %if.else89.i ], [ %incdec.ptr4.i312.i, %for.body.i322.i.for.body.i322.i_crit_edge ]
  %i.031.i310.i = phi i32 [ 24576, %if.else89.i ], [ %sub.i320.i, %for.body.i322.i.for.body.i322.i_crit_edge ]
  %incdec.ptr3.i311.i = getelementptr i8, ptr %src.addr.132.i309.i, i32 1
  %101 = ptrtoint ptr %src.addr.132.i309.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %src.addr.132.i309.i, align 1
  %incdec.ptr4.i312.i = getelementptr i8, ptr %src.addr.132.i309.i, i32 2
  %103 = ptrtoint ptr %incdec.ptr3.i311.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %incdec.ptr3.i311.i, align 1
  %conv5.i313.i = zext i8 %102 to i16
  %conv6.i314.i = zext i8 %104 to i16
  %shl.i315.i = shl nuw i16 %conv6.i314.i, 8
  %or.i316.i = or i16 %shl.i315.i, %conv5.i313.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %105 = call i16 @llvm.bswap.i16(i16 %or.i316.i) #17
  %106 = ptrtoint ptr %base_addr.i22.i307.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_addr.i22.i307.i, align 32
  %add.i23.i317.i = add i32 %107, 8
  %and.i24.i318.i = and i32 %add.i23.i317.i, 1048575
  %add1.i25.i319.i = or i32 %and.i24.i318.i, -18874368
  %108 = inttoptr i32 %add1.i25.i319.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %108, i16 %105) #17, !srcloc !310
  %sub.i320.i = add nsw i32 %i.031.i310.i, -2
  %cmp.i321.not.i = icmp eq i32 %sub.i320.i, 0
  br i1 %cmp.i321.not.i, label %atmel_copy_to_card.exit332.i, label %for.body.i322.i.for.body.i322.i_crit_edge

for.body.i322.i.for.body.i322.i_crit_edge:        ; preds = %for.body.i322.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i322.i

atmel_copy_to_card.exit332.i:                     ; preds = %for.body.i322.i
  %109 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i333.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %base_addr.i333.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base_addr.i333.i, align 32
  %add.i334.i = add i32 %112, 2
  %and.i335.i = and i32 %add.i334.i, 1048575
  %add1.i336.i = or i32 %and.i335.i, -18874368
  %113 = inttoptr i32 %add1.i336.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %113, i16 -254) #17, !srcloc !310
  %114 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev2.i, align 4
  %arrayidx95.i = getelementptr i8, ptr %fw.0.i, i32 24576
  %116 = trunc i32 %len.0.i to i16
  %conv96.i = add i16 %116, -24576
  call fastcc void @atmel_writeAR(ptr noundef %115, i16 noundef zeroext -32768) #17
  %conv1.i337.i = zext i16 %conv96.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv96.i)
  %cmp30.i338.i = icmp ugt i16 %conv96.i, 1
  br i1 %cmp30.i338.i, label %for.body.lr.ph.i340.i, label %atmel_copy_to_card.exit332.i.for.end.i358.i_crit_edge

atmel_copy_to_card.exit332.i.for.end.i358.i_crit_edge: ; preds = %atmel_copy_to_card.exit332.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i358.i

for.body.lr.ph.i340.i:                            ; preds = %atmel_copy_to_card.exit332.i
  %base_addr.i22.i339.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 5
  br label %for.body.i354.i

for.body.i354.i:                                  ; preds = %for.body.i354.i.for.body.i354.i_crit_edge, %for.body.lr.ph.i340.i
  %src.addr.132.i341.i = phi ptr [ %arrayidx95.i, %for.body.lr.ph.i340.i ], [ %incdec.ptr4.i344.i, %for.body.i354.i.for.body.i354.i_crit_edge ]
  %i.031.i342.i = phi i32 [ %conv1.i337.i, %for.body.lr.ph.i340.i ], [ %sub.i352.i, %for.body.i354.i.for.body.i354.i_crit_edge ]
  %incdec.ptr3.i343.i = getelementptr i8, ptr %src.addr.132.i341.i, i32 1
  %117 = ptrtoint ptr %src.addr.132.i341.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %src.addr.132.i341.i, align 1
  %incdec.ptr4.i344.i = getelementptr i8, ptr %src.addr.132.i341.i, i32 2
  %119 = ptrtoint ptr %incdec.ptr3.i343.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %incdec.ptr3.i343.i, align 1
  %conv5.i345.i = zext i8 %118 to i16
  %conv6.i346.i = zext i8 %120 to i16
  %shl.i347.i = shl nuw i16 %conv6.i346.i, 8
  %or.i348.i = or i16 %shl.i347.i, %conv5.i345.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %121 = call i16 @llvm.bswap.i16(i16 %or.i348.i) #17
  %122 = ptrtoint ptr %base_addr.i22.i339.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %base_addr.i22.i339.i, align 32
  %add.i23.i349.i = add i32 %123, 8
  %and.i24.i350.i = and i32 %add.i23.i349.i, 1048575
  %add1.i25.i351.i = or i32 %and.i24.i350.i, -18874368
  %124 = inttoptr i32 %add1.i25.i351.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %124, i16 %121) #17, !srcloc !310
  %sub.i352.i = add nsw i32 %i.031.i342.i, -2
  %cmp.i353.i = icmp ugt i32 %sub.i352.i, 1
  br i1 %cmp.i353.i, label %for.body.i354.i.for.body.i354.i_crit_edge, label %for.body.i354.i.for.end.i358.i_crit_edge

for.body.i354.i.for.end.i358.i_crit_edge:         ; preds = %for.body.i354.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i358.i

for.body.i354.i.for.body.i354.i_crit_edge:        ; preds = %for.body.i354.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i354.i

for.end.i358.i:                                   ; preds = %for.body.i354.i.for.end.i358.i_crit_edge, %atmel_copy_to_card.exit332.i.for.end.i358.i_crit_edge
  %i.0.lcssa.i355.i = phi i32 [ %conv1.i337.i, %atmel_copy_to_card.exit332.i.for.end.i358.i_crit_edge ], [ %sub.i352.i, %for.body.i354.i.for.end.i358.i_crit_edge ]
  %src.addr.1.lcssa.i356.i = phi ptr [ %arrayidx95.i, %atmel_copy_to_card.exit332.i.for.end.i358.i_crit_edge ], [ %incdec.ptr4.i344.i, %for.body.i354.i.for.end.i358.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i355.i)
  %tobool8.not.i357.i = icmp eq i32 %i.0.lcssa.i355.i, 0
  br i1 %tobool8.not.i357.i, label %for.end.i358.i.cleanup98.i_crit_edge, label %if.then9.i363.i

for.end.i358.i.cleanup98.i_crit_edge:             ; preds = %for.end.i358.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup98.i

if.then9.i363.i:                                  ; preds = %for.end.i358.i
  call void @__sanitizer_cov_trace_pc() #19
  %125 = ptrtoint ptr %src.addr.1.lcssa.i356.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %src.addr.1.lcssa.i356.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i26.i359.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 5
  %127 = ptrtoint ptr %base_addr.i26.i359.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %base_addr.i26.i359.i, align 32
  %add.i27.i360.i = add i32 %128, 8
  %and.i28.i361.i = and i32 %add.i27.i360.i, 1048575
  %add1.i29.i362.i = or i32 %and.i28.i361.i, -18874368
  %129 = inttoptr i32 %add1.i29.i362.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %126) #17, !srcloc !312
  br label %cleanup98.i

cleanup98.thread.i:                               ; preds = %do.end71.i, %do.end31.i
  %retval.3.ph.i = phi i32 [ -2, %do.end71.i ], [ %call26.i, %do.end31.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #17
  br label %cleanup

cleanup98.i:                                      ; preds = %if.then9.i363.i, %for.end.i358.i.cleanup98.i_crit_edge, %atmel_copy_to_card.exit.i
  %130 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %131) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #17
  br label %if.end103.i

if.end103.i:                                      ; preds = %cleanup98.i, %if.end.i.if.end103.i_crit_edge
  %call104.i = call fastcc i32 @atmel_wakeup_firmware(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.not.i = icmp eq i32 %call104.i, 0
  br i1 %cmp105.not.i, label %if.end108.i, label %if.end103.i.cleanup_crit_edge

if.end103.i.cleanup_crit_edge:                    ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end108.i:                                      ; preds = %if.end103.i
  %major_version.i = getelementptr i8, ptr %dev, i32 2802
  %132 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %major_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %133)
  %cmp110.i = icmp eq i16 %133, 4
  %conv111.i = zext i1 %cmp110.i to i32
  %use_wpa.i = getelementptr i8, ptr %dev, i32 2768
  %134 = ptrtoint ptr %use_wpa.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv111.i, ptr %use_wpa.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %133)
  %cmp115.i = icmp eq i16 %133, 5
  %conv116.i = zext i1 %cmp115.i to i32
  %radio_on_broken.i = getelementptr i8, ptr %dev, i32 2772
  %135 = ptrtoint ptr %radio_on_broken.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv116.i, ptr %radio_on_broken.i, align 4
  %host_info_base.i.i = getelementptr i8, ptr %dev, i32 2776
  %136 = ptrtoint ptr %host_info_base.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %host_info_base.i.i, align 8
  %add.i365.i = add i16 %137, 1
  %138 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %139, i16 noundef zeroext %add.i365.i) #17
  %140 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %143, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %144 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 -1) #17, !srcloc !312
  %tx_desc_pos.i.i = getelementptr i8, ptr %dev, i32 2786
  %145 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %tx_desc_pos.i.i, align 2
  %add3.i.i = add i16 %146, 8
  %147 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %148, i16 noundef zeroext %add3.i.i) #17
  %149 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i367.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %base_addr.i.i367.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %base_addr.i.i367.i, align 32
  %add.i.i368.i = add i32 %152, 8
  %and.i.i369.i = and i32 %add.i.i368.i, 1048575
  %add1.i.i370.i = or i32 %and.i.i369.i, -18874368
  %153 = inttoptr i32 %add1.i.i370.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 0) #17, !srcloc !312
  %154 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %tx_desc_pos.i.i, align 2
  %156 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %157, i16 noundef zeroext %155) #17
  %158 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i.i373.i = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %base_addr.i.i373.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %base_addr.i.i373.i, align 32
  %add.i.i374.i = add i32 %161, 8
  %and.i.i375.i = and i32 %add.i.i374.i, 1048575
  %add1.i.i376.i = or i32 %and.i.i375.i, -18874368
  %162 = inttoptr i32 %add1.i.i376.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %162, i16 0) #17, !srcloc !310
  %163 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i7.i.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %base_addr.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %base_addr.i7.i.i, align 32
  %add.i8.i.i = add i32 %166, 8
  %and.i9.i.i = and i32 %add.i8.i.i, 1048575
  %add1.i10.i.i = or i32 %and.i9.i.i, -18874368
  %167 = inttoptr i32 %add1.i10.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %167, i16 128) #17, !srcloc !310
  %168 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %tx_desc_pos.i.i, align 2
  %add3.i378.i = add i16 %169, 4
  %170 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %171, i16 noundef zeroext %add3.i378.i) #17
  %172 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i.i380.i = getelementptr inbounds %struct.net_device, ptr %173, i32 0, i32 5
  %174 = ptrtoint ptr %base_addr.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %base_addr.i.i380.i, align 32
  %add.i.i381.i = add i32 %175, 8
  %and.i.i382.i = and i32 %add.i.i381.i, 1048575
  %add1.i.i383.i = or i32 %and.i.i382.i, -18874368
  %176 = inttoptr i32 %add1.i.i383.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %176, i16 0) #17, !srcloc !310
  %177 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %tx_desc_pos.i.i, align 2
  %add3.i385.i = add i16 %178, 6
  %179 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %180, i16 noundef zeroext %add3.i385.i) #17
  %181 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i.i387.i = getelementptr inbounds %struct.net_device, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %base_addr.i.i387.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %base_addr.i.i387.i, align 32
  %add.i.i388.i = add i32 %184, 8
  %and.i.i389.i = and i32 %add.i.i388.i, 1048575
  %add1.i.i390.i = or i32 %and.i.i389.i, -18874368
  %185 = inttoptr i32 %add1.i.i390.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %185, i16 0) #17, !srcloc !310
  %tx_desc_count.i = getelementptr i8, ptr %dev, i32 2788
  %186 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %tx_desc_count.i, align 2
  %tx_desc_free.i = getelementptr i8, ptr %dev, i32 2558
  %188 = ptrtoint ptr %tx_desc_free.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %tx_desc_free.i, align 2
  %tx_desc_head.i = getelementptr i8, ptr %dev, i32 2560
  %189 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %tx_desc_head.i, align 8
  %tx_desc_tail.i = getelementptr i8, ptr %dev, i32 2562
  %190 = ptrtoint ptr %tx_desc_tail.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %tx_desc_tail.i, align 2
  %tx_desc_previous.i = getelementptr i8, ptr %dev, i32 2564
  %191 = ptrtoint ptr %tx_desc_previous.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %tx_desc_previous.i, align 4
  %tx_buff_size.i = getelementptr i8, ptr %dev, i32 2784
  %192 = ptrtoint ptr %tx_buff_size.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %tx_buff_size.i, align 2
  %tx_free_mem.i = getelementptr i8, ptr %dev, i32 2566
  %194 = ptrtoint ptr %tx_free_mem.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %tx_free_mem.i, align 2
  %tx_buff_head.i = getelementptr i8, ptr %dev, i32 2568
  %195 = ptrtoint ptr %tx_buff_head.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %tx_buff_head.i, align 8
  %tx_buff_tail.i = getelementptr i8, ptr %dev, i32 2570
  %196 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %tx_buff_tail.i, align 2
  %197 = ptrtoint ptr %host_info_base.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %host_info_base.i.i, align 8
  %add.i392.i = add i16 %198, 28
  %199 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %200, i16 noundef zeroext %add.i392.i) #17
  %201 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev2.i, align 4
  %base_addr.i.i394.i = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %base_addr.i.i394.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %base_addr.i.i394.i, align 32
  %add.i.i395.i = add i32 %204, 8
  %and.i.i396.i = and i32 %add.i.i395.i, 1048575
  %add1.i.i397.i = or i32 %and.i.i396.i, -18874368
  %205 = inttoptr i32 %add1.i.i397.i to ptr
  %206 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %207 = ptrtoint ptr %host_info_base.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %host_info_base.i.i, align 8
  %add.i399.i = add i16 %208, 28
  %209 = or i8 %206, 16
  %210 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %211, i16 noundef zeroext %add.i399.i) #17
  %212 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i401.i = getelementptr inbounds %struct.net_device, ptr %213, i32 0, i32 5
  %214 = ptrtoint ptr %base_addr.i.i401.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %base_addr.i.i401.i, align 32
  %add.i.i402.i = add i32 %215, 8
  %and.i.i403.i = and i32 %add.i.i402.i, 1048575
  %add1.i.i404.i = or i32 %and.i.i403.i, -18874368
  %216 = inttoptr i32 %add1.i.i404.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 %209) #17, !srcloc !312
  %rx_desc_head.i = getelementptr i8, ptr %dev, i32 2556
  %217 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 0, ptr %rx_desc_head.i, align 4
  %218 = ptrtoint ptr %host_info_base.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %host_info_base.i.i, align 8
  %add.i406.i = add i16 %219, 28
  %220 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %221, i16 noundef zeroext %add.i406.i) #17
  %222 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev2.i, align 4
  %base_addr.i.i408.i = getelementptr inbounds %struct.net_device, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %base_addr.i.i408.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %base_addr.i.i408.i, align 32
  %add.i.i409.i = add i32 %225, 8
  %and.i.i410.i = and i32 %add.i.i409.i, 1048575
  %add1.i.i411.i = or i32 %and.i.i410.i, -18874368
  %226 = inttoptr i32 %add1.i.i411.i to ptr
  %227 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %226) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %228 = ptrtoint ptr %host_info_base.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %host_info_base.i.i, align 8
  %add.i413.i = add i16 %229, 28
  %230 = or i8 %227, 32
  %231 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %232, i16 noundef zeroext %add.i413.i) #17
  %233 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i415.i = getelementptr inbounds %struct.net_device, ptr %234, i32 0, i32 5
  %235 = ptrtoint ptr %base_addr.i.i415.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %base_addr.i.i415.i, align 32
  %add.i.i416.i = add i32 %236, 8
  %and.i.i417.i = and i32 %add.i.i416.i, 1048575
  %add1.i.i418.i = or i32 %and.i.i417.i, -18874368
  %237 = inttoptr i32 %add1.i.i418.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 %230) #17, !srcloc !312
  %238 = ptrtoint ptr %radio_on_broken.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %radio_on_broken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool136.not.i = icmp eq i32 %239, 0
  br i1 %tobool136.not.i, label %if.then137.i, label %if.end108.i.if.end150.i_crit_edge

if.end108.i.if.end150.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150.i

if.then137.i:                                     ; preds = %if.end108.i
  %command_pos.i10.i.i = getelementptr i8, ptr %dev, i32 2800
  %240 = ptrtoint ptr %command_pos.i10.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %command_pos.i10.i.i, align 2
  %242 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %243, i16 noundef zeroext %241) #17
  %244 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i.i425.i = getelementptr inbounds %struct.net_device, ptr %245, i32 0, i32 5
  %246 = ptrtoint ptr %base_addr.i.i.i425.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %base_addr.i.i.i425.i, align 32
  %add.i.i.i426.i = add i32 %247, 8
  %and.i.i.i427.i = and i32 %add.i.i.i426.i, 1048575
  %add1.i.i.i428.i = or i32 %and.i.i.i427.i, -18874368
  %248 = inttoptr i32 %add1.i.i.i428.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 6) #17, !srcloc !312
  %249 = ptrtoint ptr %command_pos.i10.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %command_pos.i10.i.i, align 2
  %add.i12.i.i = add i16 %250, 1
  %251 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %252, i16 noundef zeroext %add.i12.i.i) #17
  %253 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i14.i.i = getelementptr inbounds %struct.net_device, ptr %254, i32 0, i32 5
  %255 = ptrtoint ptr %base_addr.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %base_addr.i.i14.i.i, align 32
  %add.i.i15.i.i = add i32 %256, 8
  %and.i.i16.i.i = and i32 %add.i.i15.i.i, 1048575
  %add1.i.i17.i.i = or i32 %and.i.i16.i.i, -18874368
  %257 = inttoptr i32 %add1.i.i17.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %257, i8 0) #17, !srcloc !312
  br label %for.body.i420.i

for.body.i420.i:                                  ; preds = %if.end.i.i.for.body.i420.i_crit_edge, %if.then137.i
  %i.023.i.i = phi i32 [ 5000, %if.then137.i ], [ %dec.i.i, %if.end.i.i.for.body.i420.i_crit_edge ]
  %258 = ptrtoint ptr %command_pos.i10.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %command_pos.i10.i.i, align 2
  %add.i.i419.i = add i16 %259, 1
  %260 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %261, i16 noundef zeroext %add.i.i419.i) #17
  %262 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev2.i, align 4
  %base_addr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %263, i32 0, i32 5
  %264 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %base_addr.i.i.i.i, align 32
  %add.i.i.i.i = add i32 %265, 8
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %266 = inttoptr i32 %add1.i.i.i.i to ptr
  %267 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %266) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %268 = zext i8 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values)
  switch i8 %267, label %for.body.i420.i.if.end150.i_crit_edge [
    i8 0, label %for.body.i420.i.if.end.i.i_crit_edge
    i8 8, label %for.body.i420.i.if.end.i.i_crit_edge104
    i8 9, label %do.end144.i
  ]

for.body.i420.i.if.end.i.i_crit_edge104:          ; preds = %for.body.i420.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

for.body.i420.i.if.end.i.i_crit_edge:             ; preds = %for.body.i420.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

for.body.i420.i.if.end150.i_crit_edge:            ; preds = %for.body.i420.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150.i

if.end.i.i:                                       ; preds = %for.body.i420.i.if.end.i.i_crit_edge, %for.body.i420.i.if.end.i.i_crit_edge104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %269(i32 noundef 4294960) #17
  %dec.i.i = add nsw i32 %i.023.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %atmel_send_command_wait.exit.thread.i, label %if.end.i.i.for.body.i420.i_crit_edge

if.end.i.i.for.body.i420.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i420.i

atmel_send_command_wait.exit.thread.i:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %270 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev2.i, align 4
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %271) #20
  br label %if.end150.i

do.end144.i:                                      ; preds = %for.body.i420.i
  call void @__sanitizer_cov_trace_pc() #19
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %dev) #20
  br label %cleanup

if.end150.i:                                      ; preds = %atmel_send_command_wait.exit.thread.i, %for.body.i420.i.if.end150.i_crit_edge, %if.end108.i.if.end150.i_crit_edge
  %auto_tx_rate.i = getelementptr i8, ptr %dev, i32 2852
  %272 = ptrtoint ptr %auto_tx_rate.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %auto_tx_rate.i, align 4
  %conv151.i = trunc i32 %273 to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext %conv151.i) #17
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 6, i8 noundef zeroext 0) #17
  %rts_threshold.i = getelementptr i8, ptr %dev, i32 2856
  %274 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %rts_threshold.i, align 8
  %conv152.i = trunc i32 %275 to i16
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 10, i16 noundef zeroext %conv152.i) #17
  %frag_threshold.i = getelementptr i8, ptr %dev, i32 2860
  %276 = ptrtoint ptr %frag_threshold.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %frag_threshold.i, align 4
  %conv153.i = trunc i32 %277 to i16
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 8, i16 noundef zeroext %conv153.i) #17
  %short_retry.i = getelementptr i8, ptr %dev, i32 2868
  %278 = ptrtoint ptr %short_retry.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %short_retry.i, align 4
  %conv154.i = trunc i32 %279 to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext %conv154.i) #17
  %long_retry.i = getelementptr i8, ptr %dev, i32 2864
  %280 = ptrtoint ptr %long_retry.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %long_retry.i, align 8
  %conv155.i = trunc i32 %281 to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext %conv155.i) #17
  %preamble.i = getelementptr i8, ptr %dev, i32 2872
  %282 = ptrtoint ptr %preamble.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %preamble.i, align 8
  %conv156.i = trunc i32 %283 to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 9, i8 noundef zeroext %conv156.i) #17
  %284 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev2.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %285, i32 0, i32 86
  %286 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dev_addr.i, align 64
  call fastcc void @atmel_set_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %287, i32 noundef 6) #17
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 53, i8 noundef zeroext 1) #17
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 54, i16 noundef zeroext 1) #17
  %default_beacon_period.i = getelementptr i8, ptr %dev, i32 2876
  %288 = ptrtoint ptr %default_beacon_period.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %default_beacon_period.i, align 4
  %conv158.i = trunc i32 %289 to i16
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i16 noundef zeroext %conv158.i) #17
  call fastcc void @atmel_set_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext 20, ptr noundef nonnull @atmel_basic_rates, i32 noundef 4) #17
  %wep_is_on.i = getelementptr i8, ptr %dev, i32 2584
  %290 = ptrtoint ptr %wep_is_on.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %wep_is_on.i, align 8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 11, i8 noundef zeroext %291) #17
  %292 = ptrtoint ptr %use_wpa.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %use_wpa.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool160.not.i = icmp eq i32 %293, 0
  br i1 %tobool160.not.i, label %if.else162.i, label %if.then161.i

if.then161.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @build_wpa_mib(ptr noundef %add.ptr.i) #17
  br label %if.end163.i

if.else162.i:                                     ; preds = %if.end150.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mib.i.i) #17
  %294 = call ptr @memset(ptr %mib.i.i, i32 255, i32 68)
  %295 = ptrtoint ptr %wep_is_on.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %wep_is_on.i, align 8
  %297 = ptrtoint ptr %mib.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %296, ptr %mib.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool.not.i421.i = icmp eq i8 %296, 0
  br i1 %tobool.not.i421.i, label %if.else5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else162.i
  %default_key.i.i = getelementptr i8, ptr %dev, i32 2585
  %298 = ptrtoint ptr %default_key.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %default_key.i.i, align 1
  %idxprom.i.i = zext i8 %299 to i32
  %arrayidx.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %idxprom.i.i
  %300 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %301)
  %cmp.i422.i = icmp sgt i32 %301, 5
  %encryption_level.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 7
  br i1 %cmp.i422.i, label %if.then3.i.i, label %if.else.i423.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %302 = ptrtoint ptr %encryption_level.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 2, ptr %encryption_level.i.i, align 4
  br label %build_wep_mib.exit.i

if.else.i423.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %303 = ptrtoint ptr %encryption_level.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 1, ptr %encryption_level.i.i, align 4
  br label %build_wep_mib.exit.i

if.else5.i.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #19
  %encryption_level6.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 7
  %304 = ptrtoint ptr %encryption_level6.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %encryption_level6.i.i, align 4
  br label %build_wep_mib.exit.i

build_wep_mib.exit.i:                             ; preds = %if.else5.i.i, %if.else.i423.i, %if.then3.i.i
  %default_key8.i.i = getelementptr i8, ptr %dev, i32 2585
  %305 = ptrtoint ptr %default_key8.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %default_key8.i.i, align 1
  %default_key9.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 1
  %307 = ptrtoint ptr %default_key9.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %default_key9.i.i, align 1
  %exclude_unencrypted.i.i = getelementptr i8, ptr %dev, i32 2586
  %308 = ptrtoint ptr %exclude_unencrypted.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %exclude_unencrypted.i.i, align 2
  %exclude_unencrypted10.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 3
  %310 = ptrtoint ptr %exclude_unencrypted10.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %309, ptr %exclude_unencrypted10.i.i, align 1
  %arrayidx12.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 6, i32 0
  %arrayidx14.i.i = getelementptr i8, ptr %dev, i32 2590
  %311 = call ptr @memcpy(ptr %arrayidx12.i.i, ptr %arrayidx14.i.i, i32 13)
  %arrayidx12.1.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 6, i32 1
  %arrayidx14.1.i.i = getelementptr i8, ptr %dev, i32 2630
  %312 = call ptr @memcpy(ptr %arrayidx12.1.i.i, ptr %arrayidx14.1.i.i, i32 13)
  %arrayidx12.2.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 6, i32 2
  %arrayidx14.2.i.i = getelementptr i8, ptr %dev, i32 2670
  %313 = call ptr @memcpy(ptr %arrayidx12.2.i.i, ptr %arrayidx14.2.i.i, i32 13)
  %arrayidx12.3.i.i = getelementptr inbounds %struct.anon.135, ptr %mib.i.i, i32 0, i32 6, i32 3
  %arrayidx14.3.i.i = getelementptr i8, ptr %dev, i32 2710
  %314 = call ptr @memcpy(ptr %arrayidx12.3.i.i, ptr %arrayidx14.3.i.i, i32 13)
  call fastcc void @atmel_set_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %mib.i.i, i32 noundef 68) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mib.i.i) #17
  br label %if.end163.i

if.end163.i:                                      ; preds = %build_wep_mib.exit.i, %if.then161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp164.i = icmp eq i32 %15, 4
  br i1 %cmp164.i, label %if.then166.i, label %if.end163.i.if.end9_crit_edge

if.end163.i.if.end9_crit_edge:                    ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then166.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #17
  %315 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_storeN_noabort(i32 %316, i32 8)
  store i64 -1, ptr %315, align 4
  %317 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 1, ptr %wrqu.i, align 4
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %318 = call ptr @memset(ptr %sa_data.i, i32 0, i32 6)
  %319 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev2.i, align 4
  call void @wireless_send_event(ptr noundef %320, i32 noundef 35605, ptr noundef nonnull %wrqu.i, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then166.i, %if.end163.i.if.end9_crit_edge
  %config_reg_domain = getelementptr i8, ptr %dev, i32 2844
  %321 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %config_reg_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool10.not = icmp eq i32 %322, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %reg_domain = getelementptr i8, ptr %dev, i32 2840
  %323 = ptrtoint ptr %reg_domain to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %reg_domain, align 8
  %conv = trunc i32 %322 to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext 26, i8 noundef zeroext %conv)
  br label %if.end31

if.else:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %m.i) #17
  %324 = getelementptr inbounds i8, ptr %m.i, i32 3
  %325 = call ptr @memset(ptr %324, i32 255, i32 213)
  %326 = ptrtoint ptr %m.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 7, ptr %m.i, align 1
  %size.i = getelementptr inbounds %struct.get_set_mib, ptr %m.i, i32 0, i32 1
  %327 = ptrtoint ptr %size.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 1, ptr %size.i, align 1
  %index2.i = getelementptr inbounds %struct.get_set_mib, ptr %m.i, i32 0, i32 2
  %328 = ptrtoint ptr %index2.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 26, ptr %index2.i, align 1
  %329 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev2.i, align 4
  %command_pos.i.i3.i = getelementptr i8, ptr %dev, i32 2800
  %331 = ptrtoint ptr %command_pos.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %command_pos.i.i3.i, align 2
  %add.i.i4.i = add i16 %332, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %330, i16 noundef zeroext %add.i.i4.i, ptr noundef nonnull %m.i, i16 noundef zeroext 5) #17
  %333 = ptrtoint ptr %command_pos.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %command_pos.i.i3.i, align 2
  %335 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %336, i16 noundef zeroext %334) #17
  %337 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i.i6.i = getelementptr inbounds %struct.net_device, ptr %338, i32 0, i32 5
  %339 = ptrtoint ptr %base_addr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %base_addr.i.i.i6.i, align 32
  %add.i.i.i7.i = add i32 %340, 8
  %and.i.i.i8.i = and i32 %add.i.i.i7.i, 1048575
  %add1.i.i.i9.i = or i32 %and.i.i.i8.i, -18874368
  %341 = inttoptr i32 %add1.i.i.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %341, i8 2) #17, !srcloc !312
  %342 = ptrtoint ptr %command_pos.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %command_pos.i.i3.i, align 2
  %add.i12.i.i79 = add i16 %343, 1
  %344 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %345, i16 noundef zeroext %add.i12.i.i79) #17
  %346 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i14.i.i80 = getelementptr inbounds %struct.net_device, ptr %347, i32 0, i32 5
  %348 = ptrtoint ptr %base_addr.i.i14.i.i80 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %base_addr.i.i14.i.i80, align 32
  %add.i.i15.i.i81 = add i32 %349, 8
  %and.i.i16.i.i82 = and i32 %add.i.i15.i.i81, 1048575
  %add1.i.i17.i.i83 = or i32 %and.i.i16.i.i82, -18874368
  %350 = inttoptr i32 %add1.i.i17.i.i83 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %350, i8 0) #17, !srcloc !312
  br label %for.body.i.i90

for.body.i.i90:                                   ; preds = %if.end.i.i93.for.body.i.i90_crit_edge, %if.else
  %i.023.i.i84 = phi i32 [ 5000, %if.else ], [ %dec.i.i91, %if.end.i.i93.for.body.i.i90_crit_edge ]
  %351 = ptrtoint ptr %command_pos.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %command_pos.i.i3.i, align 2
  %add.i.i.i85 = add i16 %352, 1
  %353 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %354, i16 noundef zeroext %add.i.i.i85) #17
  %355 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev2.i, align 4
  %base_addr.i.i.i.i86 = getelementptr inbounds %struct.net_device, ptr %356, i32 0, i32 5
  %357 = ptrtoint ptr %base_addr.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %base_addr.i.i.i.i86, align 32
  %add.i.i.i.i87 = add i32 %358, 8
  %and.i.i.i.i88 = and i32 %add.i.i.i.i87, 1048575
  %add1.i.i.i.i89 = or i32 %and.i.i.i.i88, -18874368
  %359 = inttoptr i32 %add1.i.i.i.i89 to ptr
  %360 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %359) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %361 = zext i8 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %361, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %360, label %for.body.i.i90.atmel_get_mib8.exit_crit_edge [
    i8 0, label %for.body.i.i90.if.end.i.i93_crit_edge
    i8 8, label %for.body.i.i90.if.end.i.i93_crit_edge105
  ]

for.body.i.i90.if.end.i.i93_crit_edge105:         ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i93

for.body.i.i90.if.end.i.i93_crit_edge:            ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i93

for.body.i.i90.atmel_get_mib8.exit_crit_edge:     ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_get_mib8.exit

if.end.i.i93:                                     ; preds = %for.body.i.i90.if.end.i.i93_crit_edge, %for.body.i.i90.if.end.i.i93_crit_edge105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %362(i32 noundef 4294960) #17
  %dec.i.i91 = add nsw i32 %i.023.i.i84, -1
  %tobool.not.i.i92 = icmp eq i32 %dec.i.i91, 0
  br i1 %tobool.not.i.i92, label %do.end.i.i, label %if.end.i.i93.for.body.i.i90_crit_edge

if.end.i.i93.for.body.i.i90_crit_edge:            ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i90

do.end.i.i:                                       ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #19
  %363 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev2.i, align 4
  %call8.i.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %364) #20
  br label %atmel_get_mib8.exit

atmel_get_mib8.exit:                              ; preds = %do.end.i.i, %for.body.i.i90.atmel_get_mib8.exit_crit_edge
  %365 = ptrtoint ptr %command_pos.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %command_pos.i.i3.i, align 2
  %add.i.i95 = add i16 %366, 8
  %367 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dev2.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %368, i16 noundef zeroext %add.i.i95) #17
  %369 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev2.i, align 4
  %base_addr.i.i.i96 = getelementptr inbounds %struct.net_device, ptr %370, i32 0, i32 5
  %371 = ptrtoint ptr %base_addr.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %base_addr.i.i.i96, align 32
  %add.i.i1.i = add i32 %372, 8
  %and.i.i.i97 = and i32 %add.i.i1.i, 1048575
  %add1.i.i.i98 = or i32 %and.i.i.i97, -18874368
  %373 = inttoptr i32 %add1.i.i.i98 to ptr
  %374 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %373) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %m.i) #17
  %conv15 = zext i8 %374 to i32
  %reg_domain16 = getelementptr i8, ptr %dev, i32 2840
  %375 = ptrtoint ptr %reg_domain16 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %conv15, ptr %reg_domain16, align 8
  %376 = zext i8 %374 to i64
  call void @__sanitizer_cov_trace_switch(i64 %376, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %374, label %if.then26 [
    i8 16, label %atmel_get_mib8.exit.if.end31_crit_edge
    i8 32, label %atmel_get_mib8.exit.if.end31_crit_edge106
    i8 48, label %atmel_get_mib8.exit.if.end31_crit_edge107
    i8 49, label %atmel_get_mib8.exit.if.end31_crit_edge108
    i8 50, label %atmel_get_mib8.exit.if.end31_crit_edge109
    i8 64, label %atmel_get_mib8.exit.if.end31_crit_edge110
    i8 65, label %atmel_get_mib8.exit.if.end31_crit_edge111
    i8 80, label %atmel_get_mib8.exit.if.end31_crit_edge112
  ]

atmel_get_mib8.exit.if.end31_crit_edge112:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge111:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge110:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge109:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge108:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge107:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge106:        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

atmel_get_mib8.exit.if.end31_crit_edge:           ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then26:                                        ; preds = %atmel_get_mib8.exit
  call void @__sanitizer_cov_trace_pc() #19
  %377 = ptrtoint ptr %reg_domain16 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 65, ptr %reg_domain16, align 8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev) #20
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %atmel_get_mib8.exit.if.end31_crit_edge, %atmel_get_mib8.exit.if.end31_crit_edge106, %atmel_get_mib8.exit.if.end31_crit_edge107, %atmel_get_mib8.exit.if.end31_crit_edge108, %atmel_get_mib8.exit.if.end31_crit_edge109, %atmel_get_mib8.exit.if.end31_crit_edge110, %atmel_get_mib8.exit.if.end31_crit_edge111, %atmel_get_mib8.exit.if.end31_crit_edge112, %if.then11
  %channel32 = getelementptr i8, ptr %dev, i32 2836
  %378 = ptrtoint ptr %channel32 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %channel32, align 4
  %call33 = call fastcc i32 @atmel_validate_channel(ptr noundef %add.ptr.i, i32 noundef %379)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.if.end37_crit_edge, label %if.then35

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %380 = ptrtoint ptr %channel32 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %call33, ptr %channel32, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1)
  %381 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %dev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !313
  call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %382, i32 0, i32 5
  %383 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %384, 1048575
  %add1.i = or i32 %and.i, -18874368
  %385 = inttoptr i32 %add1.i to ptr
  %386 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %385) #17, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  %387 = or i16 %386, 512
  %388 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %base_addr.i, align 32
  %and7.i = and i32 %389, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %390 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %390, i16 %387) #17, !srcloc !310
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end144.i, %if.end103.i.cleanup_crit_edge, %cleanup98.thread.i
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %retval.3.ph.i, %cleanup98.thread.i ], [ %call104.i, %if.end103.i.cleanup_crit_edge ], [ -5, %do.end144.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_set_mib8(ptr nocapture noundef readonly %priv, i8 noundef zeroext %type, i8 noundef zeroext %index, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.get_set_mib, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %m) #17
  %0 = getelementptr inbounds i8, ptr %m, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 213)
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %type, ptr %m, align 1
  %size = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %size, align 1
  %index2 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %index, ptr %index2, align 1
  %data3 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 4
  %5 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %data, ptr %data3, align 1
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i4 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %8 = ptrtoint ptr %command_pos.i.i4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %command_pos.i.i4, align 2
  %add.i.i5 = add i16 %9, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %7, i16 noundef zeroext %add.i.i5, ptr noundef nonnull %m, i16 noundef zeroext 5) #17
  %10 = ptrtoint ptr %command_pos.i.i4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %command_pos.i.i4, align 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %13, i16 noundef zeroext %11) #17
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i7 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %base_addr.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr.i.i.i7, align 32
  %add.i.i.i8 = add i32 %17, 8
  %and.i.i.i9 = and i32 %add.i.i.i8, 1048575
  %add1.i.i.i10 = or i32 %and.i.i.i9, -18874368
  %18 = inttoptr i32 %add1.i.i.i10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 1) #17, !srcloc !312
  %19 = ptrtoint ptr %command_pos.i.i4 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %command_pos.i.i4, align 2
  %add.i12.i = add i16 %20, 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %22, i16 noundef zeroext %add.i12.i) #17
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %26, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %27 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #17, !srcloc !312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 5000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %command_pos.i.i4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %command_pos.i.i4, align 2
  %add.i.i = add i16 %29, 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %31, i16 noundef zeroext %add.i.i) #17
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %35, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %36 = inttoptr i32 %add1.i.i.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %37, label %for.body.i.atmel_send_command_wait.exit_crit_edge [
    i8 0, label %for.body.i.if.end.i_crit_edge
    i8 8, label %for.body.i.if.end.i_crit_edge12
  ]

for.body.i.if.end.i_crit_edge12:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.atmel_send_command_wait.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_send_command_wait.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 4294960) #17
  %dec.i = add nsw i32 %i.023.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %41) #20
  br label %atmel_send_command_wait.exit

atmel_send_command_wait.exit:                     ; preds = %do.end.i, %for.body.i.atmel_send_command_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %m) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_validate_channel(ptr nocapture noundef readonly %priv, i32 noundef %channel) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_domain = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 48
  %0 = ptrtoint ptr %reg_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_domain, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.then_crit_edge
    i32 32, label %if.then.fold.split
    i32 48, label %if.then.fold.split19
    i32 49, label %if.then.fold.split20
    i32 50, label %if.then.fold.split21
    i32 64, label %if.then.fold.split22
    i32 65, label %if.then.fold.split23
    i32 80, label %if.then.fold.split24
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split, %entry.if.then_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split19 ], [ 3, %if.then.fold.split20 ], [ 4, %if.then.fold.split21 ], [ 5, %if.then.fold.split22 ], [ 6, %if.then.fold.split23 ], [ 7, %if.then.fold.split24 ]
  %min = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %i.017.lcssa, i32 1
  %3 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %channel)
  %cmp4.not = icmp sgt i32 %4, %channel
  br i1 %cmp4.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %max = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %i.017.lcssa, i32 2
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel)
  %cmp6.not = icmp slt i32 %6, %channel
  br i1 %cmp6.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_scan(ptr nocapture noundef %priv, i32 noundef %specific_ssid) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.anon.133, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #17
  %fast_scan = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 69
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  %1 = ptrtoint ptr %fast_scan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fast_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %SSID_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 74
  %3 = ptrtoint ptr %SSID_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SSID_size, align 4
  %conv = trunc i32 %4 to i8
  %SSID_size1 = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 8
  %5 = ptrtoint ptr %SSID_size1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %SSID_size1, align 1
  %SSID = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 1
  %SSID3 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 78
  %6 = call ptr @memcpy(ptr %SSID, ptr %SSID3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %BSS_list_entries = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 71
  %7 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %BSS_list_entries, align 8
  %SSID_size6 = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %SSID_size6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %SSID_size6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i16 [ 30720, %if.else ], [ 12800, %if.then ]
  %9 = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2560, ptr %9, align 2
  %11 = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %specific_ssid)
  %tobool9.not = icmp eq i32 %specific_ssid, 0
  %spec.select = select i1 %tobool9.not, i8 -128, i8 0
  %options = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 7
  %13 = ptrtoint ptr %options to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %options, align 2
  %channel = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 47
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %16 = trunc i32 %15 to i8
  %conv15 = and i8 %16, 127
  %channel16 = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %channel16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15, ptr %channel16, align 1
  %scan_type = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %scan_type, align 2
  %operating_mode = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 43
  %19 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %operating_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  %conv18 = select i1 %cmp, i16 256, i16 512
  %BSS_type = getelementptr inbounds %struct.anon.133, ptr %cmd, i32 0, i32 4
  %21 = ptrtoint ptr %BSS_type to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18, ptr %BSS_type, align 2
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %24 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %command_pos.i.i, align 2
  %add.i.i = add i16 %25, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %23, i16 noundef zeroext %add.i.i, ptr noundef nonnull %cmd, i16 noundef zeroext 48) #17
  %26 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %command_pos.i.i, align 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %29, i16 noundef zeroext %27) #17
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %33, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %34 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 3) #17, !srcloc !312
  %35 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %command_pos.i.i, align 2
  %add.i12.i = add i16 %36, 1
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %38, i16 noundef zeroext %add.i12.i) #17
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %42, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %43 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #17, !srcloc !312
  %station_state.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 42
  %44 = ptrtoint ptr %station_state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %station_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  br i1 %cmp.i, label %if.end.atmel_enter_state.exit_crit_edge, label %if.end.i

if.end.atmel_enter_state.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.end.i:                                         ; preds = %if.end
  %46 = ptrtoint ptr %station_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %station_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp6.i = icmp eq i32 %45, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.atmel_enter_state.exit_crit_edge

if.end.i.atmel_enter_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.then7.i:                                       ; preds = %if.end.i
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %48) #17
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i24.i, align 128
  %state.i.i25.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %last_beacon_timestamp.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 80
  %55 = ptrtoint ptr %last_beacon_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %last_beacon_timestamp.i, align 8
  br label %atmel_enter_state.exit

atmel_enter_state.exit:                           ; preds = %if.end12.i, %if.end.i.atmel_enter_state.exit_crit_edge, %if.end.atmel_enter_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_atmel_card(i16 noundef zeroext %irq, i32 noundef %port, i32 noundef %fw_type, ptr noundef %sys_dev, ptr noundef %card_present, ptr noundef %card) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 7400, i32 noundef 1, i32 noundef 1) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dev_alloc_name(ptr noundef nonnull %call, ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #20
  br label %err_out_free

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev6 = getelementptr i8, ptr %call, i32 2404
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dev6, align 4
  %sys_dev7 = getelementptr i8, ptr %call, i32 2408
  %1 = ptrtoint ptr %sys_dev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sys_dev, ptr %sys_dev7, align 8
  %present_callback = getelementptr i8, ptr %call, i32 2308
  %2 = ptrtoint ptr %present_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card_present, ptr %present_callback, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %add.ptr.i, align 8
  %firmware = getelementptr i8, ptr %call, i32 2348
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %firmware, align 4
  %firmware_type = getelementptr i8, ptr %call, i32 2344
  %5 = ptrtoint ptr %firmware_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fw_type, ptr %firmware_type, align 8
  %6 = load ptr, ptr @firmware, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end4.if.end13_crit_edge, label %if.then10

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %firmware_id = getelementptr i8, ptr %call, i32 2312
  %call12 = tail call i32 @strlcpy(ptr noundef %firmware_id, ptr noundef nonnull %6, i32 noundef 32) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end4.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %card_present, null
  %cond = zext i1 %tobool14.not to i32
  %bus_type = getelementptr i8, ptr %call, i32 2532
  %7 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %bus_type, align 4
  %station_state = getelementptr i8, ptr %call, i32 2816
  %8 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %station_state, align 8
  %do_rx_crc = getelementptr i8, ptr %call, i32 2540
  %9 = ptrtoint ptr %do_rx_crc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %do_rx_crc, align 4
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %crc_ko_cnt = getelementptr i8, ptr %call, i32 2552
  %10 = ptrtoint ptr %crc_ko_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %crc_ko_cnt, align 8
  %crc_ok_cnt = getelementptr i8, ptr %call, i32 2548
  %11 = ptrtoint ptr %crc_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %crc_ok_cnt, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %.sink = phi i32 [ 1, %if.then17 ], [ 0, %if.end13.if.end19_crit_edge ]
  %12 = getelementptr i8, ptr %call, i32 2544
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_qual = getelementptr i8, ptr %call, i32 2828
  %15 = ptrtoint ptr %last_qual to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_qual, align 4
  %last_beacon_timestamp = getelementptr i8, ptr %call, i32 7376
  %16 = ptrtoint ptr %last_beacon_timestamp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %last_beacon_timestamp, align 8
  %frag_source = getelementptr i8, ptr %call, i32 2578
  %17 = call ptr @memset(ptr %frag_source, i32 255, i32 6)
  %BSSID = getelementptr i8, ptr %call, i32 7306
  %18 = call ptr @memset(ptr %BSSID, i32 0, i32 6)
  %CurrentBSSID = getelementptr i8, ptr %call, i32 7300
  %19 = ptrtoint ptr %CurrentBSSID to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %CurrentBSSID, align 4
  %station_was_associated = getelementptr i8, ptr %call, i32 2916
  %20 = ptrtoint ptr %station_was_associated to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %station_was_associated, align 4
  %21 = load volatile i32, ptr @jiffies, align 128
  %last_survey = getelementptr i8, ptr %call, i32 2912
  %22 = ptrtoint ptr %last_survey to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_survey, align 8
  %preamble = getelementptr i8, ptr %call, i32 2872
  %23 = ptrtoint ptr %preamble to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %preamble, align 8
  %operating_mode = getelementptr i8, ptr %call, i32 2820
  %24 = ptrtoint ptr %operating_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %operating_mode, align 4
  %connect_to_any_BSS = getelementptr i8, ptr %call, i32 7288
  %25 = ptrtoint ptr %connect_to_any_BSS to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %connect_to_any_BSS, align 8
  %config_reg_domain = getelementptr i8, ptr %call, i32 2844
  %26 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %config_reg_domain, align 4
  %reg_domain = getelementptr i8, ptr %call, i32 2840
  %27 = ptrtoint ptr %reg_domain to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %reg_domain, align 8
  %tx_rate = getelementptr i8, ptr %call, i32 2848
  %28 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %tx_rate, align 8
  %auto_tx_rate = getelementptr i8, ptr %call, i32 2852
  %29 = ptrtoint ptr %auto_tx_rate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %auto_tx_rate, align 4
  %channel = getelementptr i8, ptr %call, i32 2836
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %channel, align 4
  %power_mode = getelementptr i8, ptr %call, i32 2824
  %31 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %power_mode, align 8
  %SSID = getelementptr i8, ptr %call, i32 7312
  %32 = ptrtoint ptr %SSID to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %SSID, align 8
  %SSID_size = getelementptr i8, ptr %call, i32 7292
  %33 = ptrtoint ptr %SSID_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %SSID_size, align 4
  %new_SSID_size = getelementptr i8, ptr %call, i32 7296
  %34 = ptrtoint ptr %new_SSID_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %new_SSID_size, align 8
  %frag_threshold = getelementptr i8, ptr %call, i32 2860
  %35 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2346, ptr %frag_threshold, align 4
  %rts_threshold = getelementptr i8, ptr %call, i32 2856
  %36 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2347, ptr %rts_threshold, align 8
  %short_retry = getelementptr i8, ptr %call, i32 2868
  %37 = ptrtoint ptr %short_retry to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %short_retry, align 4
  %long_retry = getelementptr i8, ptr %call, i32 2864
  %38 = ptrtoint ptr %long_retry to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %long_retry, align 8
  %wep_is_on = getelementptr i8, ptr %call, i32 2584
  %wep_key_len = getelementptr i8, ptr %call, i32 2752
  %beacon_period = getelementptr i8, ptr %call, i32 2880
  %39 = call ptr @memset(ptr %wep_is_on, i32 0, i32 166)
  %40 = call ptr @memset(ptr %wep_key_len, i32 0, i32 20)
  %41 = ptrtoint ptr %beacon_period to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 100, ptr %beacon_period, align 8
  %default_beacon_period = getelementptr i8, ptr %call, i32 2876
  %42 = ptrtoint ptr %default_beacon_period to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 100, ptr %default_beacon_period, align 4
  %listen_interval = getelementptr i8, ptr %call, i32 2884
  %43 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %listen_interval, align 4
  %management_timer = getelementptr i8, ptr %call, i32 2356
  tail call void @init_timer_key(ptr noundef %management_timer, ptr noundef nonnull @atmel_management_timer, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_atmel_card.__key) #17
  %irqlock = getelementptr i8, ptr %call, i32 2444
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_atmel_card.__key.6, i16 noundef signext 3) #17
  %timerlock = getelementptr i8, ptr %call, i32 2488
  tail call void @__raw_spin_lock_init(ptr noundef %timerlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_atmel_card.__key.8, i16 noundef signext 3) #17
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %44 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @atmel_netdev_ops, ptr %netdev_ops, align 8
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 42
  %45 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @atmel_handler_def, ptr %wireless_handlers, align 8
  %conv = zext i16 %irq to i32
  %irq36 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %46 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv, ptr %irq36, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %47 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %port, ptr %base_addr, align 32
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %48 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %49 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2312, ptr %max_mtu, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %sys_dev, ptr %parent, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %conv, ptr noundef nonnull @service_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call, ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.end52, label %do.end46

do.end46:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call, i32 noundef %conv, i32 noundef %call.i) #20
  br label %err_out_free

if.end52:                                         ; preds = %if.end19
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  %53 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp55 = icmp eq i32 %54, 0
  %cond57 = select i1 %cmp55, ptr @.str.13, ptr @.str.14
  %call58 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %52, i32 noundef 32, ptr noundef nonnull %cond57, i32 noundef 0) #17
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end52.err_out_irq_crit_edge, label %if.end61

if.end52.err_out_irq_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out_irq

if.end61:                                         ; preds = %if.end52
  %call62 = tail call i32 @register_netdev(ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.err_out_res_crit_edge

if.end61.err_out_res_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out_res

if.end65:                                         ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #17
  %55 = call ptr @memset(ptr %addr.i, i32 0, i32 6)
  %56 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp eq i32 %57, 0
  br i1 %cmp.i, label %if.then.i, label %if.end65.if.end.i_crit_edge

if.end65.if.end.i_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %58 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_addr, align 32
  %and.i.i = and i32 %59, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %60 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 24576) #17, !srcloc !310
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end65.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %61 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base_addr, align 32
  %and.i101.i = and i32 %62, 1048575
  %add1.i102.i = or i32 %and.i101.i, -18874368
  %63 = inttoptr i32 %add1.i102.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 16384) #17, !srcloc !310
  tail call void @msleep(i32 noundef 500) #17
  %64 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_addr, align 32
  %add.i.i = add i32 %65, 20
  %and.i104.i = and i32 %add.i.i, 1048575
  %add1.i105.i = or i32 %and.i104.i, -18874368
  %66 = inttoptr i32 %add1.i105.i to ptr
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %66) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp2.i = icmp eq i16 %67, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.else24.i

if.then4.i:                                       ; preds = %if.end.i
  %card_type.i = getelementptr i8, ptr %call, i32 2536
  %68 = ptrtoint ptr %card_type.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %card_type.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %69 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_addr, align 32
  %add.i107.i = add i32 %70, 2
  %and.i108.i = and i32 %add.i107.i, 1048575
  %add1.i109.i = or i32 %and.i108.i, -18874368
  %71 = inttoptr i32 %add1.i109.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 1) #17, !srcloc !310
  tail call fastcc void @atmel_writeAR(ptr noundef nonnull %call, i16 noundef zeroext 0) #17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then4.i
  %src.addr.132.i.i = phi ptr [ @mac_reader, %if.then4.i ], [ %incdec.ptr4.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.031.i.i = phi i32 [ 660, %if.then4.i ], [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %incdec.ptr3.i.i = getelementptr i8, ptr %src.addr.132.i.i, i32 1
  %72 = ptrtoint ptr %src.addr.132.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %src.addr.132.i.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %src.addr.132.i.i, i32 2
  %74 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %incdec.ptr3.i.i, align 1
  %conv5.i.i = zext i8 %73 to i16
  %conv6.i.i = zext i8 %75 to i16
  %shl.i.i = shl nuw i16 %conv6.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %76 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #17
  %77 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base_addr, align 32
  %add.i23.i.i = add i32 %78, 8
  %and.i24.i.i = and i32 %add.i23.i.i, 1048575
  %add1.i25.i.i = or i32 %and.i24.i.i, -18874368
  %79 = inttoptr i32 %add1.i25.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %79, i16 %76) #17, !srcloc !310
  %sub.i.i = add nsw i32 %i.031.i.i, -2
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.i.not.i, label %atmel_copy_to_card.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

atmel_copy_to_card.exit.i:                        ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !313
  tail call void @arm_heavy_mb() #17
  %80 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base_addr, align 32
  %and.i111.i = and i32 %81, 1048575
  %add1.i112.i = or i32 %and.i111.i, -18874368
  %82 = inttoptr i32 %add1.i112.i to ptr
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %82) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  %84 = or i16 %83, 4
  %85 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base_addr, align 32
  %and7.i.i = and i32 %86, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %87 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 %84) #17, !srcloc !310
  %88 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !319
  tail call void @arm_heavy_mb() #17
  %base_addr.i113.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %base_addr.i113.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base_addr.i113.i, align 32
  %and.i114.i = and i32 %91, 1048575
  %add1.i115.i = or i32 %and.i114.i, -18874368
  %92 = inttoptr i32 %add1.i115.i to ptr
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %92) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !320
  %94 = and i16 %93, -16385
  %95 = ptrtoint ptr %base_addr.i113.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base_addr.i113.i, align 32
  %and8.i.i = and i32 %96, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %97 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %97, i16 %94) #17, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %98 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base_addr, align 32
  %add.i117.i = add i32 %99, 2
  %and.i118.i = and i32 %add.i117.i, 1048575
  %add1.i119.i = or i32 %and.i118.i, -18874368
  %100 = inttoptr i32 %add1.i119.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %100, i16 2) #17, !srcloc !310
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %dec.i = add nsw i32 %i.0189.i, -1
  %cond.i = icmp eq i32 %dec.i, 0
  br i1 %cond.i, label %do.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %atmel_copy_to_card.exit.i
  %i.0189.i = phi i32 [ 500000, %atmel_copy_to_card.exit.i ], [ %dec.i, %for.cond.i.for.body.i_crit_edge ]
  %101 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base_addr, align 32
  %add.i121.i = add i32 %102, 22
  %and.i122.i = and i32 %add.i121.i, 1048575
  %add1.i123.i = or i32 %and.i122.i, -18874368
  %103 = inttoptr i32 %add1.i123.i to ptr
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %103) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %105 = and i16 %104, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool8.not.i = icmp eq i16 %105, 0
  br i1 %tobool8.not.i, label %for.cond.i, label %if.else.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %call) #20
  br label %if.then68

if.else.i:                                        ; preds = %for.body.i
  %106 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_addr, align 32
  %add.i125.i = add i32 %107, 20
  %and.i126.i = and i32 %add.i125.i, 1048575
  %add1.i127.i = or i32 %and.i126.i, -18874368
  %108 = inttoptr i32 %add1.i127.i to ptr
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %108) #17, !srcloc !314
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  tail call fastcc void @atmel_writeAR(ptr noundef %call, i16 noundef zeroext %110) #17
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool.not.i.i = icmp eq i16 %111, 0
  br i1 %tobool.not.i.i, label %if.else.i.for.body.i130.i_crit_edge, label %if.then.i.i

if.else.i.for.body.i130.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i130.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base_addr, align 32
  %add.i.i.i = add i32 %113, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %114 = inttoptr i32 %add1.i.i.i to ptr
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %114) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %116 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %addr.i, align 1
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %addr.i, i32 1
  br label %for.body.i130.i

for.body.i130.i:                                  ; preds = %if.then.i.i, %if.else.i.for.body.i130.i_crit_edge
  %dest.addr.135.i.i.ph = phi ptr [ %addr.i, %if.else.i.for.body.i130.i_crit_edge ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %117 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %base_addr, align 32
  %add.i26.i.i = add i32 %118, 8
  %and.i27.i.i = and i32 %add.i26.i.i, 1048575
  %add1.i28.i.i = or i32 %and.i27.i.i, -18874368
  %119 = inttoptr i32 %add1.i28.i.i to ptr
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %119) #17, !srcloc !314
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i = trunc i16 %121 to i8
  %incdec.ptr5.i.i = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 1
  %122 = ptrtoint ptr %dest.addr.135.i.i.ph to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv4.i.i, ptr %dest.addr.135.i.i.ph, align 1
  %123 = lshr i16 %121, 8
  %conv7.i.i = trunc i16 %123 to i8
  %incdec.ptr8.i.i = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 2
  %124 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv7.i.i, ptr %incdec.ptr5.i.i, align 1
  %125 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %base_addr, align 32
  %add.i26.i.i.1 = add i32 %126, 8
  %and.i27.i.i.1 = and i32 %add.i26.i.i.1, 1048575
  %add1.i28.i.i.1 = or i32 %and.i27.i.i.1, -18874368
  %127 = inttoptr i32 %add1.i28.i.i.1 to ptr
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %127) #17, !srcloc !314
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i.1 = trunc i16 %129 to i8
  %incdec.ptr5.i.i.1 = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 3
  %130 = ptrtoint ptr %incdec.ptr8.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv4.i.i.1, ptr %incdec.ptr8.i.i, align 1
  %131 = lshr i16 %129, 8
  %conv7.i.i.1 = trunc i16 %131 to i8
  %incdec.ptr8.i.i.1 = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 4
  %132 = ptrtoint ptr %incdec.ptr5.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv7.i.i.1, ptr %incdec.ptr5.i.i.1, align 1
  br i1 %tobool.not.i.i, label %for.body.i130.i.2, label %for.body.i130.i.for.end.i131.i_crit_edge

for.body.i130.i.for.end.i131.i_crit_edge:         ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i131.i

for.body.i130.i.2:                                ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #19
  %133 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %base_addr, align 32
  %add.i26.i.i.2 = add i32 %134, 8
  %and.i27.i.i.2 = and i32 %add.i26.i.i.2, 1048575
  %add1.i28.i.i.2 = or i32 %and.i27.i.i.2, -18874368
  %135 = inttoptr i32 %add1.i28.i.i.2 to ptr
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %135) #17, !srcloc !314
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i.2 = trunc i16 %137 to i8
  %incdec.ptr5.i.i.2 = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 5
  %138 = ptrtoint ptr %incdec.ptr8.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv4.i.i.2, ptr %incdec.ptr8.i.i.1, align 1
  %139 = lshr i16 %137, 8
  %conv7.i.i.2 = trunc i16 %139 to i8
  %incdec.ptr8.i.i.2 = getelementptr i8, ptr %dest.addr.135.i.i.ph, i32 6
  %140 = ptrtoint ptr %incdec.ptr5.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv7.i.i.2, ptr %incdec.ptr5.i.i.2, align 1
  br label %for.end.i131.i

for.end.i131.i:                                   ; preds = %for.body.i130.i.2, %for.body.i130.i.for.end.i131.i_crit_edge
  %incdec.ptr8.i.i.lcssa = phi ptr [ %incdec.ptr8.i.i.1, %for.body.i130.i.for.end.i131.i_crit_edge ], [ %incdec.ptr8.i.i.2, %for.body.i130.i.2 ]
  %sub.i128.i.lcssa = phi i1 [ false, %for.body.i130.i.for.end.i131.i_crit_edge ], [ %tobool.not.i.i, %for.body.i130.i.2 ]
  br i1 %sub.i128.i.lcssa, label %for.end.i131.i.atmel_copy_to_host.exit.i_crit_edge, label %if.then10.i.i

for.end.i131.i.atmel_copy_to_host.exit.i_crit_edge: ; preds = %for.end.i131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit.i

if.then10.i.i:                                    ; preds = %for.end.i131.i
  call void @__sanitizer_cov_trace_pc() #19
  %141 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %base_addr, align 32
  %add.i30.i.i = add i32 %142, 8
  %and.i31.i.i = and i32 %add.i30.i.i, 1048575
  %add1.i32.i.i = or i32 %and.i31.i.i, -18874368
  %143 = inttoptr i32 %add1.i32.i.i to ptr
  %144 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %143) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %145 = ptrtoint ptr %incdec.ptr8.i.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %incdec.ptr8.i.i.lcssa, align 1
  br label %atmel_copy_to_host.exit.i

atmel_copy_to_host.exit.i:                        ; preds = %if.then10.i.i, %for.end.i131.i.atmel_copy_to_host.exit.i_crit_edge
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #17
  %146 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp19.i = icmp eq i32 %147, 0
  br i1 %cmp19.i, label %if.then21.i, label %atmel_copy_to_host.exit.i.if.end22.i_crit_edge

atmel_copy_to_host.exit.i.if.end22.i_crit_edge:   ; preds = %atmel_copy_to_host.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

if.then21.i:                                      ; preds = %atmel_copy_to_host.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %148 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %base_addr, align 32
  %and.i133.i = and i32 %149, 1048575
  %add1.i134.i = or i32 %and.i133.i, -18874368
  %150 = inttoptr i32 %add1.i134.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %150, i16 24576) #17, !srcloc !310
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %atmel_copy_to_host.exit.i.if.end22.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %151 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %base_addr, align 32
  %and.i136.i = and i32 %152, 1048575
  %add1.i137.i = or i32 %and.i136.i, -18874368
  %153 = inttoptr i32 %add1.i137.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %153, i16 16384) #17, !srcloc !310
  br label %if.then50.i

if.else24.i:                                      ; preds = %if.end.i
  %154 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %base_addr, align 32
  %add.i139.i = add i32 %155, 24
  %and.i140.i = and i32 %add.i139.i, 1048575
  %add1.i141.i = or i32 %and.i140.i, -18874368
  %156 = inttoptr i32 %add1.i141.i to ptr
  %157 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %156) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp27.i = icmp eq i16 %157, 0
  %card_type30.i = getelementptr i8, ptr %call, i32 2536
  br i1 %cmp27.i, label %if.then29.i, label %if.else33.i

if.then29.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #19
  %158 = ptrtoint ptr %card_type30.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %card_type30.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %159 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %base_addr, align 32
  %add.i143.i = add i32 %160, 2
  %and.i144.i = and i32 %add.i143.i, 1048575
  %add1.i145.i = or i32 %and.i144.i, -18874368
  %161 = inttoptr i32 %add1.i145.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %161, i16 256) #17, !srcloc !310
  tail call fastcc void @atmel_writeAR(ptr noundef nonnull %call, i16 noundef zeroext -16384) #17
  %162 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %base_addr, align 32
  %add.i26.i155.i = add i32 %163, 8
  %and.i27.i156.i = and i32 %add.i26.i155.i, 1048575
  %add1.i28.i157.i = or i32 %and.i27.i156.i, -18874368
  %164 = inttoptr i32 %add1.i28.i157.i to ptr
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %164) #17, !srcloc !314
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i158.i = trunc i16 %166 to i8
  %incdec.ptr5.i159.i = getelementptr inbounds i8, ptr %addr.i, i32 1
  %167 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv4.i158.i, ptr %addr.i, align 1
  %168 = lshr i16 %166, 8
  %conv7.i160.i = trunc i16 %168 to i8
  %incdec.ptr8.i161.i = getelementptr inbounds i8, ptr %addr.i, i32 2
  %169 = ptrtoint ptr %incdec.ptr5.i159.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv7.i160.i, ptr %incdec.ptr5.i159.i, align 1
  %170 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %base_addr, align 32
  %add.i26.i155.1.i = add i32 %171, 8
  %and.i27.i156.1.i = and i32 %add.i26.i155.1.i, 1048575
  %add1.i28.i157.1.i = or i32 %and.i27.i156.1.i, -18874368
  %172 = inttoptr i32 %add1.i28.i157.1.i to ptr
  %173 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %172) #17, !srcloc !314
  %174 = tail call i16 @llvm.bswap.i16(i16 %173) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i158.1.i = trunc i16 %174 to i8
  %incdec.ptr5.i159.1.i = getelementptr inbounds i8, ptr %addr.i, i32 3
  %175 = ptrtoint ptr %incdec.ptr8.i161.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv4.i158.1.i, ptr %incdec.ptr8.i161.i, align 1
  %176 = lshr i16 %174, 8
  %conv7.i160.1.i = trunc i16 %176 to i8
  %incdec.ptr8.i161.1.i = getelementptr inbounds i8, ptr %addr.i, i32 4
  %177 = ptrtoint ptr %incdec.ptr5.i159.1.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv7.i160.1.i, ptr %incdec.ptr5.i159.1.i, align 1
  %178 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %base_addr, align 32
  %add.i26.i155.2.i = add i32 %179, 8
  %and.i27.i156.2.i = and i32 %add.i26.i155.2.i, 1048575
  %add1.i28.i157.2.i = or i32 %and.i27.i156.2.i, -18874368
  %180 = inttoptr i32 %add1.i28.i157.2.i to ptr
  %181 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %180) #17, !srcloc !314
  %182 = tail call i16 @llvm.bswap.i16(i16 %181) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i158.2.i = trunc i16 %182 to i8
  %incdec.ptr5.i159.2.i = getelementptr inbounds i8, ptr %addr.i, i32 5
  %183 = ptrtoint ptr %incdec.ptr8.i161.1.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv4.i158.2.i, ptr %incdec.ptr8.i161.1.i, align 1
  %184 = lshr i16 %182, 8
  %conv7.i160.2.i = trunc i16 %184 to i8
  %185 = ptrtoint ptr %incdec.ptr5.i159.2.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv7.i160.2.i, ptr %incdec.ptr5.i159.2.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %186 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %base_addr, align 32
  %add.i176.i = add i32 %187, 2
  %and.i177.i = and i32 %add.i176.i, 1048575
  %add1.i178.i = or i32 %and.i177.i, -18874368
  %188 = inttoptr i32 %add1.i178.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %188, i16 2) #17, !srcloc !310
  br label %if.then50.i

if.else33.i:                                      ; preds = %if.else24.i
  %189 = ptrtoint ptr %card_type30.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1, ptr %card_type30.i, align 8
  %call35.i = tail call fastcc i32 @atmel_wakeup_firmware(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.else33.i.if.then68_crit_edge

if.else33.i.if.then68_crit_edge:                  ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.then38.i:                                      ; preds = %if.else33.i
  call fastcc void @atmel_get_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %addr.i) #17
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #17
  %190 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp42.i = icmp eq i32 %191, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.then38.i.if.end45.i_crit_edge

if.then38.i.if.end45.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %192 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %base_addr, align 32
  %and.i180.i = and i32 %193, 1048575
  %add1.i181.i = or i32 %and.i180.i, -18874368
  %194 = inttoptr i32 %add1.i181.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %194, i16 24576) #17, !srcloc !310
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.then38.i.if.end45.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %195 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %base_addr, align 32
  %and.i183.i = and i32 %196, 1048575
  %add1.i184.i = or i32 %and.i183.i, -18874368
  %197 = inttoptr i32 %add1.i184.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %197, i16 16384) #17, !srcloc !310
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.end45.i, %if.then29.i, %if.end22.i
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %198 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev_addr.i, align 64
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %199, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %201)
  %cmp52.i = icmp eq i8 %201, -1
  br i1 %cmp52.i, label %do.end57.i, label %if.then50.i.if.end69_crit_edge

if.then50.i.if.end69_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

do.end57.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #19
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %call) #20
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull @probe_atmel_card.default_mac, i32 noundef 6) #17
  br label %if.end69

if.then68:                                        ; preds = %if.else33.i.if.then68_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #17
  tail call void @unregister_netdev(ptr noundef %call) #17
  br label %err_out_res

if.end69:                                         ; preds = %do.end57.i, %if.then50.i.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #17
  call void @netif_carrier_off(ptr noundef %call) #17
  %call70 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.15, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @atmel_proc_show, ptr noundef %add.ptr.i) #17
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %do.end75, label %if.end69.do.end81_crit_edge

if.end69.do.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end81

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #20
  br label %do.end81

do.end81:                                         ; preds = %do.end75, %if.end69.do.end81_crit_edge
  %202 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev_addr.i, align 64
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %call, i32 noundef 0, i32 noundef 98, ptr noundef %203) #20
  br label %cleanup

err_out_res:                                      ; preds = %if.then68, %if.end61.err_out_res_crit_edge
  %204 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %205, i32 noundef 32) #17
  br label %err_out_irq

err_out_irq:                                      ; preds = %err_out_res, %if.end52.err_out_irq_crit_edge
  %206 = ptrtoint ptr %irq36 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %irq36, align 4
  %call88 = tail call ptr @free_irq(i32 noundef %207, ptr noundef %call) #17
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_irq, %do.end46, %do.end
  tail call void @free_netdev(ptr noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %do.end81, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_out_free ], [ %call, %do.end81 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_management_timer(ptr noundef %t) #0 align 64 {
entry:
  %header.i156 = alloca %struct.ieee80211_hdr, align 2
  %body.i157 = alloca %struct.ass_req_format, align 2
  %header.i123 = alloca %struct.ieee80211_hdr, align 2
  %body.i = alloca %struct.ass_req_format, align 2
  %header.i = alloca %struct.ieee80211_hdr, align 2
  %auth.i = alloca %struct.auth_body, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %land.lhs.true

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %present_callback = getelementptr i8, ptr %t, i32 -48
  %2 = ptrtoint ptr %present_callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %present_callback, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.do.body6_crit_edge, label %land.lhs.true2

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body6

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef nonnull %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.do.body6_crit_edge

land.lhs.true2.do.body6_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body6

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body6:                                         ; preds = %land.lhs.true2.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  %irqlock = getelementptr i8, ptr %t, i32 88
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #17
  %station_state = getelementptr i8, ptr %t, i32 460
  %4 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %station_state, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %5, label %do.body6.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb27
    i32 5, label %sw.bb40
  ]

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body6
  %AuthenticationRequestRetryCnt = getelementptr i8, ptr %t, i32 540
  %7 = ptrtoint ptr %AuthenticationRequestRetryCnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %AuthenticationRequestRetryCnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp12 = icmp sgt i32 %8, 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb
  %9 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.i = icmp eq i32 %10, 7
  br i1 %cmp.i, label %if.then14.atmel_enter_state.exit_crit_edge, label %if.end.i

if.then14.atmel_enter_state.exit_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.end.i:                                         ; preds = %if.then14
  %11 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp6.i = icmp eq i32 %10, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.atmel_enter_state.exit_crit_edge

if.end.i.atmel_enter_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.then7.i:                                       ; preds = %if.end.i
  %dev8.i = getelementptr i8, ptr %t, i32 48
  %12 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8.i, align 4
  tail call void @netif_carrier_off(ptr noundef %13) #17
  %14 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i24.i, align 128
  %state.i.i25.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %last_beacon_timestamp.i = getelementptr i8, ptr %t, i32 5020
  %20 = ptrtoint ptr %last_beacon_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %last_beacon_timestamp.i, align 8
  br label %atmel_enter_state.exit

atmel_enter_state.exit:                           ; preds = %if.end12.i, %if.end.i.atmel_enter_state.exit_crit_edge, %if.then14.atmel_enter_state.exit_crit_edge
  %station_is_associated = getelementptr i8, ptr %t, i32 564
  %21 = ptrtoint ptr %station_is_associated to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %station_is_associated, align 8
  %22 = ptrtoint ptr %AuthenticationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %AuthenticationRequestRetryCnt, align 8
  %connect_to_any_BSS.i = getelementptr i8, ptr %t, i32 4932
  %23 = ptrtoint ptr %connect_to_any_BSS.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connect_to_any_BSS.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %atmel_enter_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 1) #17
  br label %sw.epilog

if.else.i:                                        ; preds = %atmel_enter_state.exit
  %current_BSS.i = getelementptr i8, ptr %t, i32 4928
  %25 = ptrtoint ptr %current_BSS.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_BSS.i, align 4
  %arrayidx.i = getelementptr %struct.atmel_private, ptr %add.ptr, i32 0, i32 70, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %28, 128
  store i32 %or.i, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @retrieve_bss(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.not.i, label %if.else2.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_join_bss(ptr noundef %add.ptr, i32 noundef %call.i) #17
  br label %sw.epilog

if.else2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 0) #17
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %inc = add nsw i32 %8, 1
  %29 = ptrtoint ptr %AuthenticationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc, ptr %AuthenticationRequestRetryCnt, align 8
  %CurrentAuthentTransactionSeqNum = getelementptr i8, ptr %t, i32 532
  %30 = ptrtoint ptr %CurrentAuthentTransactionSeqNum to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %CurrentAuthentTransactionSeqNum, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 256
  %call17 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #17
  %wep_is_on = getelementptr i8, ptr %t, i32 228
  %32 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool19.not = icmp eq i8 %33, 0
  br i1 %tobool19.not, label %if.else.if.end24_crit_edge, label %land.lhs.true20

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted = getelementptr i8, ptr %t, i32 230
  %34 = ptrtoint ptr %exclude_unencrypted to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %exclude_unencrypted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.not.not = icmp eq i8 %35, 0
  %phi.bo = select i1 %tobool22.not.not, i16 0, i16 256
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true20, %if.else.if.end24_crit_edge
  %auth.0 = phi i16 [ 0, %if.else.if.end24_crit_edge ], [ %phi.bo, %land.lhs.true20 ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i) #17
  %36 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 4
  %40 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 5
  %41 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 6
  %42 = call ptr @memset(ptr %41, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %auth.i) #17
  %43 = getelementptr inbounds i8, ptr %auth.i, i32 6
  %44 = call ptr @memset(ptr %43, i32 255, i32 256)
  %45 = ptrtoint ptr %header.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -20480, ptr %header.i, align 2
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 128, ptr %36, align 2
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %40, align 2
  %CurrentBSSID.i = getelementptr i8, ptr %t, i32 4944
  %48 = call ptr @memcpy(ptr %37, ptr %CurrentBSSID.i, i32 6)
  %dev.i = getelementptr i8, ptr %t, i32 48
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr.i, align 64
  %53 = call ptr @memcpy(ptr %38, ptr %52, i32 6)
  %54 = call ptr @memcpy(ptr %39, ptr %CurrentBSSID.i, i32 6)
  %55 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i92 = icmp eq i8 %56, 0
  br i1 %tobool.not.i92, label %if.end24.send_authentication_request.exit_crit_edge, label %land.lhs.true.i

if.end24.send_authentication_request.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_authentication_request.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %57 = ptrtoint ptr %CurrentAuthentTransactionSeqNum to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %CurrentAuthentTransactionSeqNum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.not.i93 = icmp eq i32 %58, 1
  br i1 %cmp.not.i93, label %land.lhs.true.i.send_authentication_request.exit_crit_edge, label %if.then.i94

land.lhs.true.i.send_authentication_request.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_authentication_request.exit

if.then.i94:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %header.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -20416, ptr %header.i, align 2
  br label %send_authentication_request.exit

send_authentication_request.exit:                 ; preds = %if.then.i94, %land.lhs.true.i.send_authentication_request.exit_crit_edge, %if.end24.send_authentication_request.exit_crit_edge
  %60 = ptrtoint ptr %auth.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %auth.0, ptr %auth.i, align 2
  %status.i = getelementptr inbounds %struct.auth_body, ptr %auth.i, i32 0, i32 2
  %61 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %status.i, align 2
  %62 = ptrtoint ptr %CurrentAuthentTransactionSeqNum to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %CurrentAuthentTransactionSeqNum, align 8
  %conv11.i = trunc i32 %63 to i16
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #17
  %trans_seq.i = getelementptr inbounds %struct.auth_body, ptr %auth.i, i32 0, i32 1
  %65 = ptrtoint ptr %trans_seq.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %trans_seq.i, align 2
  %add.i = add i32 %63, 1
  %ExpectedAuthentTransactionSeqNum.i = getelementptr i8, ptr %t, i32 536
  %66 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  %add14.i = add i32 %63, 2
  %67 = ptrtoint ptr %CurrentAuthentTransactionSeqNum to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add14.i, ptr %CurrentAuthentTransactionSeqNum, align 8
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr, ptr noundef nonnull %header.i, ptr noundef nonnull %auth.i, i32 noundef 6) #17
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %auth.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i) #17
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body6
  %AssociationRequestRetryCnt = getelementptr i8, ptr %t, i32 544
  %68 = ptrtoint ptr %AssociationRequestRetryCnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AssociationRequestRetryCnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp28 = icmp eq i32 %69, 3
  br i1 %cmp28, label %if.then30, label %if.else33

if.then30:                                        ; preds = %sw.bb27
  %70 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %71)
  %cmp.i97 = icmp eq i32 %71, 7
  br i1 %cmp.i97, label %if.then30.atmel_enter_state.exit110_crit_edge, label %if.end.i98

if.then30.atmel_enter_state.exit110_crit_edge:    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit110

if.end.i98:                                       ; preds = %if.then30
  %72 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp6.i99 = icmp eq i32 %71, 4
  br i1 %cmp6.i99, label %if.then7.i104, label %if.end.i98.atmel_enter_state.exit110_crit_edge

if.end.i98.atmel_enter_state.exit110_crit_edge:   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit110

if.then7.i104:                                    ; preds = %if.end.i98
  %dev8.i100 = getelementptr i8, ptr %t, i32 48
  %73 = ptrtoint ptr %dev8.i100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev8.i100, align 4
  tail call void @netif_carrier_off(ptr noundef %74) #17
  %75 = ptrtoint ptr %dev8.i100 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev8.i100, align 4
  %state.i.i101 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %state.i.i101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %state.i.i101, align 4
  %and1.i.i.i102 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i102)
  %tobool.i.not.i103 = icmp eq i32 %and1.i.i.i102, 0
  br i1 %tobool.i.not.i103, label %if.then7.i104.if.end12.i109_crit_edge, label %if.then10.i107

if.then7.i104.if.end12.i109_crit_edge:            ; preds = %if.then7.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i109

if.then10.i107:                                   ; preds = %if.then7.i104
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i105 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i24.i105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i24.i105, align 128
  %state.i.i25.i106 = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i106) #17
  br label %if.end12.i109

if.end12.i109:                                    ; preds = %if.then10.i107, %if.then7.i104.if.end12.i109_crit_edge
  %last_beacon_timestamp.i108 = getelementptr i8, ptr %t, i32 5020
  %81 = ptrtoint ptr %last_beacon_timestamp.i108 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %last_beacon_timestamp.i108, align 8
  br label %atmel_enter_state.exit110

atmel_enter_state.exit110:                        ; preds = %if.end12.i109, %if.end.i98.atmel_enter_state.exit110_crit_edge, %if.then30.atmel_enter_state.exit110_crit_edge
  %station_is_associated31 = getelementptr i8, ptr %t, i32 564
  %82 = ptrtoint ptr %station_is_associated31 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %station_is_associated31, align 8
  %83 = ptrtoint ptr %AssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %AssociationRequestRetryCnt, align 4
  %connect_to_any_BSS.i111 = getelementptr i8, ptr %t, i32 4932
  %84 = ptrtoint ptr %connect_to_any_BSS.i111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %connect_to_any_BSS.i111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i112 = icmp eq i32 %85, 0
  br i1 %tobool.not.i112, label %if.then.i113, label %if.else.i119

if.then.i113:                                     ; preds = %atmel_enter_state.exit110
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 1) #17
  br label %sw.epilog

if.else.i119:                                     ; preds = %atmel_enter_state.exit110
  %current_BSS.i114 = getelementptr i8, ptr %t, i32 4928
  %86 = ptrtoint ptr %current_BSS.i114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %current_BSS.i114, align 4
  %arrayidx.i115 = getelementptr %struct.atmel_private, ptr %add.ptr, i32 0, i32 70, i32 %87
  %88 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i115, align 4
  %or.i116 = or i32 %89, 128
  store i32 %or.i116, ptr %arrayidx.i115, align 4
  %call.i117 = tail call fastcc i32 @retrieve_bss(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i117)
  %cmp.not.i118 = icmp eq i32 %call.i117, -1
  br i1 %cmp.not.i118, label %if.else2.i121, label %if.then1.i120

if.then1.i120:                                    ; preds = %if.else.i119
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_join_bss(ptr noundef %add.ptr, i32 noundef %call.i117) #17
  br label %sw.epilog

if.else2.i121:                                    ; preds = %if.else.i119
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 0) #17
  br label %sw.epilog

if.else33:                                        ; preds = %sw.bb27
  %inc35 = add i32 %69, 1
  %90 = ptrtoint ptr %AssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %inc35, ptr %AssociationRequestRetryCnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %add37 = add i32 %91, 256
  %call38 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add37) #17
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i123) #17
  %92 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 1
  %93 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 2
  %94 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 3
  %95 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 4
  %96 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 5
  %97 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i123, i32 0, i32 6
  %98 = call ptr @memset(ptr %97, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i) #17
  %99 = getelementptr inbounds i8, ptr %body.i, i32 4
  %100 = getelementptr inbounds i8, ptr %body.i, i32 6
  %101 = call ptr @memset(ptr %100, i32 255, i32 44)
  %102 = ptrtoint ptr %header.i123 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %header.i123, align 2
  %103 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 128, ptr %92, align 2
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %96, align 2
  %CurrentBSSID.i124 = getelementptr i8, ptr %t, i32 4944
  %105 = call ptr @memcpy(ptr %93, ptr %CurrentBSSID.i124, i32 6)
  %dev.i125 = getelementptr i8, ptr %t, i32 48
  %106 = ptrtoint ptr %dev.i125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i125, align 4
  %dev_addr.i126 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 86
  %108 = ptrtoint ptr %dev_addr.i126 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_addr.i126, align 64
  %110 = call ptr @memcpy(ptr %94, ptr %109, i32 6)
  %111 = call ptr @memcpy(ptr %95, ptr %CurrentBSSID.i124, i32 6)
  %wep_is_on.i127 = getelementptr i8, ptr %t, i32 228
  %112 = ptrtoint ptr %wep_is_on.i127 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %wep_is_on.i127, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool6.not.i = icmp eq i8 %113, 0
  %spec.store.select.i = select i1 %tobool6.not.i, i16 256, i16 4352
  %114 = ptrtoint ptr %body.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %spec.store.select.i, ptr %body.i, align 2
  %preamble.i = getelementptr i8, ptr %t, i32 516
  %115 = ptrtoint ptr %preamble.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %preamble.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i128 = icmp eq i32 %116, 1
  br i1 %cmp.i128, label %if.then12.i, label %if.else33.send_association_request.exit_crit_edge

if.else33.send_association_request.exit_crit_edge: ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_association_request.exit

if.then12.i:                                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #19
  %117 = or i16 %spec.store.select.i, 8192
  %118 = ptrtoint ptr %body.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %body.i, align 2
  br label %send_association_request.exit

send_association_request.exit:                    ; preds = %if.then12.i, %if.else33.send_association_request.exit_crit_edge
  %listen_interval.i = getelementptr i8, ptr %t, i32 528
  %119 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %listen_interval.i, align 4
  %beacon_period.i = getelementptr i8, ptr %t, i32 524
  %121 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %beacon_period.i, align 8
  %mul.i = mul i32 %122, %120
  %conv18.i = trunc i32 %mul.i to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #17
  %listen_interval19.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i, i32 0, i32 1
  %124 = ptrtoint ptr %listen_interval19.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %listen_interval19.i, align 2
  %SSID_size26.i = getelementptr i8, ptr %t, i32 4936
  %125 = ptrtoint ptr %SSID_size26.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %SSID_size26.i, align 4
  %add27.i = add i32 %126, 12
  %127 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %99, align 2
  %conv31.i = trunc i32 %126 to i8
  %arrayidx32.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv31.i, ptr %arrayidx32.i, align 1
  %add.ptr.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i, i32 0, i32 2, i32 2
  %SSID.i = getelementptr i8, ptr %t, i32 4956
  %129 = call ptr @memcpy(ptr %add.ptr.i, ptr %SSID.i, i32 %126)
  %add36.i = add i32 %126, 2
  %arrayidx37.i = getelementptr i8, ptr %99, i32 %add36.i
  %130 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %arrayidx37.i, align 1
  %add39.i = add i32 %126, 3
  %arrayidx40.i = getelementptr i8, ptr %99, i32 %add39.i
  %131 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %arrayidx40.i, align 1
  %add.ptr41.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i, i32 0, i32 2, i32 4
  %add.ptr43.i = getelementptr i8, ptr %add.ptr41.i, i32 %126
  %132 = load i32, ptr @atmel_basic_rates, align 4
  %133 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %add.ptr43.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr, ptr noundef nonnull %header.i123, ptr noundef nonnull %body.i, i32 noundef %add27.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i123) #17
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.body6
  %ReAssociationRequestRetryCnt = getelementptr i8, ptr %t, i32 548
  %134 = ptrtoint ptr %ReAssociationRequestRetryCnt to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ReAssociationRequestRetryCnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %cmp41 = icmp eq i32 %135, 3
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %sw.bb40
  %136 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %137)
  %cmp.i130 = icmp eq i32 %137, 7
  br i1 %cmp.i130, label %if.then43.atmel_enter_state.exit143_crit_edge, label %if.end.i131

if.then43.atmel_enter_state.exit143_crit_edge:    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit143

if.end.i131:                                      ; preds = %if.then43
  %138 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp6.i132 = icmp eq i32 %137, 4
  br i1 %cmp6.i132, label %if.then7.i137, label %if.end.i131.atmel_enter_state.exit143_crit_edge

if.end.i131.atmel_enter_state.exit143_crit_edge:  ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit143

if.then7.i137:                                    ; preds = %if.end.i131
  %dev8.i133 = getelementptr i8, ptr %t, i32 48
  %139 = ptrtoint ptr %dev8.i133 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev8.i133, align 4
  tail call void @netif_carrier_off(ptr noundef %140) #17
  %141 = ptrtoint ptr %dev8.i133 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev8.i133, align 4
  %state.i.i134 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %state.i.i134 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %state.i.i134, align 4
  %and1.i.i.i135 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i135)
  %tobool.i.not.i136 = icmp eq i32 %and1.i.i.i135, 0
  br i1 %tobool.i.not.i136, label %if.then7.i137.if.end12.i142_crit_edge, label %if.then10.i140

if.then7.i137.if.end12.i142_crit_edge:            ; preds = %if.then7.i137
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i142

if.then10.i140:                                   ; preds = %if.then7.i137
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i138 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 103
  %145 = ptrtoint ptr %_tx.i.i24.i138 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %_tx.i.i24.i138, align 128
  %state.i.i25.i139 = getelementptr inbounds %struct.netdev_queue, ptr %146, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i139) #17
  br label %if.end12.i142

if.end12.i142:                                    ; preds = %if.then10.i140, %if.then7.i137.if.end12.i142_crit_edge
  %last_beacon_timestamp.i141 = getelementptr i8, ptr %t, i32 5020
  %147 = ptrtoint ptr %last_beacon_timestamp.i141 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 0, ptr %last_beacon_timestamp.i141, align 8
  br label %atmel_enter_state.exit143

atmel_enter_state.exit143:                        ; preds = %if.end12.i142, %if.end.i131.atmel_enter_state.exit143_crit_edge, %if.then43.atmel_enter_state.exit143_crit_edge
  %station_is_associated44 = getelementptr i8, ptr %t, i32 564
  %148 = ptrtoint ptr %station_is_associated44 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %station_is_associated44, align 8
  %149 = ptrtoint ptr %ReAssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %ReAssociationRequestRetryCnt, align 8
  %connect_to_any_BSS.i144 = getelementptr i8, ptr %t, i32 4932
  %150 = ptrtoint ptr %connect_to_any_BSS.i144 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %connect_to_any_BSS.i144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i145 = icmp eq i32 %151, 0
  br i1 %tobool.not.i145, label %if.then.i146, label %if.else.i152

if.then.i146:                                     ; preds = %atmel_enter_state.exit143
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 1) #17
  br label %sw.epilog

if.else.i152:                                     ; preds = %atmel_enter_state.exit143
  %current_BSS.i147 = getelementptr i8, ptr %t, i32 4928
  %152 = ptrtoint ptr %current_BSS.i147 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %current_BSS.i147, align 4
  %arrayidx.i148 = getelementptr %struct.atmel_private, ptr %add.ptr, i32 0, i32 70, i32 %153
  %154 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i148, align 4
  %or.i149 = or i32 %155, 128
  store i32 %or.i149, ptr %arrayidx.i148, align 4
  %call.i150 = tail call fastcc i32 @retrieve_bss(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, -1
  br i1 %cmp.not.i151, label %if.else2.i154, label %if.then1.i153

if.then1.i153:                                    ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_join_bss(ptr noundef %add.ptr, i32 noundef %call.i150) #17
  br label %sw.epilog

if.else2.i154:                                    ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr, i32 noundef 0) #17
  br label %sw.epilog

if.else46:                                        ; preds = %sw.bb40
  %inc48 = add i32 %135, 1
  %156 = ptrtoint ptr %ReAssociationRequestRetryCnt to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %inc48, ptr %ReAssociationRequestRetryCnt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %add50 = add i32 %157, 256
  %call51 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add50) #17
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i156) #17
  %158 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 1
  %159 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 2
  %160 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 3
  %161 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 4
  %162 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 5
  %163 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i156, i32 0, i32 6
  %164 = call ptr @memset(ptr %163, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i157) #17
  %165 = getelementptr inbounds i8, ptr %body.i157, i32 4
  %166 = getelementptr inbounds i8, ptr %body.i157, i32 12
  %167 = call ptr @memset(ptr %166, i32 255, i32 38)
  %168 = ptrtoint ptr %header.i156 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 8192, ptr %header.i156, align 2
  %169 = ptrtoint ptr %158 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 128, ptr %158, align 2
  %170 = ptrtoint ptr %162 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %162, align 2
  %CurrentBSSID.i158 = getelementptr i8, ptr %t, i32 4944
  %171 = call ptr @memcpy(ptr %159, ptr %CurrentBSSID.i158, i32 6)
  %dev.i159 = getelementptr i8, ptr %t, i32 48
  %172 = ptrtoint ptr %dev.i159 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i159, align 4
  %dev_addr.i160 = getelementptr inbounds %struct.net_device, ptr %173, i32 0, i32 86
  %174 = ptrtoint ptr %dev_addr.i160 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev_addr.i160, align 64
  %176 = call ptr @memcpy(ptr %160, ptr %175, i32 6)
  %177 = call ptr @memcpy(ptr %161, ptr %CurrentBSSID.i158, i32 6)
  %wep_is_on.i161 = getelementptr i8, ptr %t, i32 228
  %178 = ptrtoint ptr %wep_is_on.i161 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %wep_is_on.i161, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool6.not.i162 = icmp eq i8 %179, 0
  %spec.store.select.i163 = select i1 %tobool6.not.i162, i16 256, i16 4352
  %180 = ptrtoint ptr %body.i157 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %spec.store.select.i163, ptr %body.i157, align 2
  %preamble.i164 = getelementptr i8, ptr %t, i32 516
  %181 = ptrtoint ptr %preamble.i164 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %preamble.i164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp.i165 = icmp eq i32 %182, 1
  br i1 %cmp.i165, label %if.then12.i166, label %if.else46.send_association_request.exit185_crit_edge

if.else46.send_association_request.exit185_crit_edge: ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_association_request.exit185

if.then12.i166:                                   ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  %183 = or i16 %spec.store.select.i163, 8192
  %184 = ptrtoint ptr %body.i157 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %body.i157, align 2
  br label %send_association_request.exit185

send_association_request.exit185:                 ; preds = %if.then12.i166, %if.else46.send_association_request.exit185_crit_edge
  %listen_interval.i167 = getelementptr i8, ptr %t, i32 528
  %185 = ptrtoint ptr %listen_interval.i167 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %listen_interval.i167, align 4
  %beacon_period.i168 = getelementptr i8, ptr %t, i32 524
  %187 = ptrtoint ptr %beacon_period.i168 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %beacon_period.i168, align 8
  %mul.i169 = mul i32 %188, %186
  %conv18.i170 = trunc i32 %mul.i169 to i16
  %189 = tail call i16 @llvm.bswap.i16(i16 %conv18.i170) #17
  %listen_interval19.i171 = getelementptr inbounds %struct.ass_req_format, ptr %body.i157, i32 0, i32 1
  %190 = ptrtoint ptr %listen_interval19.i171 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %listen_interval19.i171, align 2
  %191 = call ptr @memcpy(ptr %165, ptr %CurrentBSSID.i158, i32 6)
  %ssid_el_id.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i157, i32 0, i32 3
  %SSID_size26.i173 = getelementptr i8, ptr %t, i32 4936
  %192 = ptrtoint ptr %SSID_size26.i173 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %SSID_size26.i173, align 4
  %add27.i174 = add i32 %193, 18
  %194 = ptrtoint ptr %ssid_el_id.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %ssid_el_id.i, align 2
  %conv31.i175 = trunc i32 %193 to i8
  %arrayidx32.i176 = getelementptr inbounds %struct.ass_req_format, ptr %body.i157, i32 0, i32 4
  %195 = ptrtoint ptr %arrayidx32.i176 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv31.i175, ptr %arrayidx32.i176, align 1
  %add.ptr.i177 = getelementptr inbounds %struct.ass_req_format, ptr %body.i157, i32 0, i32 5
  %SSID.i178 = getelementptr i8, ptr %t, i32 4956
  %196 = call ptr @memcpy(ptr %add.ptr.i177, ptr %SSID.i178, i32 %193)
  %add36.i179 = add i32 %193, 2
  %arrayidx37.i180 = getelementptr i8, ptr %ssid_el_id.i, i32 %add36.i179
  %197 = ptrtoint ptr %arrayidx37.i180 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %arrayidx37.i180, align 1
  %add39.i181 = add i32 %193, 3
  %arrayidx40.i182 = getelementptr i8, ptr %ssid_el_id.i, i32 %add39.i181
  %198 = ptrtoint ptr %arrayidx40.i182 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 4, ptr %arrayidx40.i182, align 1
  %add.ptr41.i183 = getelementptr inbounds %struct.ass_req_format, ptr %body.i157, i32 0, i32 5, i32 2
  %add.ptr43.i184 = getelementptr i8, ptr %add.ptr41.i183, i32 %193
  %199 = load i32, ptr @atmel_basic_rates, align 4
  %200 = ptrtoint ptr %add.ptr43.i184 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 %199, ptr %add.ptr43.i184, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr, ptr noundef nonnull %header.i156, ptr noundef nonnull %body.i157, i32 noundef %add27.i174) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i157) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i156) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %send_association_request.exit185, %if.else2.i154, %if.then1.i153, %if.then.i146, %send_association_request.exit, %if.else2.i121, %if.then1.i120, %if.then.i113, %send_authentication_request.exit, %if.else2.i, %if.then1.i, %if.then.i, %do.body6.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @service_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %header.i204 = alloca %struct.ieee80211_hdr, align 2
  %auth.i = alloca %struct.auth_body, align 2
  %wrqu.i = alloca %union.iwreq_data, align 4
  %header.i486.i = alloca %struct.ieee80211_hdr, align 2
  %auth.i.i = alloca %struct.auth_body, align 2
  %header.i441.i = alloca %struct.ieee80211_hdr, align 2
  %body.i442.i = alloca %struct.ass_req_format, align 2
  %header.i406.i = alloca %struct.ieee80211_hdr, align 2
  %body.i407.i = alloca %struct.ass_req_format, align 2
  %header.i.i = alloca %struct.ieee80211_hdr, align 2
  %body.i.i = alloca %struct.ass_req_format, align 2
  %header.i.i171.i.i = alloca %struct.ieee80211_hdr, align 2
  %body.i.i172.i.i = alloca %struct.ass_req_format, align 2
  %wrqu.i.i.i = alloca %union.iwreq_data, align 4
  %header.i59.i.i.i = alloca %struct.ieee80211_hdr, align 2
  %auth.i60.i.i.i = alloca %struct.auth_body, align 2
  %header.i53.i.i.i = alloca %struct.ieee80211_hdr, align 2
  %auth.i.i.i.i = alloca %struct.auth_body, align 2
  %header.i23.i.i.i = alloca %struct.ieee80211_hdr, align 2
  %body.i24.i.i.i = alloca %struct.ass_req_format, align 2
  %header.i.i.i.i = alloca %struct.ieee80211_hdr, align 2
  %body.i.i.i.i = alloca %struct.ass_req_format, align 2
  %mac4.i265.i = alloca [6 x i8], align 1
  %source.i.i = alloca [6 x i8], align 1
  %netcrc.i266.i = alloca i32, align 4
  %netcrc84.i.i = alloca i32, align 4
  %mac4.i.i = alloca [6 x i8], align 1
  %netcrc.i.i = alloca i32, align 4
  %header.i = alloca %struct.ieee80211_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %present_callback = getelementptr i8, ptr %dev_id, i32 2308
  %2 = ptrtoint ptr %present_callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %present_callback, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 %3(ptr noundef nonnull %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %station_state = getelementptr i8, ptr %dev_id, i32 2816
  %4 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !319
  tail call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %7, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !320
  %10 = and i16 %9, -513
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr.i, align 32
  %and8.i = and i32 %12, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %13 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #17, !srcloc !310
  %call9249 = call fastcc i32 @atmel_lock_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9249)
  %tobool10.not250 = icmp eq i32 %call9249, 0
  br i1 %tobool10.not250, label %if.end8.do.end_crit_edge, label %if.end13.lr.ph

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end13.lr.ph:                                   ; preds = %if.end8
  %host_info_base.i = getelementptr i8, ptr %dev_id, i32 2776
  %dev.i = getelementptr i8, ptr %dev_id, i32 2404
  %CurrentBSSID = getelementptr i8, ptr %dev_id, i32 7300
  %use_wpa = getelementptr i8, ptr %dev_id, i32 2768
  %command_pos.i.i = getelementptr i8, ptr %dev_id, i32 2800
  %14 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i, i32 0, i32 2
  %operating_mode60.i = getelementptr i8, ptr %dev_id, i32 2820
  %AuthenticationRequestRetryCnt.i = getelementptr i8, ptr %dev_id, i32 2896
  %last_beacon_timestamp.i225 = getelementptr i8, ptr %dev_id, i32 7376
  %management_timer.i = getelementptr i8, ptr %dev_id, i32 2356
  %CurrentAuthentTransactionSeqNum.i = getelementptr i8, ptr %dev_id, i32 2888
  %wep_is_on.i202 = getelementptr i8, ptr %dev_id, i32 2584
  %exclude_unencrypted.i = getelementptr i8, ptr %dev_id, i32 2586
  %16 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 3
  %19 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 4
  %20 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 5
  %21 = getelementptr inbounds i8, ptr %auth.i, i32 6
  %status.i = getelementptr inbounds %struct.auth_body, ptr %auth.i, i32 0, i32 2
  %trans_seq.i = getelementptr inbounds %struct.auth_body, ptr %auth.i, i32 0, i32 1
  %ExpectedAuthentTransactionSeqNum.i = getelementptr i8, ptr %dev_id, i32 2892
  %station_is_associated64.i = getelementptr i8, ptr %dev_id, i32 2920
  %station_was_associated65.i = getelementptr i8, ptr %dev_id, i32 2916
  %fast_scan40.i = getelementptr i8, ptr %dev_id, i32 2924
  %site_survey_state46.i = getelementptr i8, ptr %dev_id, i32 2908
  %SSID_size.i = getelementptr i8, ptr %dev_id, i32 7292
  %tx_desc_count.i = getelementptr i8, ptr %dev_id, i32 2788
  %tx_desc_head.i = getelementptr i8, ptr %dev_id, i32 2560
  %tx_desc_pos.i.i = getelementptr i8, ptr %dev_id, i32 2786
  %tx_free_mem.i = getelementptr i8, ptr %dev_id, i32 2566
  %tx_desc_free.i = getelementptr i8, ptr %dev_id, i32 2558
  %tx_buff_head.i = getelementptr i8, ptr %dev_id, i32 2568
  %tx_buff_pos.i = getelementptr i8, ptr %dev_id, i32 2782
  %tx_buff_size.i = getelementptr i8, ptr %dev_id, i32 2784
  %misc = getelementptr i8, ptr %dev_id, i32 2436
  %22 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 4
  %25 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i, i32 0, i32 5
  %rx_desc_count.i = getelementptr i8, ptr %dev_id, i32 2796
  %rx_desc_head.i = getelementptr i8, ptr %dev_id, i32 2556
  %rx_desc_pos.i.i = getelementptr i8, ptr %dev_id, i32 2794
  %discard.i = getelementptr i8, ptr %dev_id, i32 2420
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %header.i, i32 1
  %probe_crc.i = getelementptr i8, ptr %dev_id, i32 2544
  %do_rx_crc46.i = getelementptr i8, ptr %dev_id, i32 2540
  %crc_ok_cnt.i = getelementptr i8, ptr %dev_id, i32 2548
  %crc_ko_cnt.i = getelementptr i8, ptr %dev_id, i32 2552
  %26 = getelementptr inbounds [6 x i8], ptr %mac4.i265.i, i32 0, i32 1
  %frag_no57.i.i = getelementptr i8, ptr %dev_id, i32 2576
  %frag_seq62.i.i = getelementptr i8, ptr %dev_id, i32 2572
  %frag_source68.i.i = getelementptr i8, ptr %dev_id, i32 2578
  %fragment.i.i = getelementptr i8, ptr %dev_id, i32 2428
  %rx_buf76.i.i = getelementptr i8, ptr %dev_id, i32 7384
  %frag_len77.i.i = getelementptr i8, ptr %dev_id, i32 2574
  %incdec.ptr.i336.i.i = getelementptr inbounds i8, ptr %netcrc84.i.i, i32 1
  %arrayidx.i.i = getelementptr i8, ptr %dev_id, i32 7390
  %arrayidx35.i.i = getelementptr i8, ptr %dev_id, i32 7396
  %incdec.ptr.i227.i.i = getelementptr i8, ptr %dev_id, i32 7397
  %incdec.ptr.i263.i.i = getelementptr inbounds i8, ptr %netcrc.i266.i, i32 1
  %27 = getelementptr inbounds [6 x i8], ptr %mac4.i.i, i32 0, i32 1
  %incdec.ptr.i139.i.i = getelementptr inbounds i8, ptr %netcrc.i.i, i32 1
  %incdec.ptr.i328.i = getelementptr i8, ptr %dev_id, i32 7385
  %status1.i173.i.i = getelementptr i8, ptr %dev_id, i32 7386
  %ass_id2.i.i.i = getelementptr i8, ptr %dev_id, i32 7388
  %length.i.i.i = getelementptr i8, ptr %dev_id, i32 7391
  %ReAssociationRequestRetryCnt64.i.i.i = getelementptr i8, ptr %dev_id, i32 2904
  %28 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 4
  %32 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 5
  %33 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i171.i.i, i32 0, i32 6
  %34 = getelementptr inbounds i8, ptr %body.i.i172.i.i, i32 4
  %35 = getelementptr inbounds i8, ptr %body.i.i172.i.i, i32 12
  %preamble.i.i186.i.i = getelementptr i8, ptr %dev_id, i32 2872
  %listen_interval.i.i188.i.i = getelementptr i8, ptr %dev_id, i32 2884
  %beacon_period.i.i189.i.i = getelementptr i8, ptr %dev_id, i32 2880
  %listen_interval19.i.i192.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i172.i.i, i32 0, i32 1
  %ssid_el_id.i.i193.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i172.i.i, i32 0, i32 3
  %arrayidx32.i.i197.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i172.i.i, i32 0, i32 4
  %SSID.i.i199.i.i = getelementptr i8, ptr %dev_id, i32 7312
  %add.ptr41.i.i204.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i172.i.i, i32 0, i32 5, i32 2
  %AssociationRequestRetryCnt45.i.i.i = getelementptr i8, ptr %dev_id, i32 2900
  %36 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 4
  %40 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 5
  %41 = getelementptr inbounds i8, ptr %body.i.i, i32 4
  %listen_interval19.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i, i32 0, i32 1
  %arrayidx32.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i, i32 0, i32 2, i32 1
  %add.ptr.i405.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i, i32 0, i32 2, i32 2
  %add.ptr41.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i, i32 0, i32 2, i32 4
  %connect_to_any_BSS.i207.i.i = getelementptr i8, ptr %dev_id, i32 7288
  %current_BSS.i209.i.i = getelementptr i8, ptr %dev_id, i32 7284
  %rates.i.i.i = getelementptr i8, ptr %dev_id, i32 7392
  %power_mode.i.i.i = getelementptr i8, ptr %dev_id, i32 2824
  %sa_data.i.i.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 3
  %45 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 4
  %46 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 5
  %47 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i59.i.i.i, i32 0, i32 6
  %48 = getelementptr inbounds i8, ptr %auth.i60.i.i.i, i32 6
  %status.i70.i.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i60.i.i.i, i32 0, i32 2
  %trans_seq.i73.i.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i60.i.i.i, i32 0, i32 1
  %49 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 3
  %52 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 4
  %53 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 5
  %54 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i53.i.i.i, i32 0, i32 6
  %55 = getelementptr inbounds i8, ptr %auth.i.i.i.i, i32 6
  %status.i.i.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i.i.i, i32 0, i32 2
  %trans_seq.i.i.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i.i.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 1
  %57 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 2
  %58 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 3
  %59 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 4
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 5
  %61 = getelementptr inbounds i8, ptr %auth.i.i, i32 6
  %status.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i, i32 0, i32 2
  %trans_seq.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i, i32 0, i32 1
  %chall_text_len.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i, i32 0, i32 4
  %chall_text.i.i = getelementptr inbounds %struct.auth_body, ptr %auth.i.i, i32 0, i32 5
  %62 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 1
  %63 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 2
  %64 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 3
  %65 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 4
  %66 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 5
  %67 = getelementptr inbounds i8, ptr %body.i442.i, i32 4
  %listen_interval19.i456.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i442.i, i32 0, i32 1
  %ssid_el_id.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i442.i, i32 0, i32 3
  %arrayidx32.i461.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i442.i, i32 0, i32 4
  %add.ptr.i462.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i442.i, i32 0, i32 5
  %add.ptr41.i468.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i442.i, i32 0, i32 5, i32 2
  %68 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 2
  %70 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 3
  %71 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 4
  %72 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 5
  %73 = getelementptr inbounds i8, ptr %body.i407.i, i32 4
  %listen_interval19.i421.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i407.i, i32 0, i32 1
  %arrayidx32.i426.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i407.i, i32 0, i32 2, i32 1
  %add.ptr.i427.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i407.i, i32 0, i32 2, i32 2
  %add.ptr41.i433.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i407.i, i32 0, i32 2, i32 4
  %74 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 1
  %75 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 2
  %76 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 3
  %77 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 4
  %78 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 5
  %79 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i.i.i, i32 0, i32 6
  %80 = getelementptr inbounds i8, ptr %body.i.i.i.i, i32 4
  %81 = getelementptr inbounds i8, ptr %body.i.i.i.i, i32 12
  %listen_interval19.i.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i.i.i, i32 0, i32 1
  %ssid_el_id.i.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i.i.i, i32 0, i32 3
  %arrayidx32.i.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i.i.i, i32 0, i32 4
  %add.ptr41.i.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i.i.i.i, i32 0, i32 5, i32 2
  %82 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 2
  %84 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 3
  %85 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 4
  %86 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 5
  %87 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i23.i.i.i, i32 0, i32 6
  %88 = getelementptr inbounds i8, ptr %body.i24.i.i.i, i32 4
  %89 = getelementptr inbounds i8, ptr %body.i24.i.i.i, i32 6
  %listen_interval19.i38.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i24.i.i.i, i32 0, i32 1
  %arrayidx32.i43.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i24.i.i.i, i32 0, i32 2, i32 1
  %add.ptr41.i50.i.i.i = getelementptr inbounds %struct.ass_req_format, ptr %body.i24.i.i.i, i32 0, i32 2, i32 4
  %capability4.i.i = getelementptr i8, ptr %dev_id, i32 7394
  %level.i547.i = getelementptr i8, ptr %dev_id, i32 2415
  %firmware_type.i.i = getelementptr i8, ptr %dev_id, i32 2344
  %updated.i556.i = getelementptr i8, ptr %dev_id, i32 2417
  %beacons_this_sec.i.i = getelementptr i8, ptr %dev_id, i32 2832
  %last_qual.i.i = getelementptr i8, ptr %dev_id, i32 2828
  %qual.i.i = getelementptr i8, ptr %dev_id, i32 2414
  %miss.i.i = getelementptr i8, ptr %dev_id, i32 2440
  %channel435.i.i = getelementptr i8, ptr %dev_id, i32 2836
  %rates_el_id.i.i = getelementptr i8, ptr %dev_id, i32 7398
  %BSS_list_entries.i.i = getelementptr i8, ptr %dev_id, i32 7280
  %90 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i.i, i32 0, i32 6
  %91 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i486.i, i32 0, i32 6
  %92 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i441.i, i32 0, i32 6
  %93 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i406.i, i32 0, i32 6
  %94 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header.i204, i32 0, i32 6
  br label %if.end13

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %if.end8.do.end_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %dev_id) #20
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog.if.end13_crit_edge, %if.end13.lr.ph
  %i.0251 = phi i32 [ -1, %if.end13.lr.ph ], [ %i.1.lcssa, %sw.epilog.if.end13_crit_edge ]
  %95 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %host_info_base.i, align 8
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %98, i16 noundef zeroext %96) #17
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %102, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %103 = inttoptr i32 %add1.i.i to ptr
  %104 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %105 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %host_info_base.i, align 8
  %add.i = add i16 %106, 3
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %108, i16 noundef zeroext %add.i) #17
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i134 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %base_addr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base_addr.i.i134, align 32
  %add.i.i135 = add i32 %112, 8
  %and.i.i136 = and i32 %add.i.i135, 1048575
  %add1.i.i137 = or i32 %and.i.i136, -18874368
  %113 = inttoptr i32 %add1.i.i137 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 0) #17, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool17.not = icmp eq i8 %104, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %114 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_addr.i, align 32
  %and.i139 = and i32 %115, 1048575
  %add1.i140 = or i32 %and.i139, -18874368
  %116 = inttoptr i32 %add1.i140 to ptr
  %117 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %116) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %118 = or i16 %117, 512
  %119 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base_addr.i, align 32
  %and7.i = and i32 %120, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %121 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %121, i16 %118) #17, !srcloc !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0251)
  %cmp19 = icmp ne i32 %i.0251, -1
  %cond = zext i1 %cmp19 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %122 = or i16 %117, 2048
  %123 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %base_addr.i, align 32
  %and7.i145 = and i32 %124, 1048575
  %add8.i146 = or i32 %and7.i145, -18874368
  %125 = inttoptr i32 %add8.i146 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %125, i16 %122) #17, !srcloc !310
  %and131 = and i8 %104, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131)
  %tobool23.not = icmp eq i8 %and131, 0
  br i1 %tobool23.not, label %for.inc, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc:                                          ; preds = %if.end20
  %and131.1 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.1)
  %tobool23.not.1 = icmp eq i8 %and131.1, 0
  br i1 %tobool23.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and131.2 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.2)
  %tobool23.not.2 = icmp eq i8 %and131.2, 0
  br i1 %tobool23.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and131.3 = and i8 %104, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.3)
  %tobool23.not.3 = icmp eq i8 %and131.3, 0
  br i1 %tobool23.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and131.4 = and i8 %104, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.4)
  %tobool23.not.4 = icmp eq i8 %and131.4, 0
  br i1 %tobool23.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and131.5 = and i8 %104, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.5)
  %tobool23.not.5 = icmp eq i8 %and131.5, 0
  br i1 %tobool23.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and131.6 = and i8 %104, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and131.6)
  %tobool23.not.6 = icmp eq i8 %and131.6, 0
  br i1 %tobool23.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %tobool23.not.7 = icmp sgt i8 %104, -1
  %spec.select = select i1 %tobool23.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %i.1.lcssa = phi i32 [ 0, %if.end20.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %call26 = call fastcc i32 @atmel_lock_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end31, label %if.end36

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %dev_id) #20
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %126 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %host_info_base.i, align 8
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %129, i16 noundef zeroext %127) #17
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i149 = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %base_addr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base_addr.i.i149, align 32
  %add.i.i150 = add i32 %133, 8
  %and.i.i151 = and i32 %add.i.i150, 1048575
  %add1.i.i152 = or i32 %and.i.i151, -18874368
  %134 = inttoptr i32 %add1.i.i152 to ptr
  %135 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %134) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %arrayidx39 = getelementptr [8 x i8], ptr @service_interrupt.irq_order, i32 0, i32 %i.1.lcssa
  %136 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx39, align 1
  %xor130 = xor i8 %137, %135
  %138 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %host_info_base.i, align 8
  %140 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %141, i16 noundef zeroext %139) #17
  %142 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i155 = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %base_addr.i.i155 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %base_addr.i.i155, align 32
  %add.i.i156 = add i32 %145, 8
  %and.i.i157 = and i32 %add.i.i156, 1048575
  %add1.i.i158 = or i32 %and.i.i157, -18874368
  %146 = inttoptr i32 %add1.i.i158 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 %xor130) #17, !srcloc !312
  %147 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %host_info_base.i, align 8
  %add.i160 = add i16 %148, 3
  %149 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %150, i16 noundef zeroext %add.i160) #17
  %151 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i162 = getelementptr inbounds %struct.net_device, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %base_addr.i.i162 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %base_addr.i.i162, align 32
  %add.i.i163 = add i32 %154, 8
  %and.i.i164 = and i32 %add.i.i163, 1048575
  %add1.i.i165 = or i32 %and.i.i164, -18874368
  %155 = inttoptr i32 %add1.i.i165 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 0) #17, !srcloc !312
  %156 = zext i8 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %137, label %if.end36.sw.epilog_crit_edge [
    i8 32, label %sw.bb
    i8 4, label %sw.bb56
    i8 2, label %if.end36.sw.bb58_crit_edge
    i8 1, label %if.end36.for.cond.i179_crit_edge
    i8 8, label %do.end63
    i8 16, label %sw.bb68
    i8 64, label %sw.bb69
    i8 -128, label %do.end77
  ]

if.end36.for.cond.i179_crit_edge:                 ; preds = %if.end36
  br label %for.cond.i179

if.end36.sw.bb58_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb58

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  %157 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158)
  %cmp48 = icmp eq i32 %158, 2
  br i1 %cmp48, label %land.lhs.true50, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true50:                                  ; preds = %sw.bb
  %159 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %160)
  %cmp52 = icmp eq i32 %160, 4
  br i1 %cmp52, label %if.then54, label %land.lhs.true50.sw.epilog_crit_edge

land.lhs.true50.sw.epilog_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then54:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #19
  %161 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %station_is_associated64.i, align 8
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %162 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %misc, align 4
  %inc57 = add i32 %163, 1
  store i32 %inc57, ptr %misc, align 4
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %if.end36.sw.bb58_crit_edge
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i) #17
  %164 = call ptr @memset(ptr %header.i, i32 255, i32 30)
  br label %for.cond.i

for.cond.i:                                       ; preds = %next.i, %sw.bb58
  %i.0.i = phi i32 [ 0, %sw.bb58 ], [ %inc149.i, %next.i ]
  %165 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %rx_desc_head.i, align 4
  %167 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i.i = mul i16 %166, 20
  %add.i.i166 = add i16 %mul.i.i, 8
  %add3.i.i = add i16 %add.i.i166, %168
  %169 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %170, i16 noundef zeroext %add3.i.i) #17
  %171 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %174, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %175 = inttoptr i32 %add1.i.i.i to ptr
  %176 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %175) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %176)
  %cmp.i = icmp eq i8 %176, -128
  br i1 %cmp.i, label %land.rhs.i, label %for.cond.i.rx_done_irq.exit_crit_edge

for.cond.i.rx_done_irq.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rx_done_irq.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %177 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %rx_desc_count.i, align 2
  %conv3.i = zext i16 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv3.i)
  %cmp4.i = icmp ult i32 %i.0.i, %conv3.i
  br i1 %cmp4.i, label %for.body.i, label %land.rhs.i.rx_done_irq.exit_crit_edge

land.rhs.i.rx_done_irq.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rx_done_irq.exit

for.body.i:                                       ; preds = %land.rhs.i
  %179 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %rx_desc_head.i, align 4
  %181 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i229.i = mul i16 %180, 20
  %add.i230.i = add i16 %mul.i229.i, 9
  %add3.i231.i = add i16 %add.i230.i, %182
  %183 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %184, i16 noundef zeroext %add3.i231.i) #17
  %185 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i233.i = getelementptr inbounds %struct.net_device, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %base_addr.i.i233.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %base_addr.i.i233.i, align 32
  %add.i.i234.i = add i32 %188, 8
  %and.i.i235.i = and i32 %add.i.i234.i, 1048575
  %add1.i.i236.i = or i32 %and.i.i235.i, -18874368
  %189 = inttoptr i32 %add1.i.i236.i to ptr
  %190 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %189) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %191 = zext i8 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %190, label %if.else.i [
    i8 0, label %if.end17.i
    i8 -63, label %if.then15.i
  ]

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %192 = ptrtoint ptr %discard.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %discard.i, align 4
  %inc.i = add i32 %193, 1
  store i32 %inc.i, ptr %discard.i, align 4
  br label %next.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %194 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %195, i32 0, i32 36, i32 4
  %196 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rx_errors.i, align 8
  %inc16.i = add i32 %197, 1
  store i32 %inc16.i, ptr %rx_errors.i, align 8
  br label %next.i

if.end17.i:                                       ; preds = %for.body.i
  %198 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %rx_desc_head.i, align 4
  %200 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i238.i = mul i16 %199, 20
  %add.i239.i = add i16 %mul.i238.i, 6
  %add3.i240.i = add i16 %add.i239.i, %201
  %202 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %203, i16 noundef zeroext %add3.i240.i) #17
  %204 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i242.i = getelementptr inbounds %struct.net_device, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %base_addr.i.i242.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %base_addr.i.i242.i, align 32
  %add.i.i243.i = add i32 %207, 8
  %and.i.i244.i = and i32 %add.i.i243.i, 1048575
  %add1.i.i245.i = or i32 %and.i.i244.i, -18874368
  %208 = inttoptr i32 %add1.i.i245.i to ptr
  %209 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %208) #17, !srcloc !314
  %210 = call i16 @llvm.bswap.i16(i16 %209) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %211 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %rx_desc_head.i, align 4
  %213 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i247.i = mul i16 %212, 20
  %add.i248.i = add i16 %mul.i247.i, 4
  %add3.i249.i = add i16 %add.i248.i, %214
  %215 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %216, i16 noundef zeroext %add3.i249.i) #17
  %217 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i251.i = getelementptr inbounds %struct.net_device, ptr %218, i32 0, i32 5
  %219 = ptrtoint ptr %base_addr.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %base_addr.i.i251.i, align 32
  %add.i.i252.i = add i32 %220, 8
  %and.i.i253.i = and i32 %add.i.i252.i, 1048575
  %add1.i.i254.i = or i32 %and.i.i253.i, -18874368
  %221 = inttoptr i32 %add1.i.i254.i to ptr
  %222 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %221) #17, !srcloc !314
  %223 = call i16 @llvm.bswap.i16(i16 %222) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %210)
  %cmp25.i = icmp ult i16 %210, 30
  %224 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i, align 4
  br i1 %cmp25.i, label %if.then27.i, label %if.end32.i

if.then27.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  %rx_errors30.i = getelementptr inbounds %struct.net_device, ptr %225, i32 0, i32 36, i32 4
  %226 = ptrtoint ptr %rx_errors30.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_errors30.i, align 8
  %inc31.i = add i32 %227, 1
  store i32 %inc31.i, ptr %rx_errors30.i, align 8
  br label %next.i

if.end32.i:                                       ; preds = %if.end17.i
  call fastcc void @atmel_writeAR(ptr noundef %225, i16 noundef zeroext %223) #17
  %228 = and i16 %223, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool.not.i.i = icmp eq i16 %228, 0
  br i1 %tobool.not.i.i, label %if.end32.i.for.body.lr.ph.i.i_crit_edge, label %if.then.i.i

if.end32.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i.i

if.then.i.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i255.i = getelementptr inbounds %struct.net_device, ptr %225, i32 0, i32 5
  %229 = ptrtoint ptr %base_addr.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %base_addr.i.i255.i, align 32
  %add.i.i256.i = add i32 %230, 8
  %and.i.i257.i = and i32 %add.i.i256.i, 1048575
  %add1.i.i258.i = or i32 %and.i.i257.i, -18874368
  %231 = inttoptr i32 %add1.i.i258.i to ptr
  %232 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %231) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %233 = ptrtoint ptr %header.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %header.i, align 2
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i, %if.end32.i.for.body.lr.ph.i.i_crit_edge
  %len.addr.0.i.i = phi i32 [ 23, %if.then.i.i ], [ 24, %if.end32.i.for.body.lr.ph.i.i_crit_edge ]
  %dest.addr.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.then.i.i ], [ %header.i, %if.end32.i.for.body.lr.ph.i.i_crit_edge ]
  %base_addr.i25.i.i = getelementptr inbounds %struct.net_device, ptr %225, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dest.addr.135.i.i = phi ptr [ %dest.addr.0.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr8.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.034.i.i = phi i32 [ %len.addr.0.i.i, %for.body.lr.ph.i.i ], [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %234 = ptrtoint ptr %base_addr.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %base_addr.i25.i.i, align 32
  %add.i26.i.i = add i32 %235, 8
  %and.i27.i.i = and i32 %add.i26.i.i, 1048575
  %add1.i28.i.i = or i32 %and.i27.i.i, -18874368
  %236 = inttoptr i32 %add1.i28.i.i to ptr
  %237 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %236) #17, !srcloc !314
  %238 = call i16 @llvm.bswap.i16(i16 %237) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i = trunc i16 %238 to i8
  %incdec.ptr5.i.i = getelementptr i8, ptr %dest.addr.135.i.i, i32 1
  %239 = ptrtoint ptr %dest.addr.135.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv4.i.i, ptr %dest.addr.135.i.i, align 1
  %240 = lshr i16 %238, 8
  %conv7.i.i = trunc i16 %240 to i8
  %incdec.ptr8.i.i = getelementptr i8, ptr %dest.addr.135.i.i, i32 2
  %241 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv7.i.i, ptr %incdec.ptr5.i.i, align 1
  %sub.i.i = add nsw i32 %i.034.i.i, -2
  %cmp.i.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool9.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool9.not.i.i, label %for.end.i.i.atmel_copy_to_host.exit.i_crit_edge, label %if.then10.i.i

for.end.i.i.atmel_copy_to_host.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit.i

if.then10.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %242 = ptrtoint ptr %base_addr.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %base_addr.i25.i.i, align 32
  %add.i30.i.i = add i32 %243, 8
  %and.i31.i.i = and i32 %add.i30.i.i, 1048575
  %add1.i32.i.i = or i32 %and.i31.i.i, -18874368
  %244 = inttoptr i32 %add1.i32.i.i to ptr
  %245 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %244) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %246 = ptrtoint ptr %incdec.ptr8.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %incdec.ptr8.i.i, align 1
  br label %atmel_copy_to_host.exit.i

atmel_copy_to_host.exit.i:                        ; preds = %if.then10.i.i, %for.end.i.i.atmel_copy_to_host.exit.i_crit_edge
  %247 = ptrtoint ptr %header.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %header.i, align 2
  %249 = call i16 @llvm.bswap.i16(i16 %248) #17
  %250 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %25, align 2
  %252 = call i16 @llvm.bswap.i16(i16 %251) #17
  %253 = ptrtoint ptr %probe_crc.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %probe_crc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.not.i = icmp eq i32 %254, 0
  br i1 %tobool.not.i, label %atmel_copy_to_host.exit.i.if.end65.i_crit_edge, label %if.then34.i

atmel_copy_to_host.exit.i.if.end65.i_crit_edge:   ; preds = %atmel_copy_to_host.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

if.then34.i:                                      ; preds = %atmel_copy_to_host.exit.i
  %255 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool35.not.i = icmp eq i8 %256, 0
  %257 = and i16 %249, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool37.not.i = icmp eq i16 %257, 0
  %or.cond.i = select i1 %tobool35.not.i, i1 true, i1 %tobool37.not.i
  br i1 %or.cond.i, label %if.then38.i, label %if.else40.i

if.then38.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #19
  %call39.i = call fastcc i32 @probe_crc(ptr noundef %add.ptr.i, i16 noundef zeroext %223, i16 noundef zeroext %210) #17
  br label %if.end47.i

if.else40.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.i167 = add i16 %223, 24
  %sub.i = add i16 %210, -24
  %call45.i = call fastcc i32 @probe_crc(ptr noundef %add.ptr.i, i16 noundef zeroext %add.i167, i16 noundef zeroext %sub.i) #17
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else40.i, %if.then38.i
  %storemerge558.i = phi i32 [ %call45.i, %if.else40.i ], [ %call39.i, %if.then38.i ]
  %258 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %storemerge558.i, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge558.i)
  %tobool49.not.i = icmp eq i32 %storemerge558.i, 0
  br i1 %tobool49.not.i, label %if.else57.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end47.i
  %259 = ptrtoint ptr %crc_ok_cnt.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %crc_ok_cnt.i, align 4
  %inc51.i = add i32 %260, 1
  store i32 %inc51.i, ptr %crc_ok_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %260)
  %cmp52.i = icmp sgt i32 %260, 5
  br i1 %cmp52.i, label %if.then50.i.if.end65.sink.split.i_crit_edge, label %if.then50.i.if.end65.i_crit_edge

if.then50.i.if.end65.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

if.then50.i.if.end65.sink.split.i_crit_edge:      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.sink.split.i

if.else57.i:                                      ; preds = %if.end47.i
  %261 = ptrtoint ptr %crc_ko_cnt.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %crc_ko_cnt.i, align 8
  %inc58.i = add i32 %262, 1
  store i32 %inc58.i, ptr %crc_ko_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %262)
  %cmp59.i = icmp sgt i32 %262, 5
  br i1 %cmp59.i, label %if.else57.i.if.end65.sink.split.i_crit_edge, label %if.else57.i.if.end65.i_crit_edge

if.else57.i.if.end65.i_crit_edge:                 ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

if.else57.i.if.end65.sink.split.i_crit_edge:      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.sink.split.i

if.end65.sink.split.i:                            ; preds = %if.else57.i.if.end65.sink.split.i_crit_edge, %if.then50.i.if.end65.sink.split.i_crit_edge
  %263 = ptrtoint ptr %probe_crc.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %probe_crc.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end65.sink.split.i, %if.else57.i.if.end65.i_crit_edge, %if.then50.i.if.end65.i_crit_edge, %atmel_copy_to_host.exit.i.if.end65.i_crit_edge
  %264 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool67.not.i = icmp eq i32 %265, 0
  br i1 %tobool67.not.i, label %if.end65.i.if.end76.i_crit_edge, label %land.lhs.true.i

if.end65.i.if.end76.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %266 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool69.not.i = icmp eq i8 %267, 0
  %268 = and i16 %249, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %268)
  %tobool73.not.i = icmp eq i16 %268, 0
  %or.cond226.i = select i1 %tobool69.not.i, i1 true, i1 %tobool73.not.i
  br i1 %or.cond226.i, label %if.then74.i, label %land.lhs.true.i.if.end76.i_crit_edge

land.lhs.true.i.if.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76.i

if.then74.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %call75.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %header.i, i32 noundef 24) #21
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then74.i, %land.lhs.true.i.if.end76.i_crit_edge, %if.end65.i.if.end76.i_crit_edge
  %crc.0.i = phi i32 [ %call75.i, %if.then74.i ], [ -1, %if.end65.i.if.end76.i_crit_edge ], [ -1, %land.lhs.true.i.if.end76.i_crit_edge ]
  %sub78.i = add i16 %210, -24
  %conv80.i = zext i16 %249 to i32
  %and81.i = and i32 %conv80.i, 12
  %269 = zext i32 %and81.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %269, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %and81.i, label %if.end76.i.next.i_crit_edge [
    i32 8, label %if.then84.i
    i32 0, label %if.then106.i
  ]

if.end76.i.next.i_crit_edge:                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then84.i:                                      ; preds = %if.end76.i
  %and86.i = and i32 %conv80.i, 1024
  %270 = trunc i16 %252 to i8
  %conv89.i = and i8 %270, 15
  %271 = lshr i16 %252, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool93.not.i = icmp eq i32 %and86.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv89.i)
  %cmp96.i = icmp eq i8 %conv89.i, 0
  %or.cond227.i = select i1 %tobool93.not.i, i1 %cmp96.i, i1 false
  br i1 %or.cond227.i, label %if.then98.i, label %if.else99.i

if.then98.i:                                      ; preds = %if.then84.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac4.i.i) #17
  %272 = call ptr @memset(ptr %mac4.i.i, i32 255, i32 6)
  %273 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i, align 4
  %add.i260.i = add i16 %223, 24
  call fastcc void @atmel_writeAR(ptr noundef %274, i16 noundef zeroext %add.i260.i) #17
  br i1 %tobool.not.i.i, label %if.then98.i.for.body.lr.ph.i.i.i_crit_edge, label %if.then.i.i.i

if.then98.i.for.body.lr.ph.i.i.i_crit_edge:       ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i.i.i

if.then.i.i.i:                                    ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %274, i32 0, i32 5
  %275 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %base_addr.i.i.i.i, align 32
  %add.i.i.i.i = add i32 %276, 8
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %277 = inttoptr i32 %add1.i.i.i.i to ptr
  %278 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %277) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %279 = ptrtoint ptr %mac4.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %mac4.i.i, align 1
  br label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i.i.i, %if.then98.i.for.body.lr.ph.i.i.i_crit_edge
  %len.addr.0.i.i.i = phi i32 [ -1, %if.then.i.i.i ], [ 0, %if.then98.i.for.body.lr.ph.i.i.i_crit_edge ]
  %dest.addr.0.i.i.i = phi ptr [ %27, %if.then.i.i.i ], [ %mac4.i.i, %if.then98.i.for.body.lr.ph.i.i.i_crit_edge ]
  %base_addr.i25.i.i.i = getelementptr inbounds %struct.net_device, ptr %274, i32 0, i32 5
  %280 = ptrtoint ptr %base_addr.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %base_addr.i25.i.i.i, align 32
  %add.i26.i.i.i = add i32 %281, 8
  %and.i27.i.i.i = and i32 %add.i26.i.i.i, 1048575
  %add1.i28.i.i.i = or i32 %and.i27.i.i.i, -18874368
  %282 = inttoptr i32 %add1.i28.i.i.i to ptr
  %283 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %282) #17, !srcloc !314
  %284 = call i16 @llvm.bswap.i16(i16 %283) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i.i = trunc i16 %284 to i8
  %incdec.ptr5.i.i.i = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 1
  %285 = ptrtoint ptr %dest.addr.0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv4.i.i.i, ptr %dest.addr.0.i.i.i, align 1
  %286 = lshr i16 %284, 8
  %conv7.i.i.i = trunc i16 %286 to i8
  %incdec.ptr8.i.i.i = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 2
  %287 = ptrtoint ptr %incdec.ptr5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv7.i.i.i, ptr %incdec.ptr5.i.i.i, align 1
  %288 = ptrtoint ptr %base_addr.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %base_addr.i25.i.i.i, align 32
  %add.i26.i.i.i.1 = add i32 %289, 8
  %and.i27.i.i.i.1 = and i32 %add.i26.i.i.i.1, 1048575
  %add1.i28.i.i.i.1 = or i32 %and.i27.i.i.i.1, -18874368
  %290 = inttoptr i32 %add1.i28.i.i.i.1 to ptr
  %291 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %290) #17, !srcloc !314
  %292 = call i16 @llvm.bswap.i16(i16 %291) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i.i.1 = trunc i16 %292 to i8
  %incdec.ptr5.i.i.i.1 = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 3
  %293 = ptrtoint ptr %incdec.ptr8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv4.i.i.i.1, ptr %incdec.ptr8.i.i.i, align 1
  %294 = lshr i16 %292, 8
  %conv7.i.i.i.1 = trunc i16 %294 to i8
  %incdec.ptr8.i.i.i.1 = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 4
  %295 = ptrtoint ptr %incdec.ptr5.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv7.i.i.i.1, ptr %incdec.ptr5.i.i.i.1, align 1
  br i1 %tobool.not.i.i, label %for.body.i.i.i.2, label %for.body.lr.ph.i.i.i.for.end.i.i.i_crit_edge

for.body.lr.ph.i.i.i.for.end.i.i.i_crit_edge:     ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i.i

for.body.i.i.i.2:                                 ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %296 = ptrtoint ptr %base_addr.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %base_addr.i25.i.i.i, align 32
  %add.i26.i.i.i.2 = add i32 %297, 8
  %and.i27.i.i.i.2 = and i32 %add.i26.i.i.i.2, 1048575
  %add1.i28.i.i.i.2 = or i32 %and.i27.i.i.i.2, -18874368
  %298 = inttoptr i32 %add1.i28.i.i.i.2 to ptr
  %299 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %298) #17, !srcloc !314
  %300 = call i16 @llvm.bswap.i16(i16 %299) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i.i.2 = trunc i16 %300 to i8
  %incdec.ptr5.i.i.i.2 = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 5
  %301 = ptrtoint ptr %incdec.ptr8.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv4.i.i.i.2, ptr %incdec.ptr8.i.i.i.1, align 1
  %302 = lshr i16 %300, 8
  %conv7.i.i.i.2 = trunc i16 %302 to i8
  %incdec.ptr8.i.i.i.2 = getelementptr i8, ptr %dest.addr.0.i.i.i, i32 6
  %303 = ptrtoint ptr %incdec.ptr5.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv7.i.i.i.2, ptr %incdec.ptr5.i.i.i.2, align 1
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.2, %for.body.lr.ph.i.i.i.for.end.i.i.i_crit_edge
  %incdec.ptr8.i.i.i.lcssa = phi ptr [ %incdec.ptr8.i.i.i.1, %for.body.lr.ph.i.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr8.i.i.i.2, %for.body.i.i.i.2 ]
  %sub.i.i.i.lcssa = phi i32 [ 1, %for.body.lr.ph.i.i.i.for.end.i.i.i_crit_edge ], [ %len.addr.0.i.i.i, %for.body.i.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.lcssa)
  %tobool9.not.i.i.i = icmp eq i32 %sub.i.i.i.lcssa, 0
  br i1 %tobool9.not.i.i.i, label %for.end.i.i.i.atmel_copy_to_host.exit.i.i_crit_edge, label %if.then10.i.i.i

for.end.i.i.i.atmel_copy_to_host.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit.i.i

if.then10.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %304 = ptrtoint ptr %base_addr.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %base_addr.i25.i.i.i, align 32
  %add.i30.i.i.i = add i32 %305, 8
  %and.i31.i.i.i = and i32 %add.i30.i.i.i, 1048575
  %add1.i32.i.i.i = or i32 %and.i31.i.i.i, -18874368
  %306 = inttoptr i32 %add1.i32.i.i.i to ptr
  %307 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %306) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %308 = ptrtoint ptr %incdec.ptr8.i.i.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %incdec.ptr8.i.i.i.lcssa, align 1
  br label %atmel_copy_to_host.exit.i.i

atmel_copy_to_host.exit.i.i:                      ; preds = %if.then10.i.i.i, %for.end.i.i.i.atmel_copy_to_host.exit.i.i_crit_edge
  %sub.i261.i = add i16 %210, -30
  %309 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.i262.i = icmp eq i32 %310, 0
  br i1 %tobool.not.i262.i, label %atmel_copy_to_host.exit.i.i.if.end.i264.i_crit_edge, label %if.then.i263.i

atmel_copy_to_host.exit.i.i.if.end.i264.i_crit_edge: ; preds = %atmel_copy_to_host.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i264.i

if.then.i263.i:                                   ; preds = %atmel_copy_to_host.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = call i32 @crc32_le(i32 noundef %crc.0.i, ptr noundef nonnull %mac4.i.i, i32 noundef 6) #21
  %sub6.i.i = add i16 %210, -34
  br label %if.end.i264.i

if.end.i264.i:                                    ; preds = %if.then.i263.i, %atmel_copy_to_host.exit.i.i.if.end.i264.i_crit_edge
  %msdu_size.addr.0.i.i = phi i16 [ %sub6.i.i, %if.then.i263.i ], [ %sub.i261.i, %atmel_copy_to_host.exit.i.i.if.end.i264.i_crit_edge ]
  %crc.addr.0.i.i = phi i32 [ %call.i.i, %if.then.i263.i ], [ %crc.0.i, %atmel_copy_to_host.exit.i.i.if.end.i264.i_crit_edge ]
  %conv8.i.i = zext i16 %msdu_size.addr.0.i.i to i32
  %add9.i.i = add nuw nsw i32 %conv8.i.i, 14
  %call.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add9.i.i, i32 noundef 2592) #17
  %tobool11.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end.i264.i
  call void @__sanitizer_cov_trace_pc() #19
  %311 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev.i, align 4
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %312, i32 0, i32 36, i32 6
  %313 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %rx_dropped.i.i, align 8
  %inc.i.i = add i32 %314, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 8
  br label %fast_rx_path.exit.i

if.end14.i.i:                                     ; preds = %if.end.i264.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %315 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %316, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %317 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %318, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %add16.i.i = add nuw nsw i32 %conv8.i.i, 12
  %call17.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %add16.i.i) #17
  %319 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call17.i.i, i32 12
  %add20.i.i = add i16 %223, 30
  call fastcc void @atmel_writeAR(ptr noundef %320, i16 noundef zeroext %add20.i.i) #17
  br i1 %tobool.not.i.i, label %if.end14.i.i.if.end.i109.i.i_crit_edge, label %if.then.i104.i.i

if.end14.i.i.if.end.i109.i.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i109.i.i

if.then.i104.i.i:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i99.i.i = getelementptr inbounds %struct.net_device, ptr %320, i32 0, i32 5
  %321 = ptrtoint ptr %base_addr.i.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %base_addr.i.i99.i.i, align 32
  %add.i.i100.i.i = add i32 %322, 8
  %and.i.i101.i.i = and i32 %add.i.i100.i.i, 1048575
  %add1.i.i102.i.i = or i32 %and.i.i101.i.i, -18874368
  %323 = inttoptr i32 %add1.i.i102.i.i to ptr
  %324 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %323) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %325 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %324, ptr %add.ptr.i.i, align 1
  %incdec.ptr.i103.i.i = getelementptr i8, ptr %call17.i.i, i32 13
  %dec.i.i.i = add i16 %msdu_size.addr.0.i.i, -1
  %.pre.i.i = zext i16 %dec.i.i.i to i32
  br label %if.end.i109.i.i

if.end.i109.i.i:                                  ; preds = %if.then.i104.i.i, %if.end14.i.i.if.end.i109.i.i_crit_edge
  %conv1.i107.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.then.i104.i.i ], [ %conv8.i.i, %if.end14.i.i.if.end.i109.i.i_crit_edge ]
  %len.addr.0.i105.i.i = phi i16 [ %dec.i.i.i, %if.then.i104.i.i ], [ %msdu_size.addr.0.i.i, %if.end14.i.i.if.end.i109.i.i_crit_edge ]
  %dest.addr.0.i106.i.i = phi ptr [ %incdec.ptr.i103.i.i, %if.then.i104.i.i ], [ %add.ptr.i.i, %if.end14.i.i.if.end.i109.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len.addr.0.i105.i.i)
  %cmp33.i108.i.i = icmp ugt i16 %len.addr.0.i105.i.i, 1
  br i1 %cmp33.i108.i.i, label %for.body.lr.ph.i111.i.i, label %if.end.i109.i.i.for.end.i127.i.i_crit_edge

if.end.i109.i.i.for.end.i127.i.i_crit_edge:       ; preds = %if.end.i109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i127.i.i

for.body.lr.ph.i111.i.i:                          ; preds = %if.end.i109.i.i
  %base_addr.i25.i110.i.i = getelementptr inbounds %struct.net_device, ptr %320, i32 0, i32 5
  br label %for.body.i123.i.i

for.body.i123.i.i:                                ; preds = %for.body.i123.i.i.for.body.i123.i.i_crit_edge, %for.body.lr.ph.i111.i.i
  %dest.addr.135.i112.i.i = phi ptr [ %dest.addr.0.i106.i.i, %for.body.lr.ph.i111.i.i ], [ %incdec.ptr8.i120.i.i, %for.body.i123.i.i.for.body.i123.i.i_crit_edge ]
  %i.034.i113.i.i = phi i32 [ %conv1.i107.pre-phi.i.i, %for.body.lr.ph.i111.i.i ], [ %sub.i121.i.i, %for.body.i123.i.i.for.body.i123.i.i_crit_edge ]
  %326 = ptrtoint ptr %base_addr.i25.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %base_addr.i25.i110.i.i, align 32
  %add.i26.i114.i.i = add i32 %327, 8
  %and.i27.i115.i.i = and i32 %add.i26.i114.i.i, 1048575
  %add1.i28.i116.i.i = or i32 %and.i27.i115.i.i, -18874368
  %328 = inttoptr i32 %add1.i28.i116.i.i to ptr
  %329 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %328) #17, !srcloc !314
  %330 = call i16 @llvm.bswap.i16(i16 %329) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i117.i.i = trunc i16 %330 to i8
  %incdec.ptr5.i118.i.i = getelementptr i8, ptr %dest.addr.135.i112.i.i, i32 1
  %331 = ptrtoint ptr %dest.addr.135.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %conv4.i117.i.i, ptr %dest.addr.135.i112.i.i, align 1
  %332 = lshr i16 %330, 8
  %conv7.i119.i.i = trunc i16 %332 to i8
  %incdec.ptr8.i120.i.i = getelementptr i8, ptr %dest.addr.135.i112.i.i, i32 2
  %333 = ptrtoint ptr %incdec.ptr5.i118.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %conv7.i119.i.i, ptr %incdec.ptr5.i118.i.i, align 1
  %sub.i121.i.i = add nsw i32 %i.034.i113.i.i, -2
  %cmp.i122.i.i = icmp ugt i32 %sub.i121.i.i, 1
  br i1 %cmp.i122.i.i, label %for.body.i123.i.i.for.body.i123.i.i_crit_edge, label %for.body.i123.i.i.for.end.i127.i.i_crit_edge

for.body.i123.i.i.for.end.i127.i.i_crit_edge:     ; preds = %for.body.i123.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i127.i.i

for.body.i123.i.i.for.body.i123.i.i_crit_edge:    ; preds = %for.body.i123.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i123.i.i

for.end.i127.i.i:                                 ; preds = %for.body.i123.i.i.for.end.i127.i.i_crit_edge, %if.end.i109.i.i.for.end.i127.i.i_crit_edge
  %i.0.lcssa.i124.i.i = phi i32 [ %conv1.i107.pre-phi.i.i, %if.end.i109.i.i.for.end.i127.i.i_crit_edge ], [ %sub.i121.i.i, %for.body.i123.i.i.for.end.i127.i.i_crit_edge ]
  %dest.addr.1.lcssa.i125.i.i = phi ptr [ %dest.addr.0.i106.i.i, %if.end.i109.i.i.for.end.i127.i.i_crit_edge ], [ %incdec.ptr8.i120.i.i, %for.body.i123.i.i.for.end.i127.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i124.i.i)
  %tobool9.not.i126.i.i = icmp eq i32 %i.0.lcssa.i124.i.i, 0
  br i1 %tobool9.not.i126.i.i, label %for.end.i127.i.i.atmel_copy_to_host.exit133.i.i_crit_edge, label %if.then10.i132.i.i

for.end.i127.i.i.atmel_copy_to_host.exit133.i.i_crit_edge: ; preds = %for.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit133.i.i

if.then10.i132.i.i:                               ; preds = %for.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i29.i128.i.i = getelementptr inbounds %struct.net_device, ptr %320, i32 0, i32 5
  %334 = ptrtoint ptr %base_addr.i29.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %base_addr.i29.i128.i.i, align 32
  %add.i30.i129.i.i = add i32 %335, 8
  %and.i31.i130.i.i = and i32 %add.i30.i129.i.i, 1048575
  %add1.i32.i131.i.i = or i32 %and.i31.i130.i.i, -18874368
  %336 = inttoptr i32 %add1.i32.i131.i.i to ptr
  %337 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %336) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %338 = ptrtoint ptr %dest.addr.1.lcssa.i125.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %dest.addr.1.lcssa.i125.i.i, align 1
  br label %atmel_copy_to_host.exit133.i.i

atmel_copy_to_host.exit133.i.i:                   ; preds = %if.then10.i132.i.i, %for.end.i127.i.i.atmel_copy_to_host.exit133.i.i_crit_edge
  %339 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool23.not.i.i = icmp eq i32 %340, 0
  br i1 %tobool23.not.i.i, label %atmel_copy_to_host.exit133.i.i.if.end40.i.i_crit_edge, label %if.then24.i.i

atmel_copy_to_host.exit133.i.i.if.end40.i.i_crit_edge: ; preds = %atmel_copy_to_host.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40.i.i

if.then24.i.i:                                    ; preds = %atmel_copy_to_host.exit133.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netcrc.i.i) #17
  %341 = ptrtoint ptr %netcrc.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 -1, ptr %netcrc.i.i, align 4, !annotation !321
  %call27.i.i = call i32 @crc32_le(i32 noundef %crc.addr.0.i.i, ptr noundef %add.ptr.i.i, i32 noundef %conv8.i.i) #21
  %342 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev.i, align 4
  %conv33.i.i = add i16 %msdu_size.addr.0.i.i, %add20.i.i
  call fastcc void @atmel_writeAR(ptr noundef %343, i16 noundef zeroext %conv33.i.i) #17
  %344 = and i16 %conv33.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %344)
  %tobool.not.i134.i.i = icmp eq i16 %344, 0
  br i1 %tobool.not.i134.i.i, label %if.then24.i.i.for.body.lr.ph.i147.i.i_crit_edge, label %if.then.i140.i.i

if.then24.i.i.for.body.lr.ph.i147.i.i_crit_edge:  ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i147.i.i

if.then.i140.i.i:                                 ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i135.i.i = getelementptr inbounds %struct.net_device, ptr %343, i32 0, i32 5
  %345 = ptrtoint ptr %base_addr.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %base_addr.i.i135.i.i, align 32
  %add.i.i136.i.i = add i32 %346, 8
  %and.i.i137.i.i = and i32 %add.i.i136.i.i, 1048575
  %add1.i.i138.i.i = or i32 %and.i.i137.i.i, -18874368
  %347 = inttoptr i32 %add1.i.i138.i.i to ptr
  %348 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %347) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %349 = ptrtoint ptr %netcrc.i.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %348, ptr %netcrc.i.i, align 4
  br label %for.body.lr.ph.i147.i.i

for.body.lr.ph.i147.i.i:                          ; preds = %if.then.i140.i.i, %if.then24.i.i.for.body.lr.ph.i147.i.i_crit_edge
  %len.addr.0.i141.i.i = phi i32 [ -1, %if.then.i140.i.i ], [ 0, %if.then24.i.i.for.body.lr.ph.i147.i.i_crit_edge ]
  %dest.addr.0.i142.i.i = phi ptr [ %incdec.ptr.i139.i.i, %if.then.i140.i.i ], [ %netcrc.i.i, %if.then24.i.i.for.body.lr.ph.i147.i.i_crit_edge ]
  %base_addr.i25.i146.i.i = getelementptr inbounds %struct.net_device, ptr %343, i32 0, i32 5
  %350 = ptrtoint ptr %base_addr.i25.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %base_addr.i25.i146.i.i, align 32
  %add.i26.i150.i.i = add i32 %351, 8
  %and.i27.i151.i.i = and i32 %add.i26.i150.i.i, 1048575
  %add1.i28.i152.i.i = or i32 %and.i27.i151.i.i, -18874368
  %352 = inttoptr i32 %add1.i28.i152.i.i to ptr
  %353 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %352) #17, !srcloc !314
  %354 = call i16 @llvm.bswap.i16(i16 %353) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i153.i.i = trunc i16 %354 to i8
  %incdec.ptr5.i154.i.i = getelementptr i8, ptr %dest.addr.0.i142.i.i, i32 1
  %355 = ptrtoint ptr %dest.addr.0.i142.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %conv4.i153.i.i, ptr %dest.addr.0.i142.i.i, align 1
  %356 = lshr i16 %354, 8
  %conv7.i155.i.i = trunc i16 %356 to i8
  %incdec.ptr8.i156.i.i = getelementptr i8, ptr %dest.addr.0.i142.i.i, i32 2
  %357 = ptrtoint ptr %incdec.ptr5.i154.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %conv7.i155.i.i, ptr %incdec.ptr5.i154.i.i, align 1
  br i1 %tobool.not.i134.i.i, label %for.body.i159.i.i.1, label %for.body.lr.ph.i147.i.i.for.end.i163.i.i_crit_edge

for.body.lr.ph.i147.i.i.for.end.i163.i.i_crit_edge: ; preds = %for.body.lr.ph.i147.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i163.i.i

for.body.i159.i.i.1:                              ; preds = %for.body.lr.ph.i147.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %358 = ptrtoint ptr %base_addr.i25.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %base_addr.i25.i146.i.i, align 32
  %add.i26.i150.i.i.1 = add i32 %359, 8
  %and.i27.i151.i.i.1 = and i32 %add.i26.i150.i.i.1, 1048575
  %add1.i28.i152.i.i.1 = or i32 %and.i27.i151.i.i.1, -18874368
  %360 = inttoptr i32 %add1.i28.i152.i.i.1 to ptr
  %361 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %360) #17, !srcloc !314
  %362 = call i16 @llvm.bswap.i16(i16 %361) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i153.i.i.1 = trunc i16 %362 to i8
  %incdec.ptr5.i154.i.i.1 = getelementptr i8, ptr %dest.addr.0.i142.i.i, i32 3
  %363 = ptrtoint ptr %incdec.ptr8.i156.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %conv4.i153.i.i.1, ptr %incdec.ptr8.i156.i.i, align 1
  %364 = lshr i16 %362, 8
  %conv7.i155.i.i.1 = trunc i16 %364 to i8
  %incdec.ptr8.i156.i.i.1 = getelementptr i8, ptr %dest.addr.0.i142.i.i, i32 4
  %365 = ptrtoint ptr %incdec.ptr5.i154.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %conv7.i155.i.i.1, ptr %incdec.ptr5.i154.i.i.1, align 1
  br label %for.end.i163.i.i

for.end.i163.i.i:                                 ; preds = %for.body.i159.i.i.1, %for.body.lr.ph.i147.i.i.for.end.i163.i.i_crit_edge
  %incdec.ptr8.i156.i.i.lcssa = phi ptr [ %incdec.ptr8.i156.i.i, %for.body.lr.ph.i147.i.i.for.end.i163.i.i_crit_edge ], [ %incdec.ptr8.i156.i.i.1, %for.body.i159.i.i.1 ]
  %sub.i157.i.i.lcssa = phi i32 [ 1, %for.body.lr.ph.i147.i.i.for.end.i163.i.i_crit_edge ], [ %len.addr.0.i141.i.i, %for.body.i159.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i157.i.i.lcssa)
  %tobool9.not.i162.i.i = icmp eq i32 %sub.i157.i.i.lcssa, 0
  br i1 %tobool9.not.i162.i.i, label %for.end.i163.i.i.atmel_copy_to_host.exit169.i.i_crit_edge, label %if.then10.i168.i.i

for.end.i163.i.i.atmel_copy_to_host.exit169.i.i_crit_edge: ; preds = %for.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit169.i.i

if.then10.i168.i.i:                               ; preds = %for.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %366 = ptrtoint ptr %base_addr.i25.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %base_addr.i25.i146.i.i, align 32
  %add.i30.i165.i.i = add i32 %367, 8
  %and.i31.i166.i.i = and i32 %add.i30.i165.i.i, 1048575
  %add1.i32.i167.i.i = or i32 %and.i31.i166.i.i, -18874368
  %368 = inttoptr i32 %add1.i32.i167.i.i to ptr
  %369 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %368) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %370 = ptrtoint ptr %incdec.ptr8.i156.i.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %369, ptr %incdec.ptr8.i156.i.i.lcssa, align 1
  br label %atmel_copy_to_host.exit169.i.i

atmel_copy_to_host.exit169.i.i:                   ; preds = %if.then10.i168.i.i, %for.end.i163.i.i.atmel_copy_to_host.exit169.i.i_crit_edge
  %xor.i.i = xor i32 %call27.i.i, -1
  %371 = ptrtoint ptr %netcrc.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %netcrc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %372, i32 %xor.i.i)
  %cmp.not.i.i = icmp eq i32 %372, %xor.i.i
  br i1 %cmp.not.i.i, label %if.end40.critedge.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %atmel_copy_to_host.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %373 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev.i, align 4
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %374, i32 0, i32 36, i32 12
  %375 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc38.i.i = add i32 %376, 1
  store i32 %inc38.i.i, ptr %rx_crc_errors.i.i, align 8
  call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netcrc.i.i) #17
  br label %fast_rx_path.exit.i

if.end40.critedge.i.i:                            ; preds = %atmel_copy_to_host.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netcrc.i.i) #17
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end40.critedge.i.i, %atmel_copy_to_host.exit133.i.i.if.end40.i.i_crit_edge
  %377 = call ptr @memcpy(ptr %call17.i.i, ptr %22, i32 6)
  %378 = ptrtoint ptr %header.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %header.i, align 2
  %380 = and i16 %379, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %380)
  %tobool43.not.i.i = icmp eq i16 %380, 0
  %arrayidx46.i.i = getelementptr i8, ptr %call17.i.i, i32 6
  %addr2.sink.i.i = select i1 %tobool43.not.i.i, ptr %23, ptr %24
  %381 = call ptr @memcpy(ptr %arrayidx46.i.i, ptr %addr2.sink.i.i, i32 6)
  %382 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev.i, align 4
  %call50.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i.i, ptr noundef %383) #17
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %384 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %call50.i.i, ptr %protocol.i.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15
  %385 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  store i16 %bf.clear.i.i, ptr %ip_summed.i.i, align 8
  %call51.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i.i) #17
  %386 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dev.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %387, i32 0, i32 36, i32 2
  %388 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %rx_bytes.i.i, align 8
  %add56.i.i = add i32 %389, %add16.i.i
  store i32 %add56.i.i, ptr %rx_bytes.i.i, align 8
  %390 = load ptr, ptr %dev.i, align 4
  %stats58.i.i = getelementptr inbounds %struct.net_device, ptr %390, i32 0, i32 36
  %391 = ptrtoint ptr %stats58.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %stats58.i.i, align 8
  %inc59.i.i = add i32 %392, 1
  store i32 %inc59.i.i, ptr %stats58.i.i, align 8
  br label %fast_rx_path.exit.i

fast_rx_path.exit.i:                              ; preds = %if.end40.i.i, %if.then35.i.i, %if.then12.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac4.i.i) #17
  br label %next.i

if.else99.i:                                      ; preds = %if.then84.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac4.i265.i) #17
  %393 = call ptr @memset(ptr %mac4.i265.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %source.i.i) #17
  %394 = ptrtoint ptr %header.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %header.i, align 2
  %396 = and i16 %395, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %396)
  %tobool.not.i267.i = icmp eq i16 %396, 0
  %addr2.sink.i270.i = select i1 %tobool.not.i267.i, ptr %23, ptr %24
  %397 = call ptr @memcpy(ptr %source.i.i, ptr %addr2.sink.i270.i, i32 6)
  %add.i271.i = add i16 %223, 24
  %sub.i273.i = add i16 %210, -28
  %spec.select.i.i = select i1 %tobool67.not.i, i16 %sub78.i, i16 %sub.i273.i
  br i1 %cmp96.i, label %if.then13.i.i, label %if.else56.i.i

if.then13.i.i:                                    ; preds = %if.else99.i
  %398 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %399, i16 noundef zeroext %add.i271.i) #17
  br i1 %tobool.not.i.i, label %if.then13.i.i.for.body.lr.ph.i.i285.i_crit_edge, label %if.then.i.i281.i

if.then13.i.i.for.body.lr.ph.i.i285.i_crit_edge:  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i.i285.i

if.then.i.i281.i:                                 ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i.i277.i = getelementptr inbounds %struct.net_device, ptr %399, i32 0, i32 5
  %400 = ptrtoint ptr %base_addr.i.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %base_addr.i.i.i277.i, align 32
  %add.i.i.i278.i = add i32 %401, 8
  %and.i.i.i279.i = and i32 %add.i.i.i278.i, 1048575
  %add1.i.i.i280.i = or i32 %and.i.i.i279.i, -18874368
  %402 = inttoptr i32 %add1.i.i.i280.i to ptr
  %403 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %402) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %404 = ptrtoint ptr %mac4.i265.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %mac4.i265.i, align 1
  br label %for.body.lr.ph.i.i285.i

for.body.lr.ph.i.i285.i:                          ; preds = %if.then.i.i281.i, %if.then13.i.i.for.body.lr.ph.i.i285.i_crit_edge
  %len.addr.0.i.i282.i = phi i32 [ -1, %if.then.i.i281.i ], [ 0, %if.then13.i.i.for.body.lr.ph.i.i285.i_crit_edge ]
  %dest.addr.0.i.i283.i = phi ptr [ %26, %if.then.i.i281.i ], [ %mac4.i265.i, %if.then13.i.i.for.body.lr.ph.i.i285.i_crit_edge ]
  %base_addr.i25.i.i284.i = getelementptr inbounds %struct.net_device, ptr %399, i32 0, i32 5
  %405 = ptrtoint ptr %base_addr.i25.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %base_addr.i25.i.i284.i, align 32
  %add.i26.i.i288.i = add i32 %406, 8
  %and.i27.i.i289.i = and i32 %add.i26.i.i288.i, 1048575
  %add1.i28.i.i290.i = or i32 %and.i27.i.i289.i, -18874368
  %407 = inttoptr i32 %add1.i28.i.i290.i to ptr
  %408 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %407) #17, !srcloc !314
  %409 = call i16 @llvm.bswap.i16(i16 %408) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i291.i = trunc i16 %409 to i8
  %incdec.ptr5.i.i292.i = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 1
  %410 = ptrtoint ptr %dest.addr.0.i.i283.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %conv4.i.i291.i, ptr %dest.addr.0.i.i283.i, align 1
  %411 = lshr i16 %409, 8
  %conv7.i.i293.i = trunc i16 %411 to i8
  %incdec.ptr8.i.i294.i = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 2
  %412 = ptrtoint ptr %incdec.ptr5.i.i292.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %conv7.i.i293.i, ptr %incdec.ptr5.i.i292.i, align 1
  %413 = ptrtoint ptr %base_addr.i25.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %base_addr.i25.i.i284.i, align 32
  %add.i26.i.i288.i.1 = add i32 %414, 8
  %and.i27.i.i289.i.1 = and i32 %add.i26.i.i288.i.1, 1048575
  %add1.i28.i.i290.i.1 = or i32 %and.i27.i.i289.i.1, -18874368
  %415 = inttoptr i32 %add1.i28.i.i290.i.1 to ptr
  %416 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %415) #17, !srcloc !314
  %417 = call i16 @llvm.bswap.i16(i16 %416) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i291.i.1 = trunc i16 %417 to i8
  %incdec.ptr5.i.i292.i.1 = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 3
  %418 = ptrtoint ptr %incdec.ptr8.i.i294.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %conv4.i.i291.i.1, ptr %incdec.ptr8.i.i294.i, align 1
  %419 = lshr i16 %417, 8
  %conv7.i.i293.i.1 = trunc i16 %419 to i8
  %incdec.ptr8.i.i294.i.1 = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 4
  %420 = ptrtoint ptr %incdec.ptr5.i.i292.i.1 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %conv7.i.i293.i.1, ptr %incdec.ptr5.i.i292.i.1, align 1
  br i1 %tobool.not.i.i, label %for.body.i.i297.i.2, label %for.body.lr.ph.i.i285.i.for.end.i.i299.i_crit_edge

for.body.lr.ph.i.i285.i.for.end.i.i299.i_crit_edge: ; preds = %for.body.lr.ph.i.i285.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i299.i

for.body.i.i297.i.2:                              ; preds = %for.body.lr.ph.i.i285.i
  call void @__sanitizer_cov_trace_pc() #19
  %421 = ptrtoint ptr %base_addr.i25.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %base_addr.i25.i.i284.i, align 32
  %add.i26.i.i288.i.2 = add i32 %422, 8
  %and.i27.i.i289.i.2 = and i32 %add.i26.i.i288.i.2, 1048575
  %add1.i28.i.i290.i.2 = or i32 %and.i27.i.i289.i.2, -18874368
  %423 = inttoptr i32 %add1.i28.i.i290.i.2 to ptr
  %424 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %423) #17, !srcloc !314
  %425 = call i16 @llvm.bswap.i16(i16 %424) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.i291.i.2 = trunc i16 %425 to i8
  %incdec.ptr5.i.i292.i.2 = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 5
  %426 = ptrtoint ptr %incdec.ptr8.i.i294.i.1 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %conv4.i.i291.i.2, ptr %incdec.ptr8.i.i294.i.1, align 1
  %427 = lshr i16 %425, 8
  %conv7.i.i293.i.2 = trunc i16 %427 to i8
  %incdec.ptr8.i.i294.i.2 = getelementptr i8, ptr %dest.addr.0.i.i283.i, i32 6
  %428 = ptrtoint ptr %incdec.ptr5.i.i292.i.2 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %conv7.i.i293.i.2, ptr %incdec.ptr5.i.i292.i.2, align 1
  br label %for.end.i.i299.i

for.end.i.i299.i:                                 ; preds = %for.body.i.i297.i.2, %for.body.lr.ph.i.i285.i.for.end.i.i299.i_crit_edge
  %incdec.ptr8.i.i294.i.lcssa = phi ptr [ %incdec.ptr8.i.i294.i.1, %for.body.lr.ph.i.i285.i.for.end.i.i299.i_crit_edge ], [ %incdec.ptr8.i.i294.i.2, %for.body.i.i297.i.2 ]
  %sub.i.i295.i.lcssa = phi i32 [ 1, %for.body.lr.ph.i.i285.i.for.end.i.i299.i_crit_edge ], [ %len.addr.0.i.i282.i, %for.body.i.i297.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i295.i.lcssa)
  %tobool9.not.i.i298.i = icmp eq i32 %sub.i.i295.i.lcssa, 0
  br i1 %tobool9.not.i.i298.i, label %for.end.i.i299.i.atmel_copy_to_host.exit.i304.i_crit_edge, label %if.then10.i.i303.i

for.end.i.i299.i.atmel_copy_to_host.exit.i304.i_crit_edge: ; preds = %for.end.i.i299.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit.i304.i

if.then10.i.i303.i:                               ; preds = %for.end.i.i299.i
  call void @__sanitizer_cov_trace_pc() #19
  %429 = ptrtoint ptr %base_addr.i25.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %base_addr.i25.i.i284.i, align 32
  %add.i30.i.i300.i = add i32 %430, 8
  %and.i31.i.i301.i = and i32 %add.i30.i.i300.i, 1048575
  %add1.i32.i.i302.i = or i32 %and.i31.i.i301.i, -18874368
  %431 = inttoptr i32 %add1.i32.i.i302.i to ptr
  %432 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %431) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %433 = ptrtoint ptr %incdec.ptr8.i.i294.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %432, ptr %incdec.ptr8.i.i294.i.lcssa, align 1
  br label %atmel_copy_to_host.exit.i304.i

atmel_copy_to_host.exit.i304.i:                   ; preds = %if.then10.i.i303.i, %for.end.i.i299.i.atmel_copy_to_host.exit.i304.i_crit_edge
  %sub16.i.i = add i16 %spec.select.i.i, -6
  %add19.i.i = add i16 %223, 30
  %434 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %tobool22.not.i.i = icmp eq i32 %435, 0
  br i1 %tobool22.not.i.i, label %atmel_copy_to_host.exit.i304.i.if.end25.i.i_crit_edge, label %if.then23.i.i

atmel_copy_to_host.exit.i304.i.if.end25.i.i_crit_edge: ; preds = %atmel_copy_to_host.exit.i304.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i.i

if.then23.i.i:                                    ; preds = %atmel_copy_to_host.exit.i304.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i305.i = call i32 @crc32_le(i32 noundef %crc.0.i, ptr noundef nonnull %mac4.i265.i, i32 noundef 6) #21
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then23.i.i, %atmel_copy_to_host.exit.i304.i.if.end25.i.i_crit_edge
  %crc.addr.0.i306.i = phi i32 [ %call.i305.i, %if.then23.i.i ], [ %crc.0.i, %atmel_copy_to_host.exit.i304.i.if.end25.i.i_crit_edge ]
  %436 = ptrtoint ptr %frag_seq62.i.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %271, ptr %frag_seq62.i.i, align 4
  %437 = ptrtoint ptr %frag_no57.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 1, ptr %frag_no57.i.i, align 8
  %438 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %sub16.i.i, ptr %frag_len77.i.i, align 2
  %439 = call ptr @memcpy(ptr %frag_source68.i.i, ptr %source.i.i, i32 6)
  %440 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %source.i.i, i32 6)
  %441 = call ptr @memcpy(ptr %rx_buf76.i.i, ptr %22, i32 6)
  %442 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %443, i16 noundef zeroext %add19.i.i) #17
  br i1 %tobool.not.i.i, label %if.end25.i.i.if.end.i233.i.i_crit_edge, label %if.then.i228.i.i

if.end25.i.i.if.end.i233.i.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i233.i.i

if.then.i228.i.i:                                 ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i223.i.i = getelementptr inbounds %struct.net_device, ptr %443, i32 0, i32 5
  %444 = ptrtoint ptr %base_addr.i.i223.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %base_addr.i.i223.i.i, align 32
  %add.i.i224.i.i = add i32 %445, 8
  %and.i.i225.i.i = and i32 %add.i.i224.i.i, 1048575
  %add1.i.i226.i.i = or i32 %and.i.i225.i.i, -18874368
  %446 = inttoptr i32 %add1.i.i226.i.i to ptr
  %447 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %446) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %448 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %arrayidx35.i.i, align 1
  %dec.i.i308.i = add i16 %spec.select.i.i, -7
  br label %if.end.i233.i.i

if.end.i233.i.i:                                  ; preds = %if.then.i228.i.i, %if.end25.i.i.if.end.i233.i.i_crit_edge
  %len.addr.0.i229.i.i = phi i16 [ %dec.i.i308.i, %if.then.i228.i.i ], [ %sub16.i.i, %if.end25.i.i.if.end.i233.i.i_crit_edge ]
  %dest.addr.0.i230.i.i = phi ptr [ %incdec.ptr.i227.i.i, %if.then.i228.i.i ], [ %arrayidx35.i.i, %if.end25.i.i.if.end.i233.i.i_crit_edge ]
  %conv1.i231.i.i = zext i16 %len.addr.0.i229.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len.addr.0.i229.i.i)
  %cmp33.i232.i.i = icmp ugt i16 %len.addr.0.i229.i.i, 1
  br i1 %cmp33.i232.i.i, label %for.body.lr.ph.i235.i.i, label %if.end.i233.i.i.for.end.i251.i.i_crit_edge

if.end.i233.i.i.for.end.i251.i.i_crit_edge:       ; preds = %if.end.i233.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i251.i.i

for.body.lr.ph.i235.i.i:                          ; preds = %if.end.i233.i.i
  %base_addr.i25.i234.i.i = getelementptr inbounds %struct.net_device, ptr %443, i32 0, i32 5
  br label %for.body.i247.i.i

for.body.i247.i.i:                                ; preds = %for.body.i247.i.i.for.body.i247.i.i_crit_edge, %for.body.lr.ph.i235.i.i
  %dest.addr.135.i236.i.i = phi ptr [ %dest.addr.0.i230.i.i, %for.body.lr.ph.i235.i.i ], [ %incdec.ptr8.i244.i.i, %for.body.i247.i.i.for.body.i247.i.i_crit_edge ]
  %i.034.i237.i.i = phi i32 [ %conv1.i231.i.i, %for.body.lr.ph.i235.i.i ], [ %sub.i245.i.i, %for.body.i247.i.i.for.body.i247.i.i_crit_edge ]
  %449 = ptrtoint ptr %base_addr.i25.i234.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %base_addr.i25.i234.i.i, align 32
  %add.i26.i238.i.i = add i32 %450, 8
  %and.i27.i239.i.i = and i32 %add.i26.i238.i.i, 1048575
  %add1.i28.i240.i.i = or i32 %and.i27.i239.i.i, -18874368
  %451 = inttoptr i32 %add1.i28.i240.i.i to ptr
  %452 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %451) #17, !srcloc !314
  %453 = call i16 @llvm.bswap.i16(i16 %452) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i241.i.i = trunc i16 %453 to i8
  %incdec.ptr5.i242.i.i = getelementptr i8, ptr %dest.addr.135.i236.i.i, i32 1
  %454 = ptrtoint ptr %dest.addr.135.i236.i.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %conv4.i241.i.i, ptr %dest.addr.135.i236.i.i, align 1
  %455 = lshr i16 %453, 8
  %conv7.i243.i.i = trunc i16 %455 to i8
  %incdec.ptr8.i244.i.i = getelementptr i8, ptr %dest.addr.135.i236.i.i, i32 2
  %456 = ptrtoint ptr %incdec.ptr5.i242.i.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %conv7.i243.i.i, ptr %incdec.ptr5.i242.i.i, align 1
  %sub.i245.i.i = add nsw i32 %i.034.i237.i.i, -2
  %cmp.i246.i.i = icmp ugt i32 %sub.i245.i.i, 1
  br i1 %cmp.i246.i.i, label %for.body.i247.i.i.for.body.i247.i.i_crit_edge, label %for.body.i247.i.i.for.end.i251.i.i_crit_edge

for.body.i247.i.i.for.end.i251.i.i_crit_edge:     ; preds = %for.body.i247.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i251.i.i

for.body.i247.i.i.for.body.i247.i.i_crit_edge:    ; preds = %for.body.i247.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i247.i.i

for.end.i251.i.i:                                 ; preds = %for.body.i247.i.i.for.end.i251.i.i_crit_edge, %if.end.i233.i.i.for.end.i251.i.i_crit_edge
  %i.0.lcssa.i248.i.i = phi i32 [ %conv1.i231.i.i, %if.end.i233.i.i.for.end.i251.i.i_crit_edge ], [ %sub.i245.i.i, %for.body.i247.i.i.for.end.i251.i.i_crit_edge ]
  %dest.addr.1.lcssa.i249.i.i = phi ptr [ %dest.addr.0.i230.i.i, %if.end.i233.i.i.for.end.i251.i.i_crit_edge ], [ %incdec.ptr8.i244.i.i, %for.body.i247.i.i.for.end.i251.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i248.i.i)
  %tobool9.not.i250.i.i = icmp eq i32 %i.0.lcssa.i248.i.i, 0
  br i1 %tobool9.not.i250.i.i, label %for.end.i251.i.i.atmel_copy_to_host.exit257.i.i_crit_edge, label %if.then10.i256.i.i

for.end.i251.i.i.atmel_copy_to_host.exit257.i.i_crit_edge: ; preds = %for.end.i251.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit257.i.i

if.then10.i256.i.i:                               ; preds = %for.end.i251.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i29.i252.i.i = getelementptr inbounds %struct.net_device, ptr %443, i32 0, i32 5
  %457 = ptrtoint ptr %base_addr.i29.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %base_addr.i29.i252.i.i, align 32
  %add.i30.i253.i.i = add i32 %458, 8
  %and.i31.i254.i.i = and i32 %add.i30.i253.i.i, 1048575
  %add1.i32.i255.i.i = or i32 %and.i31.i254.i.i, -18874368
  %459 = inttoptr i32 %add1.i32.i255.i.i to ptr
  %460 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %459) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %461 = ptrtoint ptr %dest.addr.1.lcssa.i249.i.i to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 %460, ptr %dest.addr.1.lcssa.i249.i.i, align 1
  br label %atmel_copy_to_host.exit257.i.i

atmel_copy_to_host.exit257.i.i:                   ; preds = %if.then10.i256.i.i, %for.end.i251.i.i.atmel_copy_to_host.exit257.i.i_crit_edge
  %462 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %tobool37.not.i.i = icmp eq i32 %463, 0
  br i1 %tobool37.not.i.i, label %atmel_copy_to_host.exit257.i.i.frag_rx_path.exit.i_crit_edge, label %if.then38.i.i

atmel_copy_to_host.exit257.i.i.frag_rx_path.exit.i_crit_edge: ; preds = %atmel_copy_to_host.exit257.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %frag_rx_path.exit.i

if.then38.i.i:                                    ; preds = %atmel_copy_to_host.exit257.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netcrc.i266.i) #17
  %464 = ptrtoint ptr %netcrc.i266.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 -1, ptr %netcrc.i266.i, align 4, !annotation !321
  %conv41.i.i = zext i16 %sub16.i.i to i32
  %call42.i.i = call i32 @crc32_le(i32 noundef %crc.addr.0.i306.i, ptr noundef %arrayidx35.i.i, i32 noundef %conv41.i.i) #21
  %465 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %dev.i, align 4
  %add46.i.i = add i16 %sub16.i.i, %add19.i.i
  call fastcc void @atmel_writeAR(ptr noundef %466, i16 noundef zeroext %add46.i.i) #17
  %467 = and i16 %add46.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %467)
  %tobool.not.i258.i.i = icmp eq i16 %467, 0
  br i1 %tobool.not.i258.i.i, label %if.then38.i.i.for.body.lr.ph.i271.i.i_crit_edge, label %if.then.i264.i.i

if.then38.i.i.for.body.lr.ph.i271.i.i_crit_edge:  ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i271.i.i

if.then.i264.i.i:                                 ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i259.i.i = getelementptr inbounds %struct.net_device, ptr %466, i32 0, i32 5
  %468 = ptrtoint ptr %base_addr.i.i259.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %base_addr.i.i259.i.i, align 32
  %add.i.i260.i.i = add i32 %469, 8
  %and.i.i261.i.i = and i32 %add.i.i260.i.i, 1048575
  %add1.i.i262.i.i = or i32 %and.i.i261.i.i, -18874368
  %470 = inttoptr i32 %add1.i.i262.i.i to ptr
  %471 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %470) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %472 = ptrtoint ptr %netcrc.i266.i to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %netcrc.i266.i, align 4
  br label %for.body.lr.ph.i271.i.i

for.body.lr.ph.i271.i.i:                          ; preds = %if.then.i264.i.i, %if.then38.i.i.for.body.lr.ph.i271.i.i_crit_edge
  %len.addr.0.i265.i.i = phi i32 [ -1, %if.then.i264.i.i ], [ 0, %if.then38.i.i.for.body.lr.ph.i271.i.i_crit_edge ]
  %dest.addr.0.i266.i.i = phi ptr [ %incdec.ptr.i263.i.i, %if.then.i264.i.i ], [ %netcrc.i266.i, %if.then38.i.i.for.body.lr.ph.i271.i.i_crit_edge ]
  %base_addr.i25.i270.i.i = getelementptr inbounds %struct.net_device, ptr %466, i32 0, i32 5
  %473 = ptrtoint ptr %base_addr.i25.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %base_addr.i25.i270.i.i, align 32
  %add.i26.i274.i.i = add i32 %474, 8
  %and.i27.i275.i.i = and i32 %add.i26.i274.i.i, 1048575
  %add1.i28.i276.i.i = or i32 %and.i27.i275.i.i, -18874368
  %475 = inttoptr i32 %add1.i28.i276.i.i to ptr
  %476 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %475) #17, !srcloc !314
  %477 = call i16 @llvm.bswap.i16(i16 %476) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i277.i.i = trunc i16 %477 to i8
  %incdec.ptr5.i278.i.i = getelementptr i8, ptr %dest.addr.0.i266.i.i, i32 1
  %478 = ptrtoint ptr %dest.addr.0.i266.i.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %conv4.i277.i.i, ptr %dest.addr.0.i266.i.i, align 1
  %479 = lshr i16 %477, 8
  %conv7.i279.i.i = trunc i16 %479 to i8
  %incdec.ptr8.i280.i.i = getelementptr i8, ptr %dest.addr.0.i266.i.i, i32 2
  %480 = ptrtoint ptr %incdec.ptr5.i278.i.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %conv7.i279.i.i, ptr %incdec.ptr5.i278.i.i, align 1
  br i1 %tobool.not.i258.i.i, label %for.body.i283.i.i.1, label %for.body.lr.ph.i271.i.i.for.end.i287.i.i_crit_edge

for.body.lr.ph.i271.i.i.for.end.i287.i.i_crit_edge: ; preds = %for.body.lr.ph.i271.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i287.i.i

for.body.i283.i.i.1:                              ; preds = %for.body.lr.ph.i271.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %481 = ptrtoint ptr %base_addr.i25.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %base_addr.i25.i270.i.i, align 32
  %add.i26.i274.i.i.1 = add i32 %482, 8
  %and.i27.i275.i.i.1 = and i32 %add.i26.i274.i.i.1, 1048575
  %add1.i28.i276.i.i.1 = or i32 %and.i27.i275.i.i.1, -18874368
  %483 = inttoptr i32 %add1.i28.i276.i.i.1 to ptr
  %484 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %483) #17, !srcloc !314
  %485 = call i16 @llvm.bswap.i16(i16 %484) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i277.i.i.1 = trunc i16 %485 to i8
  %incdec.ptr5.i278.i.i.1 = getelementptr i8, ptr %dest.addr.0.i266.i.i, i32 3
  %486 = ptrtoint ptr %incdec.ptr8.i280.i.i to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 %conv4.i277.i.i.1, ptr %incdec.ptr8.i280.i.i, align 1
  %487 = lshr i16 %485, 8
  %conv7.i279.i.i.1 = trunc i16 %487 to i8
  %incdec.ptr8.i280.i.i.1 = getelementptr i8, ptr %dest.addr.0.i266.i.i, i32 4
  %488 = ptrtoint ptr %incdec.ptr5.i278.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %conv7.i279.i.i.1, ptr %incdec.ptr5.i278.i.i.1, align 1
  br label %for.end.i287.i.i

for.end.i287.i.i:                                 ; preds = %for.body.i283.i.i.1, %for.body.lr.ph.i271.i.i.for.end.i287.i.i_crit_edge
  %incdec.ptr8.i280.i.i.lcssa = phi ptr [ %incdec.ptr8.i280.i.i, %for.body.lr.ph.i271.i.i.for.end.i287.i.i_crit_edge ], [ %incdec.ptr8.i280.i.i.1, %for.body.i283.i.i.1 ]
  %sub.i281.i.i.lcssa = phi i32 [ 1, %for.body.lr.ph.i271.i.i.for.end.i287.i.i_crit_edge ], [ %len.addr.0.i265.i.i, %for.body.i283.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i281.i.i.lcssa)
  %tobool9.not.i286.i.i = icmp eq i32 %sub.i281.i.i.lcssa, 0
  br i1 %tobool9.not.i286.i.i, label %for.end.i287.i.i.atmel_copy_to_host.exit293.i.i_crit_edge, label %if.then10.i292.i.i

for.end.i287.i.i.atmel_copy_to_host.exit293.i.i_crit_edge: ; preds = %for.end.i287.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit293.i.i

if.then10.i292.i.i:                               ; preds = %for.end.i287.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %489 = ptrtoint ptr %base_addr.i25.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %base_addr.i25.i270.i.i, align 32
  %add.i30.i289.i.i = add i32 %490, 8
  %and.i31.i290.i.i = and i32 %add.i30.i289.i.i, 1048575
  %add1.i32.i291.i.i = or i32 %and.i31.i290.i.i, -18874368
  %491 = inttoptr i32 %add1.i32.i291.i.i to ptr
  %492 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %491) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %493 = ptrtoint ptr %incdec.ptr8.i280.i.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 %492, ptr %incdec.ptr8.i280.i.i.lcssa, align 1
  br label %atmel_copy_to_host.exit293.i.i

atmel_copy_to_host.exit293.i.i:                   ; preds = %if.then10.i292.i.i, %for.end.i287.i.i.atmel_copy_to_host.exit293.i.i_crit_edge
  %xor.i309.i = xor i32 %call42.i.i, -1
  %494 = ptrtoint ptr %netcrc.i266.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %netcrc.i266.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %495, i32 %xor.i309.i)
  %cmp48.not.i.i = icmp eq i32 %495, %xor.i309.i
  br i1 %cmp48.not.i.i, label %atmel_copy_to_host.exit293.i.i.if.end54.i.i_crit_edge, label %if.then50.i.i

atmel_copy_to_host.exit293.i.i.if.end54.i.i_crit_edge: ; preds = %atmel_copy_to_host.exit293.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.i.i

if.then50.i.i:                                    ; preds = %atmel_copy_to_host.exit293.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %496 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev.i, align 4
  %rx_crc_errors.i310.i = getelementptr inbounds %struct.net_device, ptr %497, i32 0, i32 36, i32 12
  %498 = ptrtoint ptr %rx_crc_errors.i310.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %rx_crc_errors.i310.i, align 8
  %inc.i311.i = add i32 %499, 1
  store i32 %inc.i311.i, ptr %rx_crc_errors.i310.i, align 8
  %500 = call ptr @memset(ptr %frag_source68.i.i, i32 255, i32 6)
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then50.i.i, %atmel_copy_to_host.exit293.i.i.if.end54.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netcrc.i266.i) #17
  br label %frag_rx_path.exit.i

if.else56.i.i:                                    ; preds = %if.else99.i
  %501 = ptrtoint ptr %frag_no57.i.i to i32
  call void @__asan_load2_noabort(i32 %501)
  %502 = load i16, ptr %frag_no57.i.i, align 8
  %503 = zext i8 %conv89.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %502, i16 %503)
  %cmp60.i.i = icmp eq i16 %502, %503
  br i1 %cmp60.i.i, label %land.lhs.true.i.i, label %if.else56.i.i.if.else150.i.i_crit_edge

if.else56.i.i.if.else150.i.i_crit_edge:           ; preds = %if.else56.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else150.i.i

land.lhs.true.i.i:                                ; preds = %if.else56.i.i
  %504 = ptrtoint ptr %frag_seq62.i.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %frag_seq62.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %505, i16 %271)
  %cmp65.i.i = icmp eq i16 %505, %271
  br i1 %cmp65.i.i, label %land.lhs.true67.i.i, label %land.lhs.true.i.i.if.else150.i.i_crit_edge

land.lhs.true.i.i.if.else150.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else150.i.i

land.lhs.true67.i.i:                              ; preds = %land.lhs.true.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %frag_source68.i.i, ptr noundef nonnull dereferenceable(6) %source.i.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp72.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp72.i.i, label %if.then74.i.i, label %land.lhs.true67.i.i.if.else150.i.i_crit_edge

land.lhs.true67.i.i.if.else150.i.i_crit_edge:     ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else150.i.i

if.then74.i.i:                                    ; preds = %land.lhs.true67.i.i
  %506 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %dev.i, align 4
  %508 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_load2_noabort(i32 %508)
  %509 = load i16, ptr %frag_len77.i.i, align 2
  %conv78.i.i = zext i16 %509 to i32
  %add79.i.i = add nuw nsw i32 %conv78.i.i, 12
  %arrayidx80.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 81, i32 %add79.i.i
  call fastcc void @atmel_writeAR(ptr noundef %507, i16 noundef zeroext %add.i271.i) #17
  br i1 %tobool.not.i.i, label %if.then74.i.i.if.end.i306.i.i_crit_edge, label %if.then.i301.i.i

if.then74.i.i.if.end.i306.i.i_crit_edge:          ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i306.i.i

if.then.i301.i.i:                                 ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i295.i.i = getelementptr inbounds %struct.net_device, ptr %507, i32 0, i32 5
  %510 = ptrtoint ptr %base_addr.i.i295.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %base_addr.i.i295.i.i, align 32
  %add.i.i296.i.i = add i32 %511, 8
  %and.i.i297.i.i = and i32 %add.i.i296.i.i, 1048575
  %add1.i.i298.i.i = or i32 %and.i.i297.i.i, -18874368
  %512 = inttoptr i32 %add1.i.i298.i.i to ptr
  %513 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %512) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %514 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %arrayidx80.i.i, align 1
  %incdec.ptr.i299.i.i = getelementptr i8, ptr %arrayidx80.i.i, i32 1
  %dec.i300.i.i = add i16 %spec.select.i.i, -1
  br label %if.end.i306.i.i

if.end.i306.i.i:                                  ; preds = %if.then.i301.i.i, %if.then74.i.i.if.end.i306.i.i_crit_edge
  %len.addr.0.i302.i.i = phi i16 [ %dec.i300.i.i, %if.then.i301.i.i ], [ %spec.select.i.i, %if.then74.i.i.if.end.i306.i.i_crit_edge ]
  %dest.addr.0.i303.i.i = phi ptr [ %incdec.ptr.i299.i.i, %if.then.i301.i.i ], [ %arrayidx80.i.i, %if.then74.i.i.if.end.i306.i.i_crit_edge ]
  %conv1.i304.i.i = zext i16 %len.addr.0.i302.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len.addr.0.i302.i.i)
  %cmp33.i305.i.i = icmp ugt i16 %len.addr.0.i302.i.i, 1
  br i1 %cmp33.i305.i.i, label %for.body.lr.ph.i308.i.i, label %if.end.i306.i.i.for.end.i324.i.i_crit_edge

if.end.i306.i.i.for.end.i324.i.i_crit_edge:       ; preds = %if.end.i306.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i324.i.i

for.body.lr.ph.i308.i.i:                          ; preds = %if.end.i306.i.i
  %base_addr.i25.i307.i.i = getelementptr inbounds %struct.net_device, ptr %507, i32 0, i32 5
  br label %for.body.i320.i.i

for.body.i320.i.i:                                ; preds = %for.body.i320.i.i.for.body.i320.i.i_crit_edge, %for.body.lr.ph.i308.i.i
  %dest.addr.135.i309.i.i = phi ptr [ %dest.addr.0.i303.i.i, %for.body.lr.ph.i308.i.i ], [ %incdec.ptr8.i317.i.i, %for.body.i320.i.i.for.body.i320.i.i_crit_edge ]
  %i.034.i310.i.i = phi i32 [ %conv1.i304.i.i, %for.body.lr.ph.i308.i.i ], [ %sub.i318.i.i, %for.body.i320.i.i.for.body.i320.i.i_crit_edge ]
  %515 = ptrtoint ptr %base_addr.i25.i307.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %base_addr.i25.i307.i.i, align 32
  %add.i26.i311.i.i = add i32 %516, 8
  %and.i27.i312.i.i = and i32 %add.i26.i311.i.i, 1048575
  %add1.i28.i313.i.i = or i32 %and.i27.i312.i.i, -18874368
  %517 = inttoptr i32 %add1.i28.i313.i.i to ptr
  %518 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %517) #17, !srcloc !314
  %519 = call i16 @llvm.bswap.i16(i16 %518) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i314.i.i = trunc i16 %519 to i8
  %incdec.ptr5.i315.i.i = getelementptr i8, ptr %dest.addr.135.i309.i.i, i32 1
  %520 = ptrtoint ptr %dest.addr.135.i309.i.i to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %conv4.i314.i.i, ptr %dest.addr.135.i309.i.i, align 1
  %521 = lshr i16 %519, 8
  %conv7.i316.i.i = trunc i16 %521 to i8
  %incdec.ptr8.i317.i.i = getelementptr i8, ptr %dest.addr.135.i309.i.i, i32 2
  %522 = ptrtoint ptr %incdec.ptr5.i315.i.i to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %conv7.i316.i.i, ptr %incdec.ptr5.i315.i.i, align 1
  %sub.i318.i.i = add nsw i32 %i.034.i310.i.i, -2
  %cmp.i319.i.i = icmp ugt i32 %sub.i318.i.i, 1
  br i1 %cmp.i319.i.i, label %for.body.i320.i.i.for.body.i320.i.i_crit_edge, label %for.body.i320.i.i.for.end.i324.i.i_crit_edge

for.body.i320.i.i.for.end.i324.i.i_crit_edge:     ; preds = %for.body.i320.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i324.i.i

for.body.i320.i.i.for.body.i320.i.i_crit_edge:    ; preds = %for.body.i320.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i320.i.i

for.end.i324.i.i:                                 ; preds = %for.body.i320.i.i.for.end.i324.i.i_crit_edge, %if.end.i306.i.i.for.end.i324.i.i_crit_edge
  %i.0.lcssa.i321.i.i = phi i32 [ %conv1.i304.i.i, %if.end.i306.i.i.for.end.i324.i.i_crit_edge ], [ %sub.i318.i.i, %for.body.i320.i.i.for.end.i324.i.i_crit_edge ]
  %dest.addr.1.lcssa.i322.i.i = phi ptr [ %dest.addr.0.i303.i.i, %if.end.i306.i.i.for.end.i324.i.i_crit_edge ], [ %incdec.ptr8.i317.i.i, %for.body.i320.i.i.for.end.i324.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i321.i.i)
  %tobool9.not.i323.i.i = icmp eq i32 %i.0.lcssa.i321.i.i, 0
  br i1 %tobool9.not.i323.i.i, label %for.end.i324.i.i.atmel_copy_to_host.exit330.i.i_crit_edge, label %if.then10.i329.i.i

for.end.i324.i.i.atmel_copy_to_host.exit330.i.i_crit_edge: ; preds = %for.end.i324.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit330.i.i

if.then10.i329.i.i:                               ; preds = %for.end.i324.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i29.i325.i.i = getelementptr inbounds %struct.net_device, ptr %507, i32 0, i32 5
  %523 = ptrtoint ptr %base_addr.i29.i325.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %base_addr.i29.i325.i.i, align 32
  %add.i30.i326.i.i = add i32 %524, 8
  %and.i31.i327.i.i = and i32 %add.i30.i326.i.i, 1048575
  %add1.i32.i328.i.i = or i32 %and.i31.i327.i.i, -18874368
  %525 = inttoptr i32 %add1.i32.i328.i.i to ptr
  %526 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %525) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %527 = ptrtoint ptr %dest.addr.1.lcssa.i322.i.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %526, ptr %dest.addr.1.lcssa.i322.i.i, align 1
  br label %atmel_copy_to_host.exit330.i.i

atmel_copy_to_host.exit330.i.i:                   ; preds = %if.then10.i329.i.i, %for.end.i324.i.i.atmel_copy_to_host.exit330.i.i_crit_edge
  %528 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %529)
  %tobool82.not.i.i = icmp eq i32 %529, 0
  br i1 %tobool82.not.i.i, label %atmel_copy_to_host.exit330.i.i.if.end108.i.i_crit_edge, label %if.then83.i.i

atmel_copy_to_host.exit330.i.i.if.end108.i.i_crit_edge: ; preds = %atmel_copy_to_host.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108.i.i

if.then83.i.i:                                    ; preds = %atmel_copy_to_host.exit330.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netcrc84.i.i) #17
  %530 = ptrtoint ptr %netcrc84.i.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 -1, ptr %netcrc84.i.i, align 4, !annotation !321
  %531 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_load2_noabort(i32 %531)
  %532 = load i16, ptr %frag_len77.i.i, align 2
  %conv87.i.i = zext i16 %532 to i32
  %add88.i.i = add nuw nsw i32 %conv87.i.i, 12
  %arrayidx89.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 81, i32 %add88.i.i
  %conv90.i.i = zext i16 %spec.select.i.i to i32
  %call91.i.i = call i32 @crc32_le(i32 noundef %crc.0.i, ptr noundef %arrayidx89.i.i, i32 noundef %conv90.i.i) #21
  %533 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %dev.i, align 4
  %add95.i.i = add i16 %spec.select.i.i, %add.i271.i
  call fastcc void @atmel_writeAR(ptr noundef %534, i16 noundef zeroext %add95.i.i) #17
  %535 = and i16 %add95.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %535)
  %tobool.not.i331.i.i = icmp eq i16 %535, 0
  br i1 %tobool.not.i331.i.i, label %if.then83.i.i.for.body.lr.ph.i344.i.i_crit_edge, label %if.then.i337.i.i

if.then83.i.i.for.body.lr.ph.i344.i.i_crit_edge:  ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i344.i.i

if.then.i337.i.i:                                 ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i332.i.i = getelementptr inbounds %struct.net_device, ptr %534, i32 0, i32 5
  %536 = ptrtoint ptr %base_addr.i.i332.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %base_addr.i.i332.i.i, align 32
  %add.i.i333.i.i = add i32 %537, 8
  %and.i.i334.i.i = and i32 %add.i.i333.i.i, 1048575
  %add1.i.i335.i.i = or i32 %and.i.i334.i.i, -18874368
  %538 = inttoptr i32 %add1.i.i335.i.i to ptr
  %539 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %538) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %540 = ptrtoint ptr %netcrc84.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %539, ptr %netcrc84.i.i, align 4
  br label %for.body.lr.ph.i344.i.i

for.body.lr.ph.i344.i.i:                          ; preds = %if.then.i337.i.i, %if.then83.i.i.for.body.lr.ph.i344.i.i_crit_edge
  %len.addr.0.i338.i.i = phi i32 [ -1, %if.then.i337.i.i ], [ 0, %if.then83.i.i.for.body.lr.ph.i344.i.i_crit_edge ]
  %dest.addr.0.i339.i.i = phi ptr [ %incdec.ptr.i336.i.i, %if.then.i337.i.i ], [ %netcrc84.i.i, %if.then83.i.i.for.body.lr.ph.i344.i.i_crit_edge ]
  %base_addr.i25.i343.i.i = getelementptr inbounds %struct.net_device, ptr %534, i32 0, i32 5
  %541 = ptrtoint ptr %base_addr.i25.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %base_addr.i25.i343.i.i, align 32
  %add.i26.i347.i.i = add i32 %542, 8
  %and.i27.i348.i.i = and i32 %add.i26.i347.i.i, 1048575
  %add1.i28.i349.i.i = or i32 %and.i27.i348.i.i, -18874368
  %543 = inttoptr i32 %add1.i28.i349.i.i to ptr
  %544 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %543) #17, !srcloc !314
  %545 = call i16 @llvm.bswap.i16(i16 %544) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i350.i.i = trunc i16 %545 to i8
  %incdec.ptr5.i351.i.i = getelementptr i8, ptr %dest.addr.0.i339.i.i, i32 1
  %546 = ptrtoint ptr %dest.addr.0.i339.i.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 %conv4.i350.i.i, ptr %dest.addr.0.i339.i.i, align 1
  %547 = lshr i16 %545, 8
  %conv7.i352.i.i = trunc i16 %547 to i8
  %incdec.ptr8.i353.i.i = getelementptr i8, ptr %dest.addr.0.i339.i.i, i32 2
  %548 = ptrtoint ptr %incdec.ptr5.i351.i.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 %conv7.i352.i.i, ptr %incdec.ptr5.i351.i.i, align 1
  br i1 %tobool.not.i331.i.i, label %for.body.i356.i.i.1, label %for.body.lr.ph.i344.i.i.for.end.i360.i.i_crit_edge

for.body.lr.ph.i344.i.i.for.end.i360.i.i_crit_edge: ; preds = %for.body.lr.ph.i344.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i360.i.i

for.body.i356.i.i.1:                              ; preds = %for.body.lr.ph.i344.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %549 = ptrtoint ptr %base_addr.i25.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %base_addr.i25.i343.i.i, align 32
  %add.i26.i347.i.i.1 = add i32 %550, 8
  %and.i27.i348.i.i.1 = and i32 %add.i26.i347.i.i.1, 1048575
  %add1.i28.i349.i.i.1 = or i32 %and.i27.i348.i.i.1, -18874368
  %551 = inttoptr i32 %add1.i28.i349.i.i.1 to ptr
  %552 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %551) #17, !srcloc !314
  %553 = call i16 @llvm.bswap.i16(i16 %552) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i350.i.i.1 = trunc i16 %553 to i8
  %incdec.ptr5.i351.i.i.1 = getelementptr i8, ptr %dest.addr.0.i339.i.i, i32 3
  %554 = ptrtoint ptr %incdec.ptr8.i353.i.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %conv4.i350.i.i.1, ptr %incdec.ptr8.i353.i.i, align 1
  %555 = lshr i16 %553, 8
  %conv7.i352.i.i.1 = trunc i16 %555 to i8
  %incdec.ptr8.i353.i.i.1 = getelementptr i8, ptr %dest.addr.0.i339.i.i, i32 4
  %556 = ptrtoint ptr %incdec.ptr5.i351.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv7.i352.i.i.1, ptr %incdec.ptr5.i351.i.i.1, align 1
  br label %for.end.i360.i.i

for.end.i360.i.i:                                 ; preds = %for.body.i356.i.i.1, %for.body.lr.ph.i344.i.i.for.end.i360.i.i_crit_edge
  %incdec.ptr8.i353.i.i.lcssa = phi ptr [ %incdec.ptr8.i353.i.i, %for.body.lr.ph.i344.i.i.for.end.i360.i.i_crit_edge ], [ %incdec.ptr8.i353.i.i.1, %for.body.i356.i.i.1 ]
  %sub.i354.i.i.lcssa = phi i32 [ 1, %for.body.lr.ph.i344.i.i.for.end.i360.i.i_crit_edge ], [ %len.addr.0.i338.i.i, %for.body.i356.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i354.i.i.lcssa)
  %tobool9.not.i359.i.i = icmp eq i32 %sub.i354.i.i.lcssa, 0
  br i1 %tobool9.not.i359.i.i, label %for.end.i360.i.i.atmel_copy_to_host.exit366.i.i_crit_edge, label %if.then10.i365.i.i

for.end.i360.i.i.atmel_copy_to_host.exit366.i.i_crit_edge: ; preds = %for.end.i360.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit366.i.i

if.then10.i365.i.i:                               ; preds = %for.end.i360.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %557 = ptrtoint ptr %base_addr.i25.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %base_addr.i25.i343.i.i, align 32
  %add.i30.i362.i.i = add i32 %558, 8
  %and.i31.i363.i.i = and i32 %add.i30.i362.i.i, 1048575
  %add1.i32.i364.i.i = or i32 %and.i31.i363.i.i, -18874368
  %559 = inttoptr i32 %add1.i32.i364.i.i to ptr
  %560 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %559) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %561 = ptrtoint ptr %incdec.ptr8.i353.i.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %560, ptr %incdec.ptr8.i353.i.i.lcssa, align 1
  br label %atmel_copy_to_host.exit366.i.i

atmel_copy_to_host.exit366.i.i:                   ; preds = %if.then10.i365.i.i, %for.end.i360.i.i.atmel_copy_to_host.exit366.i.i_crit_edge
  %xor97.i.i = xor i32 %call91.i.i, -1
  %562 = ptrtoint ptr %netcrc84.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %netcrc84.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %563, i32 %xor97.i.i)
  %cmp98.not.i.i = icmp eq i32 %563, %xor97.i.i
  br i1 %cmp98.not.i.i, label %atmel_copy_to_host.exit366.i.i.if.end107.i.i_crit_edge, label %if.then100.i.i

atmel_copy_to_host.exit366.i.i.if.end107.i.i_crit_edge: ; preds = %atmel_copy_to_host.exit366.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107.i.i

if.then100.i.i:                                   ; preds = %atmel_copy_to_host.exit366.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %564 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %dev.i, align 4
  %rx_crc_errors103.i.i = getelementptr inbounds %struct.net_device, ptr %565, i32 0, i32 36, i32 12
  %566 = ptrtoint ptr %rx_crc_errors103.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %rx_crc_errors103.i.i, align 8
  %inc104.i.i = add i32 %567, 1
  store i32 %inc104.i.i, ptr %rx_crc_errors103.i.i, align 8
  %568 = call ptr @memset(ptr %frag_source68.i.i, i32 255, i32 6)
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then100.i.i, %atmel_copy_to_host.exit366.i.i.if.end107.i.i_crit_edge
  %more_frags.addr.0.i.i = phi i32 [ 1, %if.then100.i.i ], [ %and86.i, %atmel_copy_to_host.exit366.i.i.if.end107.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netcrc84.i.i) #17
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.end107.i.i, %atmel_copy_to_host.exit330.i.i.if.end108.i.i_crit_edge
  %more_frags.addr.1.i.i = phi i32 [ %more_frags.addr.0.i.i, %if.end107.i.i ], [ %and86.i, %atmel_copy_to_host.exit330.i.i.if.end108.i.i_crit_edge ]
  %569 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_load2_noabort(i32 %569)
  %570 = load i16, ptr %frag_len77.i.i, align 2
  %add112.i.i = add i16 %570, %spec.select.i.i
  store i16 %add112.i.i, ptr %frag_len77.i.i, align 2
  %571 = ptrtoint ptr %frag_no57.i.i to i32
  call void @__asan_load2_noabort(i32 %571)
  %572 = load i16, ptr %frag_no57.i.i, align 8
  %inc115.i.i = add i16 %572, 1
  store i16 %inc115.i.i, ptr %frag_no57.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %more_frags.addr.1.i.i)
  %tobool116.not.i.i = icmp eq i32 %more_frags.addr.1.i.i, 0
  br i1 %tobool116.not.i.i, label %if.then117.i.i, label %if.end108.i.i.frag_rx_path.exit.i_crit_edge

if.end108.i.i.frag_rx_path.exit.i_crit_edge:      ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %frag_rx_path.exit.i

if.then117.i.i:                                   ; preds = %if.end108.i.i
  %573 = call ptr @memset(ptr %frag_source68.i.i, i32 255, i32 6)
  %conv121.i.i = zext i16 %add112.i.i to i32
  %add122.i.i = add nuw nsw i32 %conv121.i.i, 14
  %call.i.i.i312.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add122.i.i, i32 noundef 2592) #17
  %tobool124.not.i.i = icmp eq ptr %call.i.i.i312.i, null
  br i1 %tobool124.not.i.i, label %if.then125.i.i, label %if.else129.i.i

if.then125.i.i:                                   ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %574 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %dev.i, align 4
  %rx_dropped.i313.i = getelementptr inbounds %struct.net_device, ptr %575, i32 0, i32 36, i32 6
  %576 = ptrtoint ptr %rx_dropped.i313.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %rx_dropped.i313.i, align 8
  %inc128.i.i = add i32 %577, 1
  store i32 %inc128.i.i, ptr %rx_dropped.i313.i, align 8
  br label %frag_rx_path.exit.i

if.else129.i.i:                                   ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i314.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i312.i, i32 0, i32 19
  %578 = ptrtoint ptr %data.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %data.i.i314.i, align 4
  %add.ptr.i.i315.i = getelementptr i8, ptr %579, i32 2
  store ptr %add.ptr.i.i315.i, ptr %data.i.i314.i, align 4
  %tail.i.i316.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i312.i, i32 0, i32 16
  %580 = ptrtoint ptr %tail.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %tail.i.i316.i, align 8
  %add.ptr1.i.i317.i = getelementptr i8, ptr %581, i32 2
  store ptr %add.ptr1.i.i317.i, ptr %tail.i.i316.i, align 8
  %582 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %frag_len77.i.i, align 2
  %conv133.i.i = zext i16 %583 to i32
  %add134.i.i = add nuw nsw i32 %conv133.i.i, 12
  %call.i.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i312.i, i32 noundef %add134.i.i) #17
  %584 = call ptr @memcpy(ptr %call.i.i.i, ptr %rx_buf76.i.i, i32 %add134.i.i)
  %585 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %dev.i, align 4
  %call137.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i312.i, ptr noundef %586) #17
  %protocol.i318.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i312.i, i32 0, i32 15, i32 0, i32 18
  %587 = ptrtoint ptr %protocol.i318.i to i32
  call void @__asan_store2_noabort(i32 %587)
  store i16 %call137.i.i, ptr %protocol.i318.i, align 8
  %ip_summed.i319.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i312.i, i32 0, i32 15
  %588 = ptrtoint ptr %ip_summed.i319.i to i32
  call void @__asan_load2_noabort(i32 %588)
  %bf.load.i320.i = load i16, ptr %ip_summed.i319.i, align 8
  %bf.clear.i321.i = and i16 %bf.load.i320.i, -1537
  store i16 %bf.clear.i321.i, ptr %ip_summed.i319.i, align 8
  %call138.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i312.i) #17
  %589 = ptrtoint ptr %frag_len77.i.i to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %frag_len77.i.i, align 2
  %conv140.i.i = zext i16 %590 to i32
  %add141.i.i = add nuw nsw i32 %conv140.i.i, 12
  %591 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %dev.i, align 4
  %rx_bytes.i322.i = getelementptr inbounds %struct.net_device, ptr %592, i32 0, i32 36, i32 2
  %593 = ptrtoint ptr %rx_bytes.i322.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %rx_bytes.i322.i, align 8
  %add144.i.i = add i32 %add141.i.i, %594
  store i32 %add144.i.i, ptr %rx_bytes.i322.i, align 8
  %595 = load ptr, ptr %dev.i, align 4
  %stats146.i.i = getelementptr inbounds %struct.net_device, ptr %595, i32 0, i32 36
  %596 = ptrtoint ptr %stats146.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %stats146.i.i, align 8
  %inc147.i.i = add i32 %597, 1
  store i32 %inc147.i.i, ptr %stats146.i.i, align 8
  br label %frag_rx_path.exit.i

if.else150.i.i:                                   ; preds = %land.lhs.true67.i.i.if.else150.i.i_crit_edge, %land.lhs.true.i.i.if.else150.i.i_crit_edge, %if.else56.i.i.if.else150.i.i_crit_edge
  %598 = ptrtoint ptr %fragment.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %fragment.i.i, align 4
  %inc151.i.i = add i32 %599, 1
  store i32 %inc151.i.i, ptr %fragment.i.i, align 4
  br label %frag_rx_path.exit.i

frag_rx_path.exit.i:                              ; preds = %if.else150.i.i, %if.else129.i.i, %if.then125.i.i, %if.end108.i.i.frag_rx_path.exit.i_crit_edge, %if.end54.i.i, %atmel_copy_to_host.exit257.i.i.frag_rx_path.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %source.i.i) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac4.i265.i) #17
  br label %next.i

if.then106.i:                                     ; preds = %if.end76.i
  %600 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dev.i, align 4
  %add109.i = add i16 %223, 24
  call fastcc void @atmel_writeAR(ptr noundef %601, i16 noundef zeroext %add109.i) #17
  br i1 %tobool.not.i.i, label %if.then106.i.if.end.i334.i_crit_edge, label %if.then.i329.i

if.then106.i.if.end.i334.i_crit_edge:             ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i334.i

if.then.i329.i:                                   ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i324.i = getelementptr inbounds %struct.net_device, ptr %601, i32 0, i32 5
  %602 = ptrtoint ptr %base_addr.i.i324.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %base_addr.i.i324.i, align 32
  %add.i.i325.i = add i32 %603, 8
  %and.i.i326.i = and i32 %add.i.i325.i, 1048575
  %add1.i.i327.i = or i32 %and.i.i326.i, -18874368
  %604 = inttoptr i32 %add1.i.i327.i to ptr
  %605 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %604) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %606 = ptrtoint ptr %rx_buf76.i.i to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 %605, ptr %rx_buf76.i.i, align 1
  %dec.i.i = add i16 %210, -25
  br label %if.end.i334.i

if.end.i334.i:                                    ; preds = %if.then.i329.i, %if.then106.i.if.end.i334.i_crit_edge
  %len.addr.0.i330.i = phi i16 [ %dec.i.i, %if.then.i329.i ], [ %sub78.i, %if.then106.i.if.end.i334.i_crit_edge ]
  %dest.addr.0.i331.i = phi ptr [ %incdec.ptr.i328.i, %if.then.i329.i ], [ %rx_buf76.i.i, %if.then106.i.if.end.i334.i_crit_edge ]
  %conv1.i332.i = zext i16 %len.addr.0.i330.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len.addr.0.i330.i)
  %cmp33.i333.i = icmp ugt i16 %len.addr.0.i330.i, 1
  br i1 %cmp33.i333.i, label %for.body.lr.ph.i336.i, label %if.end.i334.i.for.end.i352.i_crit_edge

if.end.i334.i.for.end.i352.i_crit_edge:           ; preds = %if.end.i334.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i352.i

for.body.lr.ph.i336.i:                            ; preds = %if.end.i334.i
  %base_addr.i25.i335.i = getelementptr inbounds %struct.net_device, ptr %601, i32 0, i32 5
  br label %for.body.i348.i

for.body.i348.i:                                  ; preds = %for.body.i348.i.for.body.i348.i_crit_edge, %for.body.lr.ph.i336.i
  %dest.addr.135.i337.i = phi ptr [ %dest.addr.0.i331.i, %for.body.lr.ph.i336.i ], [ %incdec.ptr8.i345.i, %for.body.i348.i.for.body.i348.i_crit_edge ]
  %i.034.i338.i = phi i32 [ %conv1.i332.i, %for.body.lr.ph.i336.i ], [ %sub.i346.i, %for.body.i348.i.for.body.i348.i_crit_edge ]
  %607 = ptrtoint ptr %base_addr.i25.i335.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %base_addr.i25.i335.i, align 32
  %add.i26.i339.i = add i32 %608, 8
  %and.i27.i340.i = and i32 %add.i26.i339.i, 1048575
  %add1.i28.i341.i = or i32 %and.i27.i340.i, -18874368
  %609 = inttoptr i32 %add1.i28.i341.i to ptr
  %610 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %609) #17, !srcloc !314
  %611 = call i16 @llvm.bswap.i16(i16 %610) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i342.i = trunc i16 %611 to i8
  %incdec.ptr5.i343.i = getelementptr i8, ptr %dest.addr.135.i337.i, i32 1
  %612 = ptrtoint ptr %dest.addr.135.i337.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %conv4.i342.i, ptr %dest.addr.135.i337.i, align 1
  %613 = lshr i16 %611, 8
  %conv7.i344.i = trunc i16 %613 to i8
  %incdec.ptr8.i345.i = getelementptr i8, ptr %dest.addr.135.i337.i, i32 2
  %614 = ptrtoint ptr %incdec.ptr5.i343.i to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %conv7.i344.i, ptr %incdec.ptr5.i343.i, align 1
  %sub.i346.i = add nsw i32 %i.034.i338.i, -2
  %cmp.i347.i = icmp ugt i32 %sub.i346.i, 1
  br i1 %cmp.i347.i, label %for.body.i348.i.for.body.i348.i_crit_edge, label %for.body.i348.i.for.end.i352.i_crit_edge

for.body.i348.i.for.end.i352.i_crit_edge:         ; preds = %for.body.i348.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i352.i

for.body.i348.i.for.body.i348.i_crit_edge:        ; preds = %for.body.i348.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i348.i

for.end.i352.i:                                   ; preds = %for.body.i348.i.for.end.i352.i_crit_edge, %if.end.i334.i.for.end.i352.i_crit_edge
  %i.0.lcssa.i349.i = phi i32 [ %conv1.i332.i, %if.end.i334.i.for.end.i352.i_crit_edge ], [ %sub.i346.i, %for.body.i348.i.for.end.i352.i_crit_edge ]
  %dest.addr.1.lcssa.i350.i = phi ptr [ %dest.addr.0.i331.i, %if.end.i334.i.for.end.i352.i_crit_edge ], [ %incdec.ptr8.i345.i, %for.body.i348.i.for.end.i352.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i349.i)
  %tobool9.not.i351.i = icmp eq i32 %i.0.lcssa.i349.i, 0
  br i1 %tobool9.not.i351.i, label %for.end.i352.i.atmel_copy_to_host.exit358.i_crit_edge, label %if.then10.i357.i

for.end.i352.i.atmel_copy_to_host.exit358.i_crit_edge: ; preds = %for.end.i352.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit358.i

if.then10.i357.i:                                 ; preds = %for.end.i352.i
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i29.i353.i = getelementptr inbounds %struct.net_device, ptr %601, i32 0, i32 5
  %615 = ptrtoint ptr %base_addr.i29.i353.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %base_addr.i29.i353.i, align 32
  %add.i30.i354.i = add i32 %616, 8
  %and.i31.i355.i = and i32 %add.i30.i354.i, 1048575
  %add1.i32.i356.i = or i32 %and.i31.i355.i, -18874368
  %617 = inttoptr i32 %add1.i32.i356.i to ptr
  %618 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %617) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %619 = ptrtoint ptr %dest.addr.1.lcssa.i350.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %618, ptr %dest.addr.1.lcssa.i350.i, align 1
  br label %atmel_copy_to_host.exit358.i

atmel_copy_to_host.exit358.i:                     ; preds = %if.then10.i357.i, %for.end.i352.i.atmel_copy_to_host.exit358.i_crit_edge
  %620 = call ptr @memset(ptr %frag_source68.i.i, i32 255, i32 6)
  %621 = ptrtoint ptr %do_rx_crc46.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %do_rx_crc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %tobool112.not.i = icmp eq i32 %622, 0
  br i1 %tobool112.not.i, label %atmel_copy_to_host.exit358.i.if.end128.i_crit_edge, label %if.then113.i

atmel_copy_to_host.exit358.i.if.end128.i_crit_edge: ; preds = %atmel_copy_to_host.exit358.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end128.i

if.then113.i:                                     ; preds = %atmel_copy_to_host.exit358.i
  %sub115.i = add i16 %210, -28
  %conv118.i = zext i16 %sub115.i to i32
  %call119.i = call i32 @crc32_le(i32 noundef %crc.0.i, ptr noundef %rx_buf76.i.i, i32 noundef %conv118.i) #21
  %xor.i = xor i32 %call119.i, -1
  %arrayidx.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 81, i32 %conv118.i
  %623 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %623, i32 4)
  %624 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %624, i32 %xor.i)
  %cmp121.not.i = icmp eq i32 %624, %xor.i
  br i1 %cmp121.not.i, label %if.then113.i.if.end128.i_crit_edge, label %if.then123.i

if.then113.i.if.end128.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end128.i

if.then123.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #19
  %625 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %dev.i, align 4
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %626, i32 0, i32 36, i32 12
  %627 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %rx_crc_errors.i, align 8
  %inc126.i = add i32 %628, 1
  store i32 %inc126.i, ptr %rx_crc_errors.i, align 8
  br label %next.i

if.end128.i:                                      ; preds = %if.then113.i.if.end128.i_crit_edge, %atmel_copy_to_host.exit358.i.if.end128.i_crit_edge
  %msdu_size.0.i = phi i16 [ %sub115.i, %if.then113.i.if.end128.i_crit_edge ], [ %sub78.i, %atmel_copy_to_host.exit358.i.if.end128.i_crit_edge ]
  %629 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %rx_desc_head.i, align 4
  %631 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %631)
  %632 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i360.i = mul i16 %630, 20
  %add.i361.i = add i16 %mul.i360.i, 11
  %add3.i362.i = add i16 %add.i361.i, %632
  %633 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %634, i16 noundef zeroext %add3.i362.i) #17
  %635 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i364.i = getelementptr inbounds %struct.net_device, ptr %636, i32 0, i32 5
  %637 = ptrtoint ptr %base_addr.i.i364.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %base_addr.i.i364.i, align 32
  %add.i.i365.i = add i32 %638, 8
  %and.i.i366.i = and i32 %add.i.i365.i, 1048575
  %add1.i.i367.i = or i32 %and.i.i366.i, -18874368
  %639 = inttoptr i32 %add1.i.i367.i to ptr
  %640 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %639) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %641 = ptrtoint ptr %header.i to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %header.i, align 2
  %643 = lshr i16 %642, 8
  %644 = and i16 %643, 240
  %conv2.i.i = zext i16 %644 to i32
  %645 = add nsw i32 %conv2.i.i, -16
  %646 = lshr exact i32 %645, 4
  %647 = zext i32 %646 to i64
  call void @__sanitizer_cov_trace_switch(i64 %647, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %646, label %if.end128.i.next.i_crit_edge [
    i32 7, label %if.end128.i.sw.bb.i.i_crit_edge
    i32 4, label %if.end128.i.sw.bb.i.i_crit_edge268
    i32 10, label %sw.bb71.i.i
    i32 0, label %if.end128.i.sw.bb77.i.i_crit_edge
    i32 2, label %if.end128.i.sw.bb77.i.i_crit_edge269
    i32 9, label %sw.bb87.i.i
    i32 11, label %sw.bb97.i.i
  ]

if.end128.i.sw.bb77.i.i_crit_edge269:             ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77.i.i

if.end128.i.sw.bb77.i.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77.i.i

if.end128.i.sw.bb.i.i_crit_edge268:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i

if.end128.i.sw.bb.i.i_crit_edge:                  ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i

if.end128.i.next.i_crit_edge:                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

sw.bb.i.i:                                        ; preds = %if.end128.i.sw.bb.i.i_crit_edge, %if.end128.i.sw.bb.i.i_crit_edge268
  %648 = ptrtoint ptr %rx_buf76.i.i to i32
  call void @__asan_load8_noabort(i32 %648)
  %649 = load i64, ptr %rx_buf76.i.i, align 8
  %650 = call i64 @llvm.bswap.i64(i64 %649) #17
  %651 = ptrtoint ptr %rates.i.i.i to i32
  call void @__asan_load2_noabort(i32 %651)
  %652 = load i16, ptr %rates.i.i.i, align 8
  %653 = call i16 @llvm.bswap.i16(i16 %652) #17
  %654 = ptrtoint ptr %capability4.i.i to i32
  call void @__asan_load2_noabort(i32 %654)
  %655 = load i16, ptr %capability4.i.i, align 2
  %656 = call i16 @llvm.bswap.i16(i16 %655) #17
  %657 = ptrtoint ptr %incdec.ptr.i227.i.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %incdec.ptr.i227.i.i, align 1
  %conv8.i369.i = zext i16 %msdu_size.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %msdu_size.0.i)
  %cmp.i370.i = icmp ult i16 %msdu_size.0.i, 14
  br i1 %cmp.i370.i, label %sw.bb.i.i.next.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.i.next.i_crit_edge:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %conv11.i.i = zext i8 %658 to i32
  %add.i371.i = add nuw nsw i32 %conv11.i.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i371.i, i32 %conv8.i369.i)
  %cmp12.i.i = icmp ugt i32 %add.i371.i, %conv8.i369.i
  br i1 %cmp12.i.i, label %lor.lhs.false.i.i.next.i_crit_edge, label %if.end.i374.i

lor.lhs.false.i.i.next.i_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.end.i374.i:                                    ; preds = %lor.lhs.false.i.i
  %arrayidx.i372.i = getelementptr i8, ptr %rx_buf76.i.i, i32 %add.i371.i
  %659 = ptrtoint ptr %arrayidx.i372.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %arrayidx.i372.i, align 1
  %conv19.i.i = zext i8 %660 to i32
  %add20.i373.i = add nuw nsw i32 %conv11.i.i, 18
  %add21.i.i = add nuw nsw i32 %add20.i373.i, %conv19.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i.i, i32 %conv8.i369.i)
  %cmp22.i.i = icmp ugt i32 %add21.i.i, %conv8.i369.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %658)
  %cmp27.i.i = icmp ugt i8 %658, 32
  %or.cond.i.i = select i1 %cmp22.i.i, i1 true, i1 %cmp27.i.i
  br i1 %or.cond.i.i, label %if.end.i374.i.next.i_crit_edge, label %if.end30.i.i

if.end.i374.i.next.i_crit_edge:                   ; preds = %if.end.i374.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.end30.i.i:                                     ; preds = %if.end.i374.i
  %arrayidx35.i375.i = getelementptr i8, ptr %rx_buf76.i.i, i32 %add21.i.i
  %661 = ptrtoint ptr %arrayidx35.i375.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %arrayidx35.i375.i, align 1
  %663 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %664)
  %cmp36.i.i = icmp eq i32 %664, 4
  br i1 %cmp36.i.i, label %if.then38.i378.i, label %if.end30.i.i.if.end55.i.i_crit_edge

if.end30.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55.i.i

if.then38.i378.i:                                 ; preds = %if.end30.i.i
  %665 = ptrtoint ptr %level.i547.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %level.i547.i, align 1
  %667 = ptrtoint ptr %firmware_type.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %firmware_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %668)
  %cond.i548.i = icmp eq i32 %668, 3
  %conv.i549.i = zext i8 %640 to i16
  %mul.i550.i = mul nuw nsw i16 %conv.i549.i, 100
  %conv1.i551.i = select i1 %cond.i548.i, i16 63, i16 42
  %div.i552.i = udiv i16 %mul.i550.i, %conv1.i551.i
  %669 = and i16 %div.i552.i, 255
  %conv3.i553.i = zext i16 %669 to i32
  %conv4.i554.i = zext i8 %666 to i32
  %add.i555.i = add nuw nsw i32 %conv3.i553.i, %conv4.i554.i
  %rem.i.i = and i32 %add.i555.i, 1
  %div1741.i.i = lshr i32 %add.i555.i, 1
  %storemerge.in.i.i = add nuw nsw i32 %div1741.i.i, %rem.i.i
  %storemerge.i.i = trunc i32 %storemerge.in.i.i to i8
  %670 = ptrtoint ptr %level.i547.i to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %storemerge.i.i, ptr %level.i547.i, align 1
  %671 = ptrtoint ptr %updated.i556.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %updated.i556.i, align 1
  %673 = and i8 %672, -35
  %674 = or i8 %673, 2
  store i8 %674, ptr %updated.i556.i, align 1
  %675 = and i16 %642, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %675)
  %tobool.not.i539.i = icmp eq i16 %675, 0
  br i1 %tobool.not.i539.i, label %if.else.i546.i, label %if.then.i543.i

if.then.i543.i:                                   ; preds = %if.then38.i378.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i542.i = call i32 @memcmp(ptr noundef dereferenceable(6) %24, ptr noundef dereferenceable(6) %CurrentBSSID, i32 noundef 6) #22
  br label %is_frame_from_current_bss.exit.i

if.else.i546.i:                                   ; preds = %if.then38.i378.i
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i545.i = call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %CurrentBSSID, i32 6) #22
  br label %is_frame_from_current_bss.exit.i

is_frame_from_current_bss.exit.i:                 ; preds = %if.else.i546.i, %if.then.i543.i
  %retval.0.in.in.i.i = phi i32 [ %call.i542.i, %if.then.i543.i ], [ %bcmp.i545.i, %if.else.i546.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in.i.i)
  %retval.0.in.i.not.i = icmp eq i32 %retval.0.in.in.i.i, 0
  br i1 %retval.0.in.i.not.i, label %if.then39.i.i, label %is_frame_from_current_bss.exit.i.if.end55thread-pre-split.i.i_crit_edge

is_frame_from_current_bss.exit.i.if.end55thread-pre-split.i.i_crit_edge: ; preds = %is_frame_from_current_bss.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55thread-pre-split.i.i

if.then39.i.i:                                    ; preds = %is_frame_from_current_bss.exit.i
  %676 = ptrtoint ptr %beacons_this_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %beacons_this_sec.i.i, align 8
  %inc.i379.i = add i32 %677, 1
  store i32 %inc.i379.i, ptr %beacons_this_sec.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %678 = load volatile i32, ptr @jiffies, align 128
  %679 = ptrtoint ptr %last_qual.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %last_qual.i.i, align 4
  %sub.i533.i = sub i32 %678, %680
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i533.i)
  %681 = icmp ult i32 %sub.i533.i, 100
  br i1 %681, label %if.then39.i.i.atmel_smooth_qual.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then39.i.i.atmel_smooth_qual.exit.i_crit_edge: ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_smooth_qual.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then39.i.i
  %div.i534.i = udiv i32 %sub.i533.i, 100
  %682 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %conv10.i.i = and i32 %storemerge.in.i.i, 255
  %add11.i.i = add nuw nsw i32 %conv10.i.i, 100
  %684 = ptrtoint ptr %qual.i.i to i32
  call void @__asan_load1_noabort(i32 %684)
  %qual.promoted.i.i = load i8, ptr %qual.i.i, align 2
  %685 = mul nuw i32 %div.i534.i, 100
  %dec.peel.i.i = add nsw i32 %div.i534.i, -1
  %686 = lshr i8 %qual.promoted.i.i, 1
  %mul.peel.i.i = mul i32 %inc.i379.i, %add11.i.i
  %mul12.peel.i.i = mul i32 %mul.peel.i.i, %683
  %div13.peel.i.i = sdiv i32 %mul12.peel.i.i, 4000
  %687 = trunc i32 %div13.peel.i.i to i8
  %conv19.peel.i.i = add i8 %686, %687
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.peel.i.i)
  %tobool.not.peel.i.i = icmp eq i32 %dec.peel.i.i, 0
  br i1 %tobool.not.peel.i.i, label %while.body.lr.ph.i.i.while.cond.while.end_crit_edge.i.i_crit_edge, label %while.body.lr.ph.i.i.while.body.i.i_crit_edge

while.body.lr.ph.i.i.while.body.i.i_crit_edge:    ; preds = %while.body.lr.ph.i.i
  br label %while.body.i.i

while.body.lr.ph.i.i.while.cond.while.end_crit_edge.i.i_crit_edge: ; preds = %while.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.while.end_crit_edge.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i.while.body.i.i_crit_edge
  %688 = phi i8 [ %689, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv19.peel.i.i, %while.body.lr.ph.i.i.while.body.i.i_crit_edge ]
  %time_diff.041.i.i = phi i32 [ %dec.i537.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dec.peel.i.i, %while.body.lr.ph.i.i.while.body.i.i_crit_edge ]
  %dec.i537.i = add i32 %time_diff.041.i.i, -1
  %689 = lshr i8 %688, 1
  %tobool.not.i538.i = icmp eq i32 %dec.i537.i, 0
  br i1 %tobool.not.i538.i, label %while.body.i.i.while.cond.while.end_crit_edge.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge, !llvm.loop !322

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.while.cond.while.end_crit_edge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.while.end_crit_edge.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i.while.cond.while.end_crit_edge.i.i_crit_edge, %while.body.lr.ph.i.i.while.cond.while.end_crit_edge.i.i_crit_edge
  %conv19.lcssa.i.i = phi i8 [ %conv19.peel.i.i, %while.body.lr.ph.i.i.while.cond.while.end_crit_edge.i.i_crit_edge ], [ %689, %while.body.i.i.while.cond.while.end_crit_edge.i.i_crit_edge ]
  %690 = add i32 %685, %680
  %691 = ptrtoint ptr %last_qual.i.i to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 %690, ptr %last_qual.i.i, align 4
  %692 = ptrtoint ptr %qual.i.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %conv19.lcssa.i.i, ptr %qual.i.i, align 2
  %693 = ptrtoint ptr %beacons_this_sec.i.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 0, ptr %beacons_this_sec.i.i, align 8
  br label %atmel_smooth_qual.exit.i

atmel_smooth_qual.exit.i:                         ; preds = %while.cond.while.end_crit_edge.i.i, %if.then39.i.i.atmel_smooth_qual.exit.i_crit_edge
  %694 = and i8 %674, -50
  %695 = or i8 %694, 1
  %696 = ptrtoint ptr %updated.i556.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 %695, ptr %updated.i556.i, align 1
  %697 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_load8_noabort(i32 %697)
  %698 = load i64, ptr %last_beacon_timestamp.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %698)
  %tobool40.not.i.i = icmp eq i64 %698, 0
  br i1 %tobool40.not.i.i, label %atmel_smooth_qual.exit.i.if.end52.i.i_crit_edge, label %if.then41.i.i

atmel_smooth_qual.exit.i.if.end52.i.i_crit_edge:  ; preds = %atmel_smooth_qual.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52.i.i

if.then41.i.i:                                    ; preds = %atmel_smooth_qual.exit.i
  %sub.i380.i = sub i64 %650, %698
  %conv43.i.i = trunc i64 %sub.i380.i to i32
  %conv44.i.i = zext i16 %653 to i32
  %mul.i381.i = mul nuw nsw i32 %conv44.i.i, 1000
  %div.i.i = udiv i32 %conv43.i.i, %mul.i381.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i.i)
  %cmp45.i.i = icmp sgt i32 %div.i.i, 1
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.then41.i.i.if.end52.i.i_crit_edge

if.then41.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52.i.i

if.then47.i.i:                                    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub48.i.i = add nsw i32 %div.i.i, -1
  %699 = ptrtoint ptr %miss.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %miss.i.i, align 4
  %add50.i.i = add i32 %sub48.i.i, %700
  store i32 %add50.i.i, ptr %miss.i.i, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then47.i.i, %if.then41.i.i.if.end52.i.i_crit_edge, %atmel_smooth_qual.exit.i.if.end52.i.i_crit_edge
  %701 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %701)
  store i64 %650, ptr %last_beacon_timestamp.i225, align 8
  %702 = lshr i16 %656, 5
  %.lobit.i.i = and i16 %702, 1
  %703 = zext i16 %.lobit.i.i to i32
  %704 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %705, i32 %703)
  %cmp.not.i513.i = icmp eq i32 %705, %703
  br i1 %cmp.not.i513.i, label %if.end.i514.i, label %if.end.thread.i.i

if.end.i514.i:                                    ; preds = %if.end52.i.i
  %706 = ptrtoint ptr %channel435.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %channel435.i.i, align 4
  %conv5.i.i = zext i8 %662 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %707, i32 %conv5.i.i)
  %cmp6.not.i.i = icmp eq i32 %707, %conv5.i.i
  br i1 %cmp6.not.i.i, label %if.end.i514.i.if.end55thread-pre-split.i.i_crit_edge, label %if.end.i514.i.if.end11.thread.i.i_crit_edge

if.end.i514.i.if.end11.thread.i.i_crit_edge:      ; preds = %if.end.i514.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.thread.i.i

if.end.i514.i.if.end55thread-pre-split.i.i_crit_edge: ; preds = %if.end.i514.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55thread-pre-split.i.i

if.end.thread.i.i:                                ; preds = %if.end52.i.i
  %708 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 %703, ptr %preamble.i.i186.i.i, align 8
  %conv3.i.i = trunc i16 %.lobit.i.i to i8
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 9, i8 noundef zeroext %conv3.i.i) #17
  %709 = ptrtoint ptr %channel435.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %channel435.i.i, align 4
  %conv536.i.i = zext i8 %662 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %710, i32 %conv536.i.i)
  %cmp6.not37.i.i = icmp eq i32 %710, %conv536.i.i
  br i1 %cmp6.not37.i.i, label %if.end.thread.i.i.if.then13.i518.i_crit_edge, label %if.end.thread.i.i.if.end11.thread.i.i_crit_edge

if.end.thread.i.i.if.end11.thread.i.i_crit_edge:  ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.thread.i.i

if.end.thread.i.i.if.then13.i518.i_crit_edge:     ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13.i518.i

if.end11.thread.i.i:                              ; preds = %if.end.thread.i.i.if.end11.thread.i.i_crit_edge, %if.end.i514.i.if.end11.thread.i.i_crit_edge
  %conv539.i.i = phi i32 [ %conv536.i.i, %if.end.thread.i.i.if.end11.thread.i.i_crit_edge ], [ %conv5.i.i, %if.end.i514.i.if.end11.thread.i.i_crit_edge ]
  %711 = ptrtoint ptr %channel435.i.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %conv539.i.i, ptr %channel435.i.i, align 4
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext 14, i8 noundef zeroext %662) #17
  br label %if.then13.i518.i

if.then13.i518.i:                                 ; preds = %if.end11.thread.i.i, %if.end.thread.i.i.if.then13.i518.i_crit_edge
  %712 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 0, ptr %station_is_associated64.i, align 8
  %713 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %714)
  %cmp.i.i517.i = icmp eq i32 %714, 1
  br i1 %cmp.i.i517.i, label %if.then13.i518.i.atmel_enter_state.exit.i532.i_crit_edge, label %if.end.i.i520.i

if.then13.i518.i.atmel_enter_state.exit.i532.i_crit_edge: ; preds = %if.then13.i518.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit.i532.i

if.end.i.i520.i:                                  ; preds = %if.then13.i518.i
  %715 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 1, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %714)
  %cmp6.i.i519.i = icmp eq i32 %714, 4
  br i1 %cmp6.i.i519.i, label %if.then7.i.i525.i, label %if.end.i.i520.i.atmel_enter_state.exit.i532.i_crit_edge

if.end.i.i520.i.atmel_enter_state.exit.i532.i_crit_edge: ; preds = %if.end.i.i520.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit.i532.i

if.then7.i.i525.i:                                ; preds = %if.end.i.i520.i
  %716 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %717) #17
  %718 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %dev.i, align 4
  %state.i.i.i522.i = getelementptr inbounds %struct.net_device, ptr %719, i32 0, i32 6
  %720 = ptrtoint ptr %state.i.i.i522.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load volatile i32, ptr %state.i.i.i522.i, align 4
  %and1.i.i.i.i523.i = and i32 %721, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i523.i)
  %tobool.i.not.i.i524.i = icmp eq i32 %and1.i.i.i.i523.i, 0
  br i1 %tobool.i.not.i.i524.i, label %if.then7.i.i525.i.if.end12.i.i530.i_crit_edge, label %if.then10.i.i528.i

if.then7.i.i525.i.if.end12.i.i530.i_crit_edge:    ; preds = %if.then7.i.i525.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i.i530.i

if.then10.i.i528.i:                               ; preds = %if.then7.i.i525.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i.i526.i = getelementptr inbounds %struct.net_device, ptr %719, i32 0, i32 103
  %722 = ptrtoint ptr %_tx.i.i24.i.i526.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %_tx.i.i24.i.i526.i, align 128
  %state.i.i25.i.i527.i = getelementptr inbounds %struct.netdev_queue, ptr %723, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i.i527.i) #17
  br label %if.end12.i.i530.i

if.end12.i.i530.i:                                ; preds = %if.then10.i.i528.i, %if.then7.i.i525.i.if.end12.i.i530.i_crit_edge
  %724 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %724)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit.i532.i

atmel_enter_state.exit.i532.i:                    ; preds = %if.end12.i.i530.i, %if.end.i.i520.i.atmel_enter_state.exit.i532.i_crit_edge, %if.then13.i518.i.atmel_enter_state.exit.i532.i_crit_edge
  %725 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %726)
  %cmp14.i.i = icmp eq i32 %726, 2
  %..i.i = select i1 %cmp14.i.i, i32 2, i32 1
  call fastcc void @join(ptr noundef %add.ptr.i, i32 noundef %..i.i) #17
  br label %if.end55thread-pre-split.i.i

if.end55thread-pre-split.i.i:                     ; preds = %atmel_enter_state.exit.i532.i, %if.end.i514.i.if.end55thread-pre-split.i.i_crit_edge, %is_frame_from_current_bss.exit.i.if.end55thread-pre-split.i.i_crit_edge
  %727 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %727)
  %.pr.i.i = load i32, ptr %station_state, align 8
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.end55thread-pre-split.i.i, %if.end30.i.i.if.end55.i.i_crit_edge
  %728 = phi i32 [ %.pr.i.i, %if.end55thread-pre-split.i.i ], [ %664, %if.end30.i.i.if.end55.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %728)
  %cmp57.i.i = icmp eq i32 %728, 0
  br i1 %cmp57.i.i, label %if.then59.i.i, label %if.end55.i.i.next.i_crit_edge

if.end55.i.i.next.i_crit_edge:                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then59.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %644)
  %cmp61.i.not.i = icmp eq i16 %644, 128
  %conv.i.i = zext i16 %656 to i32
  %and.i.i168 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i499.i = icmp eq i32 %and.i.i168, 0
  %cond.i.i = select i1 %tobool.not.i499.i, ptr %24, ptr %23
  %729 = ptrtoint ptr %BSS_list_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %BSS_list_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %730)
  %cmp121.i.i = icmp sgt i32 %730, 0
  br i1 %cmp121.i.i, label %if.then59.i.i.for.body.i505.i_crit_edge, label %if.then59.i.i.if.end13.i.i_crit_edge

if.then59.i.i.if.end13.i.i_crit_edge:             ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i.i

if.then59.i.i.for.body.i505.i_crit_edge:          ; preds = %if.then59.i.i
  br label %for.body.i505.i

for.body.i505.i:                                  ; preds = %for.body.i505.i.for.body.i505.i_crit_edge, %if.then59.i.i.for.body.i505.i_crit_edge
  %index.0123.i.i = phi i32 [ %spec.select.i503.i, %for.body.i505.i.for.body.i505.i_crit_edge ], [ -1, %if.then59.i.i.for.body.i505.i_crit_edge ]
  %i.0122.i.i = phi i32 [ %inc.i504.i, %for.body.i505.i.for.body.i505.i_crit_edge ], [ 0, %if.then59.i.i.for.body.i505.i_crit_edge ]
  %BSSID.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0122.i.i, i32 7
  %bcmp.i502.i = call i32 @bcmp(ptr noundef dereferenceable(6) %cond.i.i, ptr noundef dereferenceable(6) %BSSID.i.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i502.i)
  %cmp4.i.i = icmp eq i32 %bcmp.i502.i, 0
  %spec.select.i503.i = select i1 %cmp4.i.i, i32 %i.0122.i.i, i32 %index.0123.i.i
  %inc.i504.i = add nuw nsw i32 %i.0122.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i504.i, %730
  br i1 %exitcond.not.i.i, label %for.end.i507.i, label %for.body.i505.i.for.body.i505.i_crit_edge

for.body.i505.i.for.body.i505.i_crit_edge:        ; preds = %for.body.i505.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i505.i

for.end.i507.i:                                   ; preds = %for.body.i505.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i503.i)
  %cmp6.i506.i = icmp eq i32 %spec.select.i503.i, -1
  br i1 %cmp6.i506.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %for.end.i507.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %730)
  %cmp10.i.i = icmp eq i32 %730, 64
  br i1 %cmp10.i.i, label %if.then8.i.i.next.i_crit_edge, label %if.then8.i.i.if.end13.i.i_crit_edge

if.then8.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i.i

if.then8.i.i.next.i_crit_edge:                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.end13.i.i:                                     ; preds = %if.then8.i.i.if.end13.i.i_crit_edge, %if.then59.i.i.if.end13.i.i_crit_edge
  %inc15.i.i = add i32 %730, 1
  %731 = ptrtoint ptr %BSS_list_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %inc15.i.i, ptr %BSS_list_entries.i.i, align 8
  %BSSID18.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %730, i32 7
  %732 = call ptr @memcpy(ptr %BSSID18.i.i, ptr %cond.i.i, i32 6)
  %conv20.i.i = zext i8 %640 to i32
  %RSSI.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %730, i32 2
  %733 = ptrtoint ptr %RSSI.i.i to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %conv20.i.i, ptr %RSSI.i.i, align 4
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %for.end.i507.i
  %conv23.i.i = zext i8 %640 to i32
  %RSSI26.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %spec.select.i503.i, i32 2
  %734 = ptrtoint ptr %RSSI26.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %RSSI26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %735, i32 %conv23.i.i)
  %cmp27.i508.i = icmp slt i32 %735, %conv23.i.i
  br i1 %cmp27.i508.i, label %if.then29.i.i, label %if.else.i.i.if.end34.i.i_crit_edge

if.else.i.i.if.end34.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %736 = ptrtoint ptr %RSSI26.i.i to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 %conv23.i.i, ptr %RSSI26.i.i, align 4
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then29.i.i, %if.else.i.i.if.end34.i.i_crit_edge
  br i1 %cmp61.i.not.i, label %if.end34.i.i.next.i_crit_edge, label %if.end34.i.i.if.end38.i.i_crit_edge

if.end34.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i.i

if.end34.i.i.next.i_crit_edge:                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.end38.i.i:                                     ; preds = %if.end34.i.i.if.end38.i.i_crit_edge, %if.end13.i.i
  %index.2.i.i = phi i32 [ %730, %if.end13.i.i ], [ %spec.select.i503.i, %if.end34.i.i.if.end38.i.i_crit_edge ]
  %conv39.i.i = zext i8 %662 to i32
  %arrayidx41.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i
  %737 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 %conv39.i.i, ptr %arrayidx41.i.i, align 4
  %conv43.i509.i = zext i16 %653 to i32
  %beacon_period46.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 5
  %738 = ptrtoint ptr %beacon_period46.i.i to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 %conv43.i509.i, ptr %beacon_period46.i.i, align 4
  %and48.i.i = and i32 %conv.i.i, 16
  %UsingWEP.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 3
  %739 = ptrtoint ptr %UsingWEP.i.i to i32
  call void @__asan_store4_noabort(i32 %739)
  store i32 %and48.i.i, ptr %UsingWEP.i.i, align 4
  %SSID.i510.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 8
  %740 = call ptr @memcpy(ptr %SSID.i510.i, ptr %rates_el_id.i.i, i32 %conv11.i.i)
  %SSIDsize.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 1
  %741 = ptrtoint ptr %SSIDsize.i.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 %conv11.i.i, ptr %SSIDsize.i.i, align 4
  %and59.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp ne i32 %and59.i.i, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i499.i, true
  %brmerge.i.i = or i1 %tobool60.not.i.i, %tobool.not.not.i.i
  br i1 %brmerge.i.i, label %if.end73.sink.split.i.i, label %if.end38.i.i.if.end73.i.i_crit_edge

if.end38.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73.i.i

if.end73.sink.split.i.i:                          ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %.mux.i.i = select i1 %tobool60.not.i.i, i32 1, i32 2
  %BSStype71.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 6
  %742 = ptrtoint ptr %BSStype71.i.i to i32
  call void @__asan_store4_noabort(i32 %742)
  store i32 %.mux.i.i, ptr %BSStype71.i.i, align 4
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.end73.sink.split.i.i, %if.end38.i.i.if.end73.i.i_crit_edge
  %and75.i.i = lshr i32 %conv.i.i, 5
  %and75.lobit.i.i = and i32 %and75.i.i, 1
  %preamble.i511.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %index.2.i.i, i32 4
  %743 = ptrtoint ptr %preamble.i511.i to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 %and75.lobit.i.i, ptr %preamble.i511.i, align 4
  br label %next.i

sw.bb71.i.i:                                      ; preds = %if.end128.i
  %744 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %745)
  %cmp73.i.i = icmp eq i32 %745, 2
  br i1 %cmp73.i.i, label %if.then75.i.i, label %sw.bb71.i.i.next.i_crit_edge

sw.bb71.i.i.next.i_crit_edge:                     ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then75.i.i:                                    ; preds = %sw.bb71.i.i
  %746 = ptrtoint ptr %ass_id2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %746)
  %747 = load i16, ptr %ass_id2.i.i.i, align 2
  %748 = ptrtoint ptr %status1.i173.i.i to i32
  call void @__asan_load2_noabort(i32 %748)
  %749 = load i16, ptr %status1.i173.i.i, align 2
  %750 = call i16 @llvm.bswap.i16(i16 %749) #17
  %751 = ptrtoint ptr %rx_buf76.i.i to i32
  call void @__asan_load2_noabort(i32 %751)
  %752 = load i16, ptr %rx_buf76.i.i, align 2
  %753 = zext i16 %747 to i64
  call void @__sanitizer_cov_trace_switch(i64 %753, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %747, label %if.then75.i.i.if.end91.i.i.i_crit_edge [
    i16 0, label %land.lhs.true.i.i.i
    i16 3328, label %if.then62.i.i.i
  ]

if.then75.i.i.if.end91.i.i.i_crit_edge:           ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then75.i.i
  %754 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %755)
  %tobool.not.i.i382.i = icmp eq i8 %755, 0
  br i1 %tobool.not.i.i382.i, label %if.then.i.i383.i, label %if.then12.i.i.i

if.then.i.i383.i:                                 ; preds = %land.lhs.true.i.i.i
  %756 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %station_was_associated65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %757)
  %tobool3.not.i.i.i = icmp eq i32 %757, 0
  br i1 %tobool3.not.i.i.i, label %atmel_enter_state.exit22.i.i.i, label %atmel_enter_state.exit.i.i.i

atmel_enter_state.exit.i.i.i:                     ; preds = %if.then.i.i383.i
  call void @__sanitizer_cov_trace_pc() #19
  %758 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %758)
  store i32 5, ptr %station_state, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i.i.i.i) #17
  %759 = call ptr @memset(ptr %79, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i.i.i.i) #17
  %760 = ptrtoint ptr %header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %760)
  store i16 8192, ptr %header.i.i.i.i, align 2
  %761 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %761)
  store i16 128, ptr %74, align 2
  %762 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %762)
  store i16 0, ptr %78, align 2
  %763 = call ptr @memcpy(ptr %75, ptr %CurrentBSSID, i32 6)
  %764 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %dev.i, align 4
  %dev_addr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %765, i32 0, i32 86
  %766 = ptrtoint ptr %dev_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %dev_addr.i.i.i.i, align 64
  %768 = call ptr @memcpy(ptr %76, ptr %767, i32 6)
  %769 = call ptr @memcpy(ptr %77, ptr %CurrentBSSID, i32 6)
  %770 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %771)
  %cmp.i7.i.i.i = icmp eq i32 %771, 1
  %spec.store.select.i = select i1 %cmp.i7.i.i.i, i16 8448, i16 256
  %772 = ptrtoint ptr %body.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %772)
  store i16 %spec.store.select.i, ptr %body.i.i.i.i, align 2
  %773 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %775 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i.i.i.i = mul i32 %776, %774
  %conv18.i.i.i.i = trunc i32 %mul.i.i.i.i to i16
  %777 = call i16 @llvm.bswap.i16(i16 %conv18.i.i.i.i) #17
  %778 = ptrtoint ptr %listen_interval19.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %778)
  store i16 %777, ptr %listen_interval19.i.i.i.i, align 2
  %779 = call ptr @memcpy(ptr %80, ptr %CurrentBSSID, i32 6)
  %780 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %SSID_size.i, align 4
  %add27.i.i.i.i = add i32 %781, 18
  %782 = ptrtoint ptr %ssid_el_id.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 0, ptr %ssid_el_id.i.i.i.i, align 2
  %conv31.i.i.i.i = trunc i32 %781 to i8
  %783 = ptrtoint ptr %arrayidx32.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 %conv31.i.i.i.i, ptr %arrayidx32.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %781)
  %784 = icmp ugt i32 %781, 37
  %785 = sub i32 38, %781
  %786 = select i1 %784, i32 0, i32 %785
  %787 = getelementptr i8, ptr %81, i32 %781
  %788 = call ptr @memset(ptr %787, i32 255, i32 %786)
  %789 = call ptr @memcpy(ptr %81, ptr %SSID.i.i199.i.i, i32 %781)
  %add36.i.i.i.i = add i32 %781, 2
  %arrayidx37.i.i.i.i = getelementptr i8, ptr %ssid_el_id.i.i.i.i, i32 %add36.i.i.i.i
  %790 = ptrtoint ptr %arrayidx37.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 1, ptr %arrayidx37.i.i.i.i, align 1
  %add39.i.i.i.i = add i32 %781, 3
  %arrayidx40.i.i.i.i = getelementptr i8, ptr %ssid_el_id.i.i.i.i, i32 %add39.i.i.i.i
  %791 = ptrtoint ptr %arrayidx40.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 4, ptr %arrayidx40.i.i.i.i, align 1
  %add.ptr43.i.i.i.i = getelementptr i8, ptr %add.ptr41.i.i.i.i, i32 %781
  %792 = load i32, ptr @atmel_basic_rates, align 4
  %793 = ptrtoint ptr %add.ptr43.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %793, i32 4)
  store i32 %792, ptr %add.ptr43.i.i.i.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i.i.i.i, ptr noundef nonnull %body.i.i.i.i, i32 noundef %add27.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i.i.i.i) #17
  br label %next.i

atmel_enter_state.exit22.i.i.i:                   ; preds = %if.then.i.i383.i
  call void @__sanitizer_cov_trace_pc() #19
  %794 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %794)
  store i32 3, ptr %station_state, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i23.i.i.i) #17
  %795 = call ptr @memset(ptr %87, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i24.i.i.i) #17
  %796 = ptrtoint ptr %header.i23.i.i.i to i32
  call void @__asan_store2_noabort(i32 %796)
  store i16 0, ptr %header.i23.i.i.i, align 2
  %797 = ptrtoint ptr %82 to i32
  call void @__asan_store2_noabort(i32 %797)
  store i16 128, ptr %82, align 2
  %798 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %798)
  store i16 0, ptr %86, align 2
  %799 = call ptr @memcpy(ptr %83, ptr %CurrentBSSID, i32 6)
  %800 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %dev.i, align 4
  %dev_addr.i27.i.i.i = getelementptr inbounds %struct.net_device, ptr %801, i32 0, i32 86
  %802 = ptrtoint ptr %dev_addr.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %dev_addr.i27.i.i.i, align 64
  %804 = call ptr @memcpy(ptr %84, ptr %803, i32 6)
  %805 = call ptr @memcpy(ptr %85, ptr %CurrentBSSID, i32 6)
  %806 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %807)
  %cmp.i32.i.i.i = icmp eq i32 %807, 1
  %spec.store.select557.i = select i1 %cmp.i32.i.i.i, i16 8448, i16 256
  %808 = ptrtoint ptr %body.i24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %808)
  store i16 %spec.store.select557.i, ptr %body.i24.i.i.i, align 2
  %809 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %811 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i36.i.i.i = mul i32 %812, %810
  %conv18.i37.i.i.i = trunc i32 %mul.i36.i.i.i to i16
  %813 = call i16 @llvm.bswap.i16(i16 %conv18.i37.i.i.i) #17
  %814 = ptrtoint ptr %listen_interval19.i38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %814)
  store i16 %813, ptr %listen_interval19.i38.i.i.i, align 2
  %815 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %SSID_size.i, align 4
  %add27.i41.i.i.i = add i32 %816, 12
  %817 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %817)
  store i8 0, ptr %88, align 2
  %conv31.i42.i.i.i = trunc i32 %816 to i8
  %818 = ptrtoint ptr %arrayidx32.i43.i.i.i to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 %conv31.i42.i.i.i, ptr %arrayidx32.i43.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %816)
  %819 = icmp ugt i32 %816, 43
  %820 = sub i32 44, %816
  %821 = select i1 %819, i32 0, i32 %820
  %822 = getelementptr i8, ptr %89, i32 %816
  %823 = call ptr @memset(ptr %822, i32 255, i32 %821)
  %824 = call ptr @memcpy(ptr %89, ptr %SSID.i.i199.i.i, i32 %816)
  %add36.i46.i.i.i = add i32 %816, 2
  %arrayidx37.i47.i.i.i = getelementptr i8, ptr %88, i32 %add36.i46.i.i.i
  %825 = ptrtoint ptr %arrayidx37.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %825)
  store i8 1, ptr %arrayidx37.i47.i.i.i, align 1
  %add39.i48.i.i.i = add i32 %816, 3
  %arrayidx40.i49.i.i.i = getelementptr i8, ptr %88, i32 %add39.i48.i.i.i
  %826 = ptrtoint ptr %arrayidx40.i49.i.i.i to i32
  call void @__asan_store1_noabort(i32 %826)
  store i8 4, ptr %arrayidx40.i49.i.i.i, align 1
  %add.ptr43.i51.i.i.i = getelementptr i8, ptr %add.ptr41.i50.i.i.i, i32 %816
  %827 = load i32, ptr @atmel_basic_rates, align 4
  %828 = ptrtoint ptr %add.ptr43.i51.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %828, i32 4)
  store i32 %827, ptr %add.ptr43.i51.i.i.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i23.i.i.i, ptr noundef nonnull %body.i24.i.i.i, i32 noundef %add27.i41.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i24.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i23.i.i.i) #17
  br label %next.i

if.then12.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %conv13.i.i.i = zext i16 %750 to i32
  %829 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %830, i32 %conv13.i.i.i)
  %cmp14.not.i.i.i = icmp eq i32 %830, %conv13.i.i.i
  br i1 %cmp14.not.i.i.i, label %if.end17.i.i.i, label %if.then12.i.i.i.next.i_crit_edge

if.then12.i.i.i.next.i_crit_edge:                 ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.end17.i.i.i:                                   ; preds = %if.then12.i.i.i
  %831 = zext i16 %752 to i64
  call void @__sanitizer_cov_trace_switch(i64 %831, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %752, label %if.end17.i.i.i.if.end91.i.i.i_crit_edge [
    i16 0, label %if.then21.i.i.i
    i16 256, label %if.then31.i.i.i
  ]

if.end17.i.i.i.if.end91.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %749)
  %cmp23.not.i.i.i = icmp eq i16 %749, 512
  br i1 %cmp23.not.i.i.i, label %if.then21.i.i.i.if.then52.i.i.i_crit_edge, label %if.then21.i.i.i.if.end91.i.i.i_crit_edge

if.then21.i.i.i.if.end91.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

if.then21.i.i.i.if.then52.i.i.i_crit_edge:        ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end17.i.i.i
  %832 = zext i16 %749 to i64
  call void @__sanitizer_cov_trace_switch(i64 %832, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %749, label %if.then31.i.i.i.if.end91.i.i.i_crit_edge [
    i16 512, label %land.lhs.true35.i.i.i
    i16 1024, label %if.then31.i.i.i.if.then52.i.i.i_crit_edge
  ]

if.then31.i.i.i.if.then52.i.i.i_crit_edge:        ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52.i.i.i

if.then31.i.i.i.if.end91.i.i.i_crit_edge:         ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

land.lhs.true35.i.i.i:                            ; preds = %if.then31.i.i.i
  %833 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %834)
  %cmp37.i.i.i = icmp eq i8 %834, 16
  br i1 %cmp37.i.i.i, label %land.lhs.true.i493.i, label %land.lhs.true35.i.i.i.if.end91.i.i.i_crit_edge

land.lhs.true35.i.i.i.if.end91.i.i.i_crit_edge:   ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

land.lhs.true.i493.i:                             ; preds = %land.lhs.true35.i.i.i
  %835 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %835)
  %836 = load i8, ptr %length.i.i.i, align 1
  %conv41.i.i.i = zext i8 %836 to i32
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i486.i) #17
  %837 = call ptr @memset(ptr %91, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %auth.i.i) #17
  %838 = call ptr @memset(ptr %61, i32 255, i32 256)
  %839 = ptrtoint ptr %header.i486.i to i32
  call void @__asan_store2_noabort(i32 %839)
  store i16 -20480, ptr %header.i486.i, align 2
  %840 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %840)
  store i16 128, ptr %56, align 2
  %841 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %841)
  store i16 0, ptr %60, align 2
  %842 = call ptr @memcpy(ptr %57, ptr %CurrentBSSID, i32 6)
  %843 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %dev.i, align 4
  %dev_addr.i489.i = getelementptr inbounds %struct.net_device, ptr %844, i32 0, i32 86
  %845 = ptrtoint ptr %dev_addr.i489.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %dev_addr.i489.i, align 64
  %847 = call ptr @memcpy(ptr %58, ptr %846, i32 6)
  %848 = call ptr @memcpy(ptr %59, ptr %CurrentBSSID, i32 6)
  %849 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %850)
  %cmp.not.i492.i = icmp eq i32 %850, 1
  br i1 %cmp.not.i492.i, label %land.lhs.true.i493.i.if.end.i497.i_crit_edge, label %if.then.i494.i

land.lhs.true.i493.i.if.end.i497.i_crit_edge:     ; preds = %land.lhs.true.i493.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i497.i

if.then.i494.i:                                   ; preds = %land.lhs.true.i493.i
  call void @__sanitizer_cov_trace_pc() #19
  %851 = ptrtoint ptr %header.i486.i to i32
  call void @__asan_store2_noabort(i32 %851)
  store i16 -20416, ptr %header.i486.i, align 2
  br label %if.end.i497.i

if.end.i497.i:                                    ; preds = %if.then.i494.i, %land.lhs.true.i493.i.if.end.i497.i_crit_edge
  %852 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_store2_noabort(i32 %852)
  store i16 256, ptr %auth.i.i, align 2
  %853 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %853)
  store i16 0, ptr %status.i.i, align 2
  %conv11.i495.i = trunc i32 %850 to i16
  %854 = call i16 @llvm.bswap.i16(i16 %conv11.i495.i) #17
  %855 = ptrtoint ptr %trans_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %855)
  store i16 %854, ptr %trans_seq.i.i, align 2
  %add.i496.i = add i32 %850, 1
  %856 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 %add.i496.i, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  %add14.i.i = add i32 %850, 2
  %857 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 %add14.i.i, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %836)
  %cmp15.not.i.i = icmp eq i8 %836, 0
  br i1 %cmp15.not.i.i, label %if.end.i497.i.send_authentication_request.exit.i_crit_edge, label %if.then17.i.i

if.end.i497.i.send_authentication_request.exit.i_crit_edge: ; preds = %if.end.i497.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_authentication_request.exit.i

if.then17.i.i:                                    ; preds = %if.end.i497.i
  call void @__sanitizer_cov_trace_pc() #19
  %858 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %858)
  store i8 16, ptr %61, align 2
  %859 = ptrtoint ptr %chall_text_len.i.i to i32
  call void @__asan_store1_noabort(i32 %859)
  store i8 %836, ptr %chall_text_len.i.i, align 1
  %860 = call ptr @memcpy(ptr %chall_text.i.i, ptr %rates.i.i.i, i32 %conv41.i.i.i)
  %add20.i498.i = add nuw nsw i32 %conv41.i.i.i, 8
  br label %send_authentication_request.exit.i

send_authentication_request.exit.i:               ; preds = %if.then17.i.i, %if.end.i497.i.send_authentication_request.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %add20.i498.i, %if.then17.i.i ], [ 6, %if.end.i497.i.send_authentication_request.exit.i_crit_edge ]
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i486.i, ptr noundef nonnull %auth.i.i, i32 noundef %.sink.i.i) #17
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %auth.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i486.i) #17
  br label %next.i

if.then52.i.i.i:                                  ; preds = %if.then31.i.i.i.if.then52.i.i.i_crit_edge, %if.then21.i.i.i.if.then52.i.i.i_crit_edge
  %861 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %station_was_associated65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %862)
  %tobool54.not.i.i.i = icmp eq i32 %862, 0
  br i1 %tobool54.not.i.i.i, label %atmel_enter_state.exit.i, label %atmel_enter_state.exit485.i

atmel_enter_state.exit485.i:                      ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %863 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 5, ptr %station_state, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i441.i) #17
  %864 = call ptr @memset(ptr %92, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i442.i) #17
  %865 = ptrtoint ptr %header.i441.i to i32
  call void @__asan_store2_noabort(i32 %865)
  store i16 8192, ptr %header.i441.i, align 2
  %866 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %866)
  store i16 128, ptr %62, align 2
  %867 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %867)
  store i16 0, ptr %66, align 2
  %868 = call ptr @memcpy(ptr %63, ptr %CurrentBSSID, i32 6)
  %869 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %dev.i, align 4
  %dev_addr.i445.i = getelementptr inbounds %struct.net_device, ptr %870, i32 0, i32 86
  %871 = ptrtoint ptr %dev_addr.i445.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %dev_addr.i445.i, align 64
  %873 = call ptr @memcpy(ptr %64, ptr %872, i32 6)
  %874 = call ptr @memcpy(ptr %65, ptr %CurrentBSSID, i32 6)
  %875 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %876)
  %cmp.i450.i = icmp eq i32 %876, 1
  %spec.store.select = select i1 %cmp.i450.i, i16 12544, i16 4352
  %877 = ptrtoint ptr %body.i442.i to i32
  call void @__asan_store2_noabort(i32 %877)
  store i16 %spec.store.select, ptr %body.i442.i, align 2
  %878 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %880 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i454.i = mul i32 %881, %879
  %conv18.i455.i = trunc i32 %mul.i454.i to i16
  %882 = call i16 @llvm.bswap.i16(i16 %conv18.i455.i) #17
  %883 = ptrtoint ptr %listen_interval19.i456.i to i32
  call void @__asan_store2_noabort(i32 %883)
  store i16 %882, ptr %listen_interval19.i456.i, align 2
  %884 = call ptr @memcpy(ptr %67, ptr %CurrentBSSID, i32 6)
  %885 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load i32, ptr %SSID_size.i, align 4
  %add27.i459.i = add i32 %886, 18
  %887 = ptrtoint ptr %ssid_el_id.i.i to i32
  call void @__asan_store1_noabort(i32 %887)
  store i8 0, ptr %ssid_el_id.i.i, align 2
  %conv31.i460.i = trunc i32 %886 to i8
  %888 = ptrtoint ptr %arrayidx32.i461.i to i32
  call void @__asan_store1_noabort(i32 %888)
  store i8 %conv31.i460.i, ptr %arrayidx32.i461.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %886)
  %889 = icmp ugt i32 %886, 37
  %890 = sub i32 38, %886
  %891 = select i1 %889, i32 0, i32 %890
  %892 = getelementptr i8, ptr %add.ptr.i462.i, i32 %886
  %893 = call ptr @memset(ptr %892, i32 255, i32 %891)
  %894 = call ptr @memcpy(ptr %add.ptr.i462.i, ptr %SSID.i.i199.i.i, i32 %886)
  %add36.i464.i = add i32 %886, 2
  %arrayidx37.i465.i = getelementptr i8, ptr %ssid_el_id.i.i, i32 %add36.i464.i
  %895 = ptrtoint ptr %arrayidx37.i465.i to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 1, ptr %arrayidx37.i465.i, align 1
  %add39.i466.i = add i32 %886, 3
  %arrayidx40.i467.i = getelementptr i8, ptr %ssid_el_id.i.i, i32 %add39.i466.i
  %896 = ptrtoint ptr %arrayidx40.i467.i to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 4, ptr %arrayidx40.i467.i, align 1
  %add.ptr43.i469.i = getelementptr i8, ptr %add.ptr41.i468.i, i32 %886
  %897 = load i32, ptr @atmel_basic_rates, align 4
  %898 = ptrtoint ptr %add.ptr43.i469.i to i32
  call void @__asan_storeN_noabort(i32 %898, i32 4)
  store i32 %897, ptr %add.ptr43.i469.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i441.i, ptr noundef nonnull %body.i442.i, i32 noundef %add27.i459.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i442.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i441.i) #17
  br label %next.i

atmel_enter_state.exit.i:                         ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %899 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %899)
  store i32 3, ptr %station_state, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i406.i) #17
  %900 = call ptr @memset(ptr %93, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i407.i) #17
  %901 = ptrtoint ptr %header.i406.i to i32
  call void @__asan_store2_noabort(i32 %901)
  store i16 0, ptr %header.i406.i, align 2
  %902 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %902)
  store i16 128, ptr %68, align 2
  %903 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %903)
  store i16 0, ptr %72, align 2
  %904 = call ptr @memcpy(ptr %69, ptr %CurrentBSSID, i32 6)
  %905 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %dev.i, align 4
  %dev_addr.i410.i = getelementptr inbounds %struct.net_device, ptr %906, i32 0, i32 86
  %907 = ptrtoint ptr %dev_addr.i410.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %dev_addr.i410.i, align 64
  %909 = call ptr @memcpy(ptr %70, ptr %908, i32 6)
  %910 = call ptr @memcpy(ptr %71, ptr %CurrentBSSID, i32 6)
  %911 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %912)
  %cmp.i415.i = icmp eq i32 %912, 1
  %spec.store.select245 = select i1 %cmp.i415.i, i16 12544, i16 4352
  %913 = ptrtoint ptr %body.i407.i to i32
  call void @__asan_store2_noabort(i32 %913)
  store i16 %spec.store.select245, ptr %body.i407.i, align 2
  %914 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %916 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i419.i = mul i32 %917, %915
  %conv18.i420.i = trunc i32 %mul.i419.i to i16
  %918 = call i16 @llvm.bswap.i16(i16 %conv18.i420.i) #17
  %919 = ptrtoint ptr %listen_interval19.i421.i to i32
  call void @__asan_store2_noabort(i32 %919)
  store i16 %918, ptr %listen_interval19.i421.i, align 2
  %920 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %SSID_size.i, align 4
  %add27.i424.i = add i32 %921, 12
  %922 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 0, ptr %73, align 2
  %conv31.i425.i = trunc i32 %921 to i8
  %923 = ptrtoint ptr %arrayidx32.i426.i to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 %conv31.i425.i, ptr %arrayidx32.i426.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %921)
  %924 = icmp ugt i32 %921, 43
  %925 = sub i32 44, %921
  %926 = select i1 %924, i32 0, i32 %925
  %927 = getelementptr i8, ptr %add.ptr.i427.i, i32 %921
  %928 = call ptr @memset(ptr %927, i32 255, i32 %926)
  %929 = call ptr @memcpy(ptr %add.ptr.i427.i, ptr %SSID.i.i199.i.i, i32 %921)
  %add36.i429.i = add i32 %921, 2
  %arrayidx37.i430.i = getelementptr i8, ptr %73, i32 %add36.i429.i
  %930 = ptrtoint ptr %arrayidx37.i430.i to i32
  call void @__asan_store1_noabort(i32 %930)
  store i8 1, ptr %arrayidx37.i430.i, align 1
  %add39.i431.i = add i32 %921, 3
  %arrayidx40.i432.i = getelementptr i8, ptr %73, i32 %add39.i431.i
  %931 = ptrtoint ptr %arrayidx40.i432.i to i32
  call void @__asan_store1_noabort(i32 %931)
  store i8 4, ptr %arrayidx40.i432.i, align 1
  %add.ptr43.i434.i = getelementptr i8, ptr %add.ptr41.i433.i, i32 %921
  %932 = load i32, ptr @atmel_basic_rates, align 4
  %933 = ptrtoint ptr %add.ptr43.i434.i to i32
  call void @__asan_storeN_noabort(i32 %933, i32 4)
  store i32 %932, ptr %add.ptr43.i434.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i406.i, ptr noundef nonnull %body.i407.i, i32 noundef %add27.i424.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i407.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i406.i) #17
  br label %next.i

if.then62.i.i.i:                                  ; preds = %if.then75.i.i
  %934 = zext i16 %752 to i64
  call void @__sanitizer_cov_trace_switch(i64 %934, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %752, label %if.then62.i.i.i.if.else78.i.i.i_crit_edge [
    i16 0, label %if.then66.i.i.i
    i16 256, label %land.lhs.true71.i.i.i
  ]

if.then62.i.i.i.if.else78.i.i.i_crit_edge:        ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else78.i.i.i

if.then66.i.i.i:                                  ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %935 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %935)
  store i32 1, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  %936 = ptrtoint ptr %exclude_unencrypted.i to i32
  call void @__asan_store1_noabort(i32 %936)
  store i8 1, ptr %exclude_unencrypted.i, align 2
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i53.i.i.i) #17
  %937 = call ptr @memset(ptr %54, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %auth.i.i.i.i) #17
  %938 = call ptr @memset(ptr %55, i32 255, i32 256)
  %939 = ptrtoint ptr %header.i53.i.i.i to i32
  call void @__asan_store2_noabort(i32 %939)
  store i16 -20480, ptr %header.i53.i.i.i, align 2
  %940 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %940)
  store i16 128, ptr %49, align 2
  %941 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %941)
  store i16 0, ptr %53, align 2
  %942 = call ptr @memcpy(ptr %50, ptr %CurrentBSSID, i32 6)
  %943 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %dev.i, align 4
  %dev_addr.i56.i.i.i = getelementptr inbounds %struct.net_device, ptr %944, i32 0, i32 86
  %945 = ptrtoint ptr %dev_addr.i56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %dev_addr.i56.i.i.i, align 64
  %947 = call ptr @memcpy(ptr %51, ptr %946, i32 6)
  %948 = call ptr @memcpy(ptr %52, ptr %CurrentBSSID, i32 6)
  %949 = ptrtoint ptr %auth.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %949)
  store i16 256, ptr %auth.i.i.i.i, align 2
  %950 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %950)
  store i16 0, ptr %status.i.i.i.i, align 2
  %951 = ptrtoint ptr %trans_seq.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %951)
  store i16 256, ptr %trans_seq.i.i.i.i, align 2
  %952 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %952)
  store i32 2, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  %953 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %953)
  store i32 3, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i53.i.i.i, ptr noundef nonnull %auth.i.i.i.i, i32 noundef 6) #17
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %auth.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i53.i.i.i) #17
  br label %next.i

land.lhs.true71.i.i.i:                            ; preds = %if.then62.i.i.i
  %954 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %954)
  %955 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %955)
  %tobool74.not.i.i.i = icmp eq i8 %955, 0
  br i1 %tobool74.not.i.i.i, label %land.lhs.true71.i.i.i.if.else78.i.i.i_crit_edge, label %send_authentication_request.exit78.i.i.i

land.lhs.true71.i.i.i.if.else78.i.i.i_crit_edge:  ; preds = %land.lhs.true71.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else78.i.i.i

send_authentication_request.exit78.i.i.i:         ; preds = %land.lhs.true71.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %956 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %956)
  store i32 1, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  %957 = ptrtoint ptr %exclude_unencrypted.i to i32
  call void @__asan_store1_noabort(i32 %957)
  store i8 0, ptr %exclude_unencrypted.i, align 2
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i59.i.i.i) #17
  %958 = call ptr @memset(ptr %47, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %auth.i60.i.i.i) #17
  %959 = call ptr @memset(ptr %48, i32 255, i32 256)
  %960 = ptrtoint ptr %header.i59.i.i.i to i32
  call void @__asan_store2_noabort(i32 %960)
  store i16 -20480, ptr %header.i59.i.i.i, align 2
  %961 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %961)
  store i16 128, ptr %42, align 2
  %962 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %962)
  store i16 0, ptr %46, align 2
  %963 = call ptr @memcpy(ptr %43, ptr %CurrentBSSID, i32 6)
  %964 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %dev.i, align 4
  %dev_addr.i63.i.i.i = getelementptr inbounds %struct.net_device, ptr %965, i32 0, i32 86
  %966 = ptrtoint ptr %dev_addr.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %dev_addr.i63.i.i.i, align 64
  %968 = call ptr @memcpy(ptr %44, ptr %967, i32 6)
  %969 = call ptr @memcpy(ptr %45, ptr %CurrentBSSID, i32 6)
  %970 = ptrtoint ptr %auth.i60.i.i.i to i32
  call void @__asan_store2_noabort(i32 %970)
  store i16 0, ptr %auth.i60.i.i.i, align 2
  %971 = ptrtoint ptr %status.i70.i.i.i to i32
  call void @__asan_store2_noabort(i32 %971)
  store i16 0, ptr %status.i70.i.i.i, align 2
  %972 = ptrtoint ptr %trans_seq.i73.i.i.i to i32
  call void @__asan_store2_noabort(i32 %972)
  store i16 256, ptr %trans_seq.i73.i.i.i, align 2
  %973 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %973)
  store i32 2, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  %974 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %974)
  store i32 3, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i59.i.i.i, ptr noundef nonnull %auth.i60.i.i.i, i32 noundef 6) #17
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %auth.i60.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i59.i.i.i) #17
  br label %next.i

if.else78.i.i.i:                                  ; preds = %land.lhs.true71.i.i.i.if.else78.i.i.i_crit_edge, %if.then62.i.i.i.if.else78.i.i.i_crit_edge
  %975 = ptrtoint ptr %connect_to_any_BSS.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load i32, ptr %connect_to_any_BSS.i207.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %976)
  %tobool79.not.i.i.i = icmp eq i32 %976, 0
  br i1 %tobool79.not.i.i.i, label %if.else78.i.i.i.if.end91.i.i.i_crit_edge, label %if.then80.i.i.i

if.else78.i.i.i.if.end91.i.i.i_crit_edge:         ; preds = %if.else78.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

if.then80.i.i.i:                                  ; preds = %if.else78.i.i.i
  %977 = ptrtoint ptr %current_BSS.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %current_BSS.i209.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %978
  %979 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %980, 128
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %call.i.i384.i = call fastcc i32 @retrieve_bss(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i384.i)
  %cmp81.not.i.i.i = icmp eq i32 %call.i.i384.i, -1
  br i1 %cmp81.not.i.i.i, label %if.then80.i.i.i.if.end91.i.i.i_crit_edge, label %if.then83.i.i.i

if.then80.i.i.i.if.end91.i.i.i_crit_edge:         ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i.i.i

if.then83.i.i.i:                                  ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_join_bss(ptr noundef %add.ptr.i, i32 noundef %call.i.i384.i) #17
  br label %next.i

if.end91.i.i.i:                                   ; preds = %if.then80.i.i.i.if.end91.i.i.i_crit_edge, %if.else78.i.i.i.if.end91.i.i.i_crit_edge, %land.lhs.true35.i.i.i.if.end91.i.i.i_crit_edge, %if.then31.i.i.i.if.end91.i.i.i_crit_edge, %if.then21.i.i.i.if.end91.i.i.i_crit_edge, %if.end17.i.i.i.if.end91.i.i.i_crit_edge, %if.then75.i.i.if.end91.i.i.i_crit_edge
  %981 = ptrtoint ptr %AuthenticationRequestRetryCnt.i to i32
  call void @__asan_store4_noabort(i32 %981)
  store i32 0, ptr %AuthenticationRequestRetryCnt.i, align 8
  %982 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %983)
  %cmp.i80.i.i.i = icmp eq i32 %983, 7
  br i1 %cmp.i80.i.i.i, label %if.end91.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge, label %if.end.i81.i.i.i

if.end91.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge: ; preds = %if.end91.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit93.i.i.i

if.end.i81.i.i.i:                                 ; preds = %if.end91.i.i.i
  %984 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %984)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %983)
  %cmp6.i82.i.i.i = icmp eq i32 %983, 4
  br i1 %cmp6.i82.i.i.i, label %if.then7.i87.i.i.i, label %if.end.i81.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge

if.end.i81.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge: ; preds = %if.end.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit93.i.i.i

if.then7.i87.i.i.i:                               ; preds = %if.end.i81.i.i.i
  %985 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %986) #17
  %987 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %dev.i, align 4
  %state.i.i84.i.i.i = getelementptr inbounds %struct.net_device, ptr %988, i32 0, i32 6
  %989 = ptrtoint ptr %state.i.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load volatile i32, ptr %state.i.i84.i.i.i, align 4
  %and1.i.i.i85.i.i.i = and i32 %990, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i85.i.i.i)
  %tobool.i.not.i86.i.i.i = icmp eq i32 %and1.i.i.i85.i.i.i, 0
  br i1 %tobool.i.not.i86.i.i.i, label %if.then7.i87.i.i.i.if.end12.i92.i.i.i_crit_edge, label %if.then10.i90.i.i.i

if.then7.i87.i.i.i.if.end12.i92.i.i.i_crit_edge:  ; preds = %if.then7.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i92.i.i.i

if.then10.i90.i.i.i:                              ; preds = %if.then7.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i88.i.i.i = getelementptr inbounds %struct.net_device, ptr %988, i32 0, i32 103
  %991 = ptrtoint ptr %_tx.i.i24.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %_tx.i.i24.i88.i.i.i, align 128
  %state.i.i25.i89.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %992, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i89.i.i.i) #17
  br label %if.end12.i92.i.i.i

if.end12.i92.i.i.i:                               ; preds = %if.then10.i90.i.i.i, %if.then7.i87.i.i.i.if.end12.i92.i.i.i_crit_edge
  %993 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %993)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit93.i.i.i

atmel_enter_state.exit93.i.i.i:                   ; preds = %if.end12.i92.i.i.i, %if.end.i81.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge, %if.end91.i.i.i.atmel_enter_state.exit93.i.i.i_crit_edge
  %994 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %994)
  store i32 0, ptr %station_is_associated64.i, align 8
  br label %next.i

sw.bb77.i.i:                                      ; preds = %if.end128.i.sw.bb77.i.i_crit_edge, %if.end128.i.sw.bb77.i.i_crit_edge269
  %995 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load i32, ptr %station_state, align 8
  %997 = zext i32 %996 to i64
  call void @__sanitizer_cov_trace_switch(i64 %997, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %996, label %sw.bb77.i.i.next.i_crit_edge [
    i32 3, label %sw.bb77.i.i.if.then85.i.i_crit_edge
    i32 5, label %sw.bb77.i.i.if.then85.i.i_crit_edge270
  ]

sw.bb77.i.i.if.then85.i.i_crit_edge270:           ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i.i

sw.bb77.i.i.if.then85.i.i_crit_edge:              ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i.i

sw.bb77.i.i.next.i_crit_edge:                     ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then85.i.i:                                    ; preds = %sw.bb77.i.i.if.then85.i.i_crit_edge, %sw.bb77.i.i.if.then85.i.i_crit_edge270
  %998 = ptrtoint ptr %status1.i173.i.i to i32
  call void @__asan_load2_noabort(i32 %998)
  %999 = load i16, ptr %status1.i173.i.i, align 2
  %1000 = ptrtoint ptr %ass_id2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1000)
  %1001 = load i16, ptr %ass_id2.i.i.i, align 2
  %1002 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %length.i.i.i, align 1
  %1004 = call i8 @llvm.umin.i8(i8 %1003, i8 4) #17
  %spec.select.i.i.i = zext i8 %1004 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i.i) #17
  %conv7.i.i385.i = zext i16 %msdu_size.0.i to i32
  %add.i.i386.i = or i32 %spec.select.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i386.i, i32 %conv7.i.i385.i)
  %cmp9.i.i.i = icmp ugt i32 %add.i.i386.i, %conv7.i.i385.i
  %1005 = call ptr @memset(ptr %wrqu.i.i.i, i32 255, i32 16)
  br i1 %cmp9.i.i.i, label %if.then85.i.i.associate.exit.i.i_crit_edge, label %if.end.i.i.i

if.then85.i.i.associate.exit.i.i_crit_edge:       ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %associate.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %999)
  %cmp12.i.i.i = icmp eq i16 %999, 0
  br i1 %cmp12.i.i.i, label %if.then14.i.i.i, label %if.end33.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %644)
  %cmp16.i.i.i = icmp eq i16 %644, 16
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %if.else.i174.i.i

if.then18.i.i.i:                                  ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %1006 = ptrtoint ptr %AssociationRequestRetryCnt45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1006)
  store i32 0, ptr %AssociationRequestRetryCnt45.i.i.i, align 4
  br label %if.end19.i.i.i

if.else.i174.i.i:                                 ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %1007 = ptrtoint ptr %ReAssociationRequestRetryCnt64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1007)
  store i32 0, ptr %ReAssociationRequestRetryCnt64.i.i.i, align 8
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.else.i174.i.i, %if.then18.i.i.i
  %1008 = and i16 %1001, -193
  %1009 = call i16 @llvm.bswap.i16(i16 %1008) #17
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 6, i16 noundef zeroext %1009) #17
  call fastcc void @atmel_set_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext 20, ptr noundef %rates.i.i.i, i32 noundef %spec.select.i.i.i) #17
  %1010 = ptrtoint ptr %power_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load i32, ptr %power_mode.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1011)
  %cmp24.i.i.i = icmp eq i32 %1011, 0
  %..i.i.i = select i1 %cmp24.i.i.i, i32 1, i32 2
  %.152.i.i.i = select i1 %cmp24.i.i.i, i8 1, i8 2
  %.153.i.i.i = select i1 %cmp24.i.i.i, i16 1, i16 2
  %1012 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_store4_noabort(i32 %1012)
  store i32 %..i.i.i, ptr %listen_interval.i.i188.i.i, align 4
  call fastcc void @atmel_set_mib8(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 53, i8 noundef zeroext %.152.i.i.i) #17
  call fastcc void @atmel_set_mib16(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 54, i16 noundef zeroext %.153.i.i.i) #17
  %1013 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %1013)
  store i32 1, ptr %station_is_associated64.i, align 8
  %1014 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_store4_noabort(i32 %1014)
  store i32 1, ptr %station_was_associated65.i, align 4
  %1015 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1016)
  %cmp.i.i177.i.i = icmp eq i32 %1016, 4
  br i1 %cmp.i.i177.i.i, label %if.end19.i.i.i.atmel_enter_state.exit.i180.i.i_crit_edge, label %if.end.i.i179.i.i

if.end19.i.i.i.atmel_enter_state.exit.i180.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit.i180.i.i

if.end.i.i179.i.i:                                ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %1017 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1017)
  store i32 4, ptr %station_state, align 8
  %1018 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1019, i32 0, i32 103
  %1020 = ptrtoint ptr %_tx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %_tx.i.i.i.i.i.i, align 128
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1021, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i.i.i.i) #17
  %1022 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_on(ptr noundef %1023) #17
  br label %atmel_enter_state.exit.i180.i.i

atmel_enter_state.exit.i180.i.i:                  ; preds = %if.end.i.i179.i.i, %if.end19.i.i.i.atmel_enter_state.exit.i180.i.i_crit_edge
  %1024 = call ptr @memcpy(ptr %sa_data.i.i.i, ptr %CurrentBSSID, i32 6)
  %1025 = ptrtoint ptr %wrqu.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1025)
  store i16 1, ptr %wrqu.i.i.i, align 4
  %1026 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %dev.i, align 4
  call void @wireless_send_event(ptr noundef %1027, i32 noundef 35605, ptr noundef nonnull %wrqu.i.i.i, ptr noundef null) #17
  br label %associate.exit.i.i

if.end33.i.i.i:                                   ; preds = %if.end.i.i.i
  %trunc.i.i = trunc i16 %644 to i8
  %1028 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1028, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %trunc.i.i, label %if.end33.i.i.i.if.end.i137.i.i.i_crit_edge [
    i8 16, label %switch.early.test.i.i.i
    i8 48, label %switch.early.test132.i.i.i
  ]

if.end33.i.i.i.if.end.i137.i.i.i_crit_edge:       ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

switch.early.test.i.i.i:                          ; preds = %if.end33.i.i.i
  %1029 = zext i16 %999 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1029, ptr @__sancov_gen_cov_switch_values.136)
  switch i16 %999, label %land.lhs.true44.i.i.i [
    i16 4608, label %switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge
    i16 2560, label %switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge271
  ]

switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge271: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

land.lhs.true44.i.i.i:                            ; preds = %switch.early.test.i.i.i
  %1030 = ptrtoint ptr %AssociationRequestRetryCnt45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %AssociationRequestRetryCnt45.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1031)
  %cmp46.i.i.i = icmp slt i32 %1031, 3
  br i1 %cmp46.i.i.i, label %if.then48.i.i.i, label %land.lhs.true44.i.i.i.if.end.i137.i.i.i_crit_edge

land.lhs.true44.i.i.i.if.end.i137.i.i.i_crit_edge: ; preds = %land.lhs.true44.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

if.then48.i.i.i:                                  ; preds = %land.lhs.true44.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1032 = load volatile i32, ptr @jiffies, align 128
  %add49.i.i.i = add i32 %1032, 256
  %call.i181.i.i = call i32 @mod_timer(ptr noundef %management_timer.i, i32 noundef %add49.i.i.i) #17
  %1033 = ptrtoint ptr %AssociationRequestRetryCnt45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load i32, ptr %AssociationRequestRetryCnt45.i.i.i, align 4
  %inc.i.i.i = add i32 %1034, 1
  store i32 %inc.i.i.i, ptr %AssociationRequestRetryCnt45.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i.i) #17
  %1035 = call ptr @memset(ptr %90, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i.i) #17
  %1036 = call ptr @memset(ptr %add.ptr.i405.i, i32 255, i32 44)
  %1037 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store2_noabort(i32 %1037)
  store i16 0, ptr %header.i.i, align 2
  %1038 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %1038)
  store i16 128, ptr %36, align 2
  %1039 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %1039)
  store i16 0, ptr %40, align 2
  %1040 = call ptr @memcpy(ptr %37, ptr %CurrentBSSID, i32 6)
  %1041 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %dev.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %1042, i32 0, i32 86
  %1043 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %dev_addr.i.i, align 64
  %1045 = call ptr @memcpy(ptr %38, ptr %1044, i32 6)
  %1046 = call ptr @memcpy(ptr %39, ptr %CurrentBSSID, i32 6)
  %1047 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %1047)
  %1048 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1048)
  %tobool6.not.i401.i = icmp eq i8 %1048, 0
  %spec.store.select.i.i = select i1 %tobool6.not.i401.i, i16 256, i16 4352
  %1049 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store2_noabort(i32 %1049)
  store i16 %spec.store.select.i.i, ptr %body.i.i, align 2
  %1050 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1051)
  %cmp.i402.i = icmp eq i32 %1051, 1
  br i1 %cmp.i402.i, label %if.then12.i403.i, label %if.then48.i.i.i.send_association_request.exit.i_crit_edge

if.then48.i.i.i.send_association_request.exit.i_crit_edge: ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_association_request.exit.i

if.then12.i403.i:                                 ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %1052 = or i16 %spec.store.select.i.i, 8192
  %1053 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store2_noabort(i32 %1053)
  store i16 %1052, ptr %body.i.i, align 2
  br label %send_association_request.exit.i

send_association_request.exit.i:                  ; preds = %if.then12.i403.i, %if.then48.i.i.i.send_association_request.exit.i_crit_edge
  %1054 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %1056 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i404.i = mul i32 %1057, %1055
  %conv18.i.i = trunc i32 %mul.i404.i to i16
  %1058 = call i16 @llvm.bswap.i16(i16 %conv18.i.i) #17
  %1059 = ptrtoint ptr %listen_interval19.i.i to i32
  call void @__asan_store2_noabort(i32 %1059)
  store i16 %1058, ptr %listen_interval19.i.i, align 2
  %1060 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load i32, ptr %SSID_size.i, align 4
  %add27.i.i = add i32 %1061, 12
  %1062 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %1062)
  store i8 0, ptr %41, align 2
  %conv31.i.i = trunc i32 %1061 to i8
  %1063 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %1063)
  store i8 %conv31.i.i, ptr %arrayidx32.i.i, align 1
  %1064 = call ptr @memcpy(ptr %add.ptr.i405.i, ptr %SSID.i.i199.i.i, i32 %1061)
  %add36.i.i = add i32 %1061, 2
  %arrayidx37.i.i = getelementptr i8, ptr %41, i32 %add36.i.i
  %1065 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %1065)
  store i8 1, ptr %arrayidx37.i.i, align 1
  %add39.i.i = add i32 %1061, 3
  %arrayidx40.i.i = getelementptr i8, ptr %41, i32 %add39.i.i
  %1066 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %1066)
  store i8 4, ptr %arrayidx40.i.i, align 1
  %add.ptr43.i.i = getelementptr i8, ptr %add.ptr41.i.i, i32 %1061
  %1067 = load i32, ptr @atmel_basic_rates, align 4
  %1068 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_storeN_noabort(i32 %1068, i32 4)
  store i32 %1067, ptr %add.ptr43.i.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i.i, ptr noundef nonnull %body.i.i, i32 noundef %add27.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i.i) #17
  br label %associate.exit.i.i

switch.early.test132.i.i.i:                       ; preds = %if.end33.i.i.i
  %1069 = zext i16 %999 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1069, ptr @__sancov_gen_cov_switch_values.137)
  switch i16 %999, label %land.lhs.true63.i.i.i [
    i16 4608, label %switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge
    i16 2560, label %switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge272
  ]

switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge272: ; preds = %switch.early.test132.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge: ; preds = %switch.early.test132.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

land.lhs.true63.i.i.i:                            ; preds = %switch.early.test132.i.i.i
  %1070 = ptrtoint ptr %ReAssociationRequestRetryCnt64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %ReAssociationRequestRetryCnt64.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1071)
  %cmp65.i.i.i = icmp slt i32 %1071, 3
  br i1 %cmp65.i.i.i, label %if.then67.i.i.i, label %land.lhs.true63.i.i.i.if.end.i137.i.i.i_crit_edge

land.lhs.true63.i.i.i.if.end.i137.i.i.i_crit_edge: ; preds = %land.lhs.true63.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i137.i.i.i

if.then67.i.i.i:                                  ; preds = %land.lhs.true63.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1072 = load volatile i32, ptr @jiffies, align 128
  %add69.i.i.i = add i32 %1072, 256
  %call70.i.i.i = call i32 @mod_timer(ptr noundef %management_timer.i, i32 noundef %add69.i.i.i) #17
  %1073 = ptrtoint ptr %ReAssociationRequestRetryCnt64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %ReAssociationRequestRetryCnt64.i.i.i, align 8
  %inc72.i.i.i = add i32 %1074, 1
  store i32 %inc72.i.i.i, ptr %ReAssociationRequestRetryCnt64.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i.i171.i.i) #17
  %1075 = call ptr @memset(ptr %33, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %body.i.i172.i.i) #17
  %1076 = call ptr @memset(ptr %35, i32 255, i32 38)
  %1077 = ptrtoint ptr %header.i.i171.i.i to i32
  call void @__asan_store2_noabort(i32 %1077)
  store i16 8192, ptr %header.i.i171.i.i, align 2
  %1078 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %1078)
  store i16 128, ptr %28, align 2
  %1079 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %1079)
  store i16 0, ptr %32, align 2
  %1080 = call ptr @memcpy(ptr %29, ptr %CurrentBSSID, i32 6)
  %1081 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %dev.i, align 4
  %dev_addr.i.i183.i.i = getelementptr inbounds %struct.net_device, ptr %1082, i32 0, i32 86
  %1083 = ptrtoint ptr %dev_addr.i.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %dev_addr.i.i183.i.i, align 64
  %1085 = call ptr @memcpy(ptr %30, ptr %1084, i32 6)
  %1086 = call ptr @memcpy(ptr %31, ptr %CurrentBSSID, i32 6)
  %1087 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %1087)
  %1088 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1088)
  %tobool6.not.i.i184.i.i = icmp eq i8 %1088, 0
  %spec.store.select.i.i185.i.i = select i1 %tobool6.not.i.i184.i.i, i16 256, i16 4352
  %1089 = ptrtoint ptr %body.i.i172.i.i to i32
  call void @__asan_store2_noabort(i32 %1089)
  store i16 %spec.store.select.i.i185.i.i, ptr %body.i.i172.i.i, align 2
  %1090 = ptrtoint ptr %preamble.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load i32, ptr %preamble.i.i186.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1091)
  %cmp.i134.i.i.i = icmp eq i32 %1091, 1
  br i1 %cmp.i134.i.i.i, label %if.then12.i.i187.i.i, label %if.then67.i.i.i.send_association_request.exit.i206.i.i_crit_edge

if.then67.i.i.i.send_association_request.exit.i206.i.i_crit_edge: ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_association_request.exit.i206.i.i

if.then12.i.i187.i.i:                             ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %1092 = or i16 %spec.store.select.i.i185.i.i, 8192
  %1093 = ptrtoint ptr %body.i.i172.i.i to i32
  call void @__asan_store2_noabort(i32 %1093)
  store i16 %1092, ptr %body.i.i172.i.i, align 2
  br label %send_association_request.exit.i206.i.i

send_association_request.exit.i206.i.i:           ; preds = %if.then12.i.i187.i.i, %if.then67.i.i.i.send_association_request.exit.i206.i.i_crit_edge
  %1094 = ptrtoint ptr %listen_interval.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load i32, ptr %listen_interval.i.i188.i.i, align 4
  %1096 = ptrtoint ptr %beacon_period.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load i32, ptr %beacon_period.i.i189.i.i, align 8
  %mul.i.i190.i.i = mul i32 %1097, %1095
  %conv18.i.i191.i.i = trunc i32 %mul.i.i190.i.i to i16
  %1098 = call i16 @llvm.bswap.i16(i16 %conv18.i.i191.i.i) #17
  %1099 = ptrtoint ptr %listen_interval19.i.i192.i.i to i32
  call void @__asan_store2_noabort(i32 %1099)
  store i16 %1098, ptr %listen_interval19.i.i192.i.i, align 2
  %1100 = call ptr @memcpy(ptr %34, ptr %CurrentBSSID, i32 6)
  %1101 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %SSID_size.i, align 4
  %add27.i.i195.i.i = add i32 %1102, 18
  %1103 = ptrtoint ptr %ssid_el_id.i.i193.i.i to i32
  call void @__asan_store1_noabort(i32 %1103)
  store i8 0, ptr %ssid_el_id.i.i193.i.i, align 2
  %conv31.i.i196.i.i = trunc i32 %1102 to i8
  %1104 = ptrtoint ptr %arrayidx32.i.i197.i.i to i32
  call void @__asan_store1_noabort(i32 %1104)
  store i8 %conv31.i.i196.i.i, ptr %arrayidx32.i.i197.i.i, align 1
  %1105 = call ptr @memcpy(ptr %35, ptr %SSID.i.i199.i.i, i32 %1102)
  %add36.i.i200.i.i = add i32 %1102, 2
  %arrayidx37.i.i201.i.i = getelementptr i8, ptr %ssid_el_id.i.i193.i.i, i32 %add36.i.i200.i.i
  %1106 = ptrtoint ptr %arrayidx37.i.i201.i.i to i32
  call void @__asan_store1_noabort(i32 %1106)
  store i8 1, ptr %arrayidx37.i.i201.i.i, align 1
  %add39.i.i202.i.i = add i32 %1102, 3
  %arrayidx40.i.i203.i.i = getelementptr i8, ptr %ssid_el_id.i.i193.i.i, i32 %add39.i.i202.i.i
  %1107 = ptrtoint ptr %arrayidx40.i.i203.i.i to i32
  call void @__asan_store1_noabort(i32 %1107)
  store i8 4, ptr %arrayidx40.i.i203.i.i, align 1
  %add.ptr43.i.i205.i.i = getelementptr i8, ptr %add.ptr41.i.i204.i.i, i32 %1102
  %1108 = load i32, ptr @atmel_basic_rates, align 4
  %1109 = ptrtoint ptr %add.ptr43.i.i205.i.i to i32
  call void @__asan_storeN_noabort(i32 %1109, i32 4)
  store i32 %1108, ptr %add.ptr43.i.i205.i.i, align 1
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i.i171.i.i, ptr noundef nonnull %body.i.i172.i.i, i32 noundef %add27.i.i195.i.i) #17
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %body.i.i172.i.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i.i171.i.i) #17
  br label %associate.exit.i.i

if.end.i137.i.i.i:                                ; preds = %land.lhs.true63.i.i.i.if.end.i137.i.i.i_crit_edge, %switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge, %switch.early.test132.i.i.i.if.end.i137.i.i.i_crit_edge272, %land.lhs.true44.i.i.i.if.end.i137.i.i.i_crit_edge, %switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge, %switch.early.test.i.i.i.if.end.i137.i.i.i_crit_edge271, %if.end33.i.i.i.if.end.i137.i.i.i_crit_edge
  %1110 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1110)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %996)
  %cmp6.i138.i.i.i = icmp eq i32 %996, 4
  br i1 %cmp6.i138.i.i.i, label %if.then7.i143.i.i.i, label %if.end.i137.i.i.i.atmel_enter_state.exit149.i.i.i_crit_edge

if.end.i137.i.i.i.atmel_enter_state.exit149.i.i.i_crit_edge: ; preds = %if.end.i137.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit149.i.i.i

if.then7.i143.i.i.i:                              ; preds = %if.end.i137.i.i.i
  %1111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %1112) #17
  %1113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %dev.i, align 4
  %state.i.i140.i.i.i = getelementptr inbounds %struct.net_device, ptr %1114, i32 0, i32 6
  %1115 = ptrtoint ptr %state.i.i140.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load volatile i32, ptr %state.i.i140.i.i.i, align 4
  %and1.i.i.i141.i.i.i = and i32 %1116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i141.i.i.i)
  %tobool.i.not.i142.i.i.i = icmp eq i32 %and1.i.i.i141.i.i.i, 0
  br i1 %tobool.i.not.i142.i.i.i, label %if.then7.i143.i.i.i.if.end12.i148.i.i.i_crit_edge, label %if.then10.i146.i.i.i

if.then7.i143.i.i.i.if.end12.i148.i.i.i_crit_edge: ; preds = %if.then7.i143.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i148.i.i.i

if.then10.i146.i.i.i:                             ; preds = %if.then7.i143.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i144.i.i.i = getelementptr inbounds %struct.net_device, ptr %1114, i32 0, i32 103
  %1117 = ptrtoint ptr %_tx.i.i24.i144.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %_tx.i.i24.i144.i.i.i, align 128
  %state.i.i25.i145.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1118, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i145.i.i.i) #17
  br label %if.end12.i148.i.i.i

if.end12.i148.i.i.i:                              ; preds = %if.then10.i146.i.i.i, %if.then7.i143.i.i.i.if.end12.i148.i.i.i_crit_edge
  %1119 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %1119)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit149.i.i.i

atmel_enter_state.exit149.i.i.i:                  ; preds = %if.end12.i148.i.i.i, %if.end.i137.i.i.i.atmel_enter_state.exit149.i.i.i_crit_edge
  %1120 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %1120)
  store i32 0, ptr %station_is_associated64.i, align 8
  %1121 = ptrtoint ptr %connect_to_any_BSS.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load i32, ptr %connect_to_any_BSS.i207.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1122)
  %tobool.not.i208.i.i = icmp eq i32 %1122, 0
  br i1 %tobool.not.i208.i.i, label %atmel_enter_state.exit149.i.i.i.associate.exit.i.i_crit_edge, label %if.then75.i.i.i

atmel_enter_state.exit149.i.i.i.associate.exit.i.i_crit_edge: ; preds = %atmel_enter_state.exit149.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %associate.exit.i.i

if.then75.i.i.i:                                  ; preds = %atmel_enter_state.exit149.i.i.i
  %1123 = ptrtoint ptr %current_BSS.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load i32, ptr %current_BSS.i209.i.i, align 4
  %arrayidx.i210.i.i = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %1124
  %1125 = ptrtoint ptr %arrayidx.i210.i.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load i32, ptr %arrayidx.i210.i.i, align 4
  %or.i211.i.i = or i32 %1126, 128
  store i32 %or.i211.i.i, ptr %arrayidx.i210.i.i, align 4
  %call76.i.i.i = call fastcc i32 @retrieve_bss(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call76.i.i.i)
  %cmp77.not.i.i.i = icmp eq i32 %call76.i.i.i, -1
  br i1 %cmp77.not.i.i.i, label %if.then75.i.i.i.associate.exit.i.i_crit_edge, label %if.then79.i.i.i

if.then75.i.i.i.associate.exit.i.i_crit_edge:     ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %associate.exit.i.i

if.then79.i.i.i:                                  ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_join_bss(ptr noundef %add.ptr.i, i32 noundef %call76.i.i.i) #17
  br label %associate.exit.i.i

associate.exit.i.i:                               ; preds = %if.then79.i.i.i, %if.then75.i.i.i.associate.exit.i.i_crit_edge, %atmel_enter_state.exit149.i.i.i.associate.exit.i.i_crit_edge, %send_association_request.exit.i206.i.i, %send_association_request.exit.i, %atmel_enter_state.exit.i180.i.i, %if.then85.i.i.associate.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i.i) #17
  br label %next.i

sw.bb87.i.i:                                      ; preds = %if.end128.i
  %1127 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %station_is_associated64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1128)
  %tobool88.not.i.i = icmp eq i32 %1128, 0
  br i1 %tobool88.not.i.i, label %sw.bb87.i.i.next.i_crit_edge, label %land.lhs.true.i387.i

sw.bb87.i.i.next.i_crit_edge:                     ; preds = %sw.bb87.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

land.lhs.true.i387.i:                             ; preds = %sw.bb87.i.i
  %1129 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1130)
  %cmp89.i.i = icmp eq i32 %1130, 2
  br i1 %cmp89.i.i, label %land.lhs.true91.i.i, label %land.lhs.true.i387.i.next.i_crit_edge

land.lhs.true.i387.i.next.i_crit_edge:            ; preds = %land.lhs.true.i387.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

land.lhs.true91.i.i:                              ; preds = %land.lhs.true.i387.i
  %1131 = and i16 %642, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1131)
  %tobool.not.i212.i.i = icmp eq i16 %1131, 0
  br i1 %tobool.not.i212.i.i, label %if.else.i216.i.i, label %if.then.i215.i.i

if.then.i215.i.i:                                 ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i214.i.i = call i32 @memcmp(ptr noundef dereferenceable(6) %24, ptr noundef dereferenceable(6) %CurrentBSSID, i32 noundef 6) #22
  br label %is_frame_from_current_bss.exit.i.i

if.else.i216.i.i:                                 ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %CurrentBSSID, i32 6) #22
  br label %is_frame_from_current_bss.exit.i.i

is_frame_from_current_bss.exit.i.i:               ; preds = %if.else.i216.i.i, %if.then.i215.i.i
  %retval.0.in.in.i.i.i = phi i32 [ %call.i214.i.i, %if.then.i215.i.i ], [ %bcmp.i.i.i, %if.else.i216.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in.i.i.i)
  %retval.0.in.i.not.i.i = icmp eq i32 %retval.0.in.in.i.i.i, 0
  br i1 %retval.0.in.i.not.i.i, label %if.then94.i.i, label %is_frame_from_current_bss.exit.i.i.next.i_crit_edge

is_frame_from_current_bss.exit.i.i.next.i_crit_edge: ; preds = %is_frame_from_current_bss.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then94.i.i:                                    ; preds = %is_frame_from_current_bss.exit.i.i
  %1132 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_store4_noabort(i32 %1132)
  store i32 0, ptr %station_was_associated65.i, align 4
  %1133 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_store4_noabort(i32 %1133)
  store i32 0, ptr %station_is_associated64.i, align 8
  %1134 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1135)
  %cmp.i.i388.i = icmp eq i32 %1135, 1
  br i1 %cmp.i.i388.i, label %if.then94.i.i.atmel_enter_state.exit.i.i_crit_edge, label %if.end.i217.i.i

if.then94.i.i.atmel_enter_state.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit.i.i

if.end.i217.i.i:                                  ; preds = %if.then94.i.i
  %1136 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1136)
  store i32 1, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1135)
  %cmp6.i.i.i = icmp eq i32 %1135, 4
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.end.i217.i.i.atmel_enter_state.exit.i.i_crit_edge

if.end.i217.i.i.atmel_enter_state.exit.i.i_crit_edge: ; preds = %if.end.i217.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i217.i.i
  %1137 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %1138) #17
  %1139 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load ptr, ptr %dev.i, align 4
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1140, i32 0, i32 6
  %1141 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1141)
  %1142 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %1142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then7.i.i.i.if.end12.i.i.i_crit_edge, label %if.then10.i.i389.i

if.then7.i.i.i.if.end12.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i.i.i

if.then10.i.i389.i:                               ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i.i.i = getelementptr inbounds %struct.net_device, ptr %1140, i32 0, i32 103
  %1143 = ptrtoint ptr %_tx.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %_tx.i.i24.i.i.i, align 128
  %state.i.i25.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1144, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i.i.i) #17
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then10.i.i389.i, %if.then7.i.i.i.if.end12.i.i.i_crit_edge
  %1145 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %1145)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit.i.i

atmel_enter_state.exit.i.i:                       ; preds = %if.end12.i.i.i, %if.end.i217.i.i.atmel_enter_state.exit.i.i_crit_edge, %if.then94.i.i.atmel_enter_state.exit.i.i_crit_edge
  call fastcc void @join(ptr noundef %add.ptr.i, i32 noundef 2) #17
  br label %next.i

sw.bb97.i.i:                                      ; preds = %if.end128.i
  %1146 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1147)
  %cmp99.i.i = icmp eq i32 %1147, 2
  br i1 %cmp99.i.i, label %land.lhs.true101.i.i, label %sw.bb97.i.i.next.i_crit_edge

sw.bb97.i.i.next.i_crit_edge:                     ; preds = %sw.bb97.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

land.lhs.true101.i.i:                             ; preds = %sw.bb97.i.i
  %1148 = and i16 %642, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1148)
  %tobool.not.i218.i.i = icmp eq i16 %1148, 0
  br i1 %tobool.not.i218.i.i, label %if.else.i226.i.i, label %if.then.i222.i.i

if.then.i222.i.i:                                 ; preds = %land.lhs.true101.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i221.i.i = call i32 @memcmp(ptr noundef dereferenceable(6) %24, ptr noundef dereferenceable(6) %CurrentBSSID, i32 noundef 6) #22
  br label %is_frame_from_current_bss.exit230.i.i

if.else.i226.i.i:                                 ; preds = %land.lhs.true101.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i225.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %CurrentBSSID, i32 6) #22
  br label %is_frame_from_current_bss.exit230.i.i

is_frame_from_current_bss.exit230.i.i:            ; preds = %if.else.i226.i.i, %if.then.i222.i.i
  %retval.0.in.in.i227.i.i = phi i32 [ %call.i221.i.i, %if.then.i222.i.i ], [ %bcmp.i225.i.i, %if.else.i226.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in.i227.i.i)
  %retval.0.in.i228.not.i.i = icmp eq i32 %retval.0.in.in.i227.i.i, 0
  br i1 %retval.0.in.i228.not.i.i, label %if.then104.i.i, label %is_frame_from_current_bss.exit230.i.i.next.i_crit_edge

is_frame_from_current_bss.exit230.i.i.next.i_crit_edge: ; preds = %is_frame_from_current_bss.exit230.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next.i

if.then104.i.i:                                   ; preds = %is_frame_from_current_bss.exit230.i.i
  %1149 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_store4_noabort(i32 %1149)
  store i32 0, ptr %station_was_associated65.i, align 4
  %1150 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1151)
  %cmp.i232.i.i = icmp eq i32 %1151, 1
  br i1 %cmp.i232.i.i, label %if.then104.i.i.atmel_enter_state.exit245.i.i_crit_edge, label %if.end.i233.i390.i

if.then104.i.i.atmel_enter_state.exit245.i.i_crit_edge: ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit245.i.i

if.end.i233.i390.i:                               ; preds = %if.then104.i.i
  %1152 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1152)
  store i32 1, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1151)
  %cmp6.i234.i.i = icmp eq i32 %1151, 4
  br i1 %cmp6.i234.i.i, label %if.then7.i239.i.i, label %if.end.i233.i390.i.atmel_enter_state.exit245.i.i_crit_edge

if.end.i233.i390.i.atmel_enter_state.exit245.i.i_crit_edge: ; preds = %if.end.i233.i390.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit245.i.i

if.then7.i239.i.i:                                ; preds = %if.end.i233.i390.i
  %1153 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %1154) #17
  %1155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load ptr, ptr %dev.i, align 4
  %state.i.i236.i.i = getelementptr inbounds %struct.net_device, ptr %1156, i32 0, i32 6
  %1157 = ptrtoint ptr %state.i.i236.i.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load volatile i32, ptr %state.i.i236.i.i, align 4
  %and1.i.i.i237.i.i = and i32 %1158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i237.i.i)
  %tobool.i.not.i238.i.i = icmp eq i32 %and1.i.i.i237.i.i, 0
  br i1 %tobool.i.not.i238.i.i, label %if.then7.i239.i.i.if.end12.i244.i.i_crit_edge, label %if.then10.i242.i.i

if.then7.i239.i.i.if.end12.i244.i.i_crit_edge:    ; preds = %if.then7.i239.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i244.i.i

if.then10.i242.i.i:                               ; preds = %if.then7.i239.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i240.i.i = getelementptr inbounds %struct.net_device, ptr %1156, i32 0, i32 103
  %1159 = ptrtoint ptr %_tx.i.i24.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %_tx.i.i24.i240.i.i, align 128
  %state.i.i25.i241.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1160, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i241.i.i) #17
  br label %if.end12.i244.i.i

if.end12.i244.i.i:                                ; preds = %if.then10.i242.i.i, %if.then7.i239.i.i.if.end12.i244.i.i_crit_edge
  %1161 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %1161)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit245.i.i

atmel_enter_state.exit245.i.i:                    ; preds = %if.end12.i244.i.i, %if.end.i233.i390.i.atmel_enter_state.exit245.i.i_crit_edge, %if.then104.i.i.atmel_enter_state.exit245.i.i_crit_edge
  call fastcc void @join(ptr noundef %add.ptr.i, i32 noundef 2) #17
  br label %next.i

next.i:                                           ; preds = %atmel_enter_state.exit245.i.i, %is_frame_from_current_bss.exit230.i.i.next.i_crit_edge, %sw.bb97.i.i.next.i_crit_edge, %atmel_enter_state.exit.i.i, %is_frame_from_current_bss.exit.i.i.next.i_crit_edge, %land.lhs.true.i387.i.next.i_crit_edge, %sw.bb87.i.i.next.i_crit_edge, %associate.exit.i.i, %sw.bb77.i.i.next.i_crit_edge, %atmel_enter_state.exit93.i.i.i, %if.then83.i.i.i, %send_authentication_request.exit78.i.i.i, %if.then66.i.i.i, %atmel_enter_state.exit.i, %atmel_enter_state.exit485.i, %send_authentication_request.exit.i, %if.then12.i.i.i.next.i_crit_edge, %atmel_enter_state.exit22.i.i.i, %atmel_enter_state.exit.i.i.i, %sw.bb71.i.i.next.i_crit_edge, %if.end73.i.i, %if.end34.i.i.next.i_crit_edge, %if.then8.i.i.next.i_crit_edge, %if.end55.i.i.next.i_crit_edge, %if.end.i374.i.next.i_crit_edge, %lor.lhs.false.i.i.next.i_crit_edge, %sw.bb.i.i.next.i_crit_edge, %if.end128.i.next.i_crit_edge, %if.then123.i, %frag_rx_path.exit.i, %fast_rx_path.exit.i, %if.end76.i.next.i_crit_edge, %if.then27.i, %if.else.i, %if.then15.i
  %1162 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1162)
  %1163 = load i16, ptr %rx_desc_head.i, align 4
  %1164 = ptrtoint ptr %rx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1164)
  %1165 = load i16, ptr %rx_desc_pos.i.i, align 2
  %mul.i392.i = mul i16 %1163, 20
  %add.i393.i = add i16 %mul.i392.i, 8
  %add3.i394.i = add i16 %add.i393.i, %1165
  %1166 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1167, i16 noundef zeroext %add3.i394.i) #17
  %1168 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %dev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i396.i = getelementptr inbounds %struct.net_device, ptr %1169, i32 0, i32 5
  %1170 = ptrtoint ptr %base_addr.i.i396.i to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load i32, ptr %base_addr.i.i396.i, align 32
  %add.i.i397.i = add i32 %1171, 8
  %and.i.i398.i = and i32 %add.i.i397.i, 1048575
  %add1.i.i399.i = or i32 %and.i.i398.i, -18874368
  %1172 = inttoptr i32 %add1.i.i399.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1172, i8 64) #17, !srcloc !312
  %1173 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1173)
  %1174 = load i16, ptr %rx_desc_head.i, align 4
  %conv136.i = zext i16 %1174 to i32
  %1175 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_load2_noabort(i32 %1175)
  %1176 = load i16, ptr %rx_desc_count.i, align 2
  %conv139.i = zext i16 %1176 to i32
  %sub140.i = add nsw i32 %conv139.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub140.i, i32 %conv136.i)
  %cmp141.i = icmp sgt i32 %sub140.i, %conv136.i
  %inc145.i = add i16 %1174, 1
  %storemerge.i = select i1 %cmp141.i, i16 %inc145.i, i16 0
  %1177 = ptrtoint ptr %rx_desc_head.i to i32
  call void @__asan_store2_noabort(i32 %1177)
  store i16 %storemerge.i, ptr %rx_desc_head.i, align 4
  %inc149.i = add nuw nsw i32 %i.0.i, 1
  br label %for.cond.i

rx_done_irq.exit:                                 ; preds = %land.rhs.i.rx_done_irq.exit_crit_edge, %for.cond.i.rx_done_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i) #17
  br label %sw.epilog

for.cond.i179:                                    ; preds = %if.end64.i, %if.end36.for.cond.i179_crit_edge
  %i.0.i170 = phi i32 [ %inc65.i, %if.end64.i ], [ 0, %if.end36.for.cond.i179_crit_edge ]
  %1178 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1178)
  %1179 = load i16, ptr %tx_desc_head.i, align 8
  %1180 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1180)
  %1181 = load i16, ptr %tx_desc_pos.i.i, align 2
  %mul.i.i171 = mul i16 %1179, 20
  %add.i.i172 = add i16 %mul.i.i171, 8
  %add3.i.i173 = add i16 %add.i.i172, %1181
  %1182 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1183, i16 noundef zeroext %add3.i.i173) #17
  %1184 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i174 = getelementptr inbounds %struct.net_device, ptr %1185, i32 0, i32 5
  %1186 = ptrtoint ptr %base_addr.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load i32, ptr %base_addr.i.i.i174, align 32
  %add.i.i.i175 = add i32 %1187, 8
  %and.i.i.i176 = and i32 %add.i.i.i175, 1048575
  %add1.i.i.i177 = or i32 %and.i.i.i176, -18874368
  %1188 = inttoptr i32 %add1.i.i.i177 to ptr
  %1189 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1188) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1189)
  %cmp.i178 = icmp eq i8 %1189, 64
  br i1 %cmp.i178, label %land.rhs.i182, label %for.cond.i179.sw.epilog_crit_edge

for.cond.i179.sw.epilog_crit_edge:                ; preds = %for.cond.i179
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.rhs.i182:                                    ; preds = %for.cond.i179
  %1190 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load2_noabort(i32 %1190)
  %1191 = load i16, ptr %tx_desc_count.i, align 2
  %conv3.i180 = zext i16 %1191 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i170, i32 %conv3.i180)
  %cmp4.i181 = icmp ult i32 %i.0.i170, %conv3.i180
  br i1 %cmp4.i181, label %for.body.i187, label %land.rhs.i182.sw.epilog_crit_edge

land.rhs.i182.sw.epilog_crit_edge:                ; preds = %land.rhs.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body.i187:                                    ; preds = %land.rhs.i182
  %1192 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1192)
  %1193 = load i16, ptr %tx_desc_head.i, align 8
  %1194 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1194)
  %1195 = load i16, ptr %tx_desc_pos.i.i, align 2
  %mul.i100.i = mul i16 %1193, 20
  %add.i101.i = add i16 %mul.i100.i, 9
  %add3.i102.i = add i16 %add.i101.i, %1195
  %1196 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1197, i16 noundef zeroext %add3.i102.i) #17
  %1198 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i104.i = getelementptr inbounds %struct.net_device, ptr %1199, i32 0, i32 5
  %1200 = ptrtoint ptr %base_addr.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load i32, ptr %base_addr.i.i104.i, align 32
  %add.i.i105.i = add i32 %1201, 8
  %and.i.i106.i = and i32 %add.i.i105.i, 1048575
  %add1.i.i107.i = or i32 %and.i.i106.i, -18874368
  %1202 = inttoptr i32 %add1.i.i107.i to ptr
  %1203 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1202) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %1204 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1204)
  %1205 = load i16, ptr %tx_desc_head.i, align 8
  %1206 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1206)
  %1207 = load i16, ptr %tx_desc_pos.i.i, align 2
  %mul.i109.i = mul i16 %1205, 20
  %add.i110.i = add i16 %mul.i109.i, 6
  %add3.i111.i = add i16 %add.i110.i, %1207
  %1208 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1209, i16 noundef zeroext %add3.i111.i) #17
  %1210 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i113.i = getelementptr inbounds %struct.net_device, ptr %1211, i32 0, i32 5
  %1212 = ptrtoint ptr %base_addr.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load i32, ptr %base_addr.i.i113.i, align 32
  %add.i.i114.i = add i32 %1213, 8
  %and.i.i115.i = and i32 %add.i.i114.i, 1048575
  %add1.i.i116.i = or i32 %and.i.i115.i, -18874368
  %1214 = inttoptr i32 %add1.i.i116.i to ptr
  %1215 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %1214) #17, !srcloc !314
  %1216 = call i16 @llvm.bswap.i16(i16 %1215) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %1217 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1217)
  %1218 = load i16, ptr %tx_desc_head.i, align 8
  %1219 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1219)
  %1220 = load i16, ptr %tx_desc_pos.i.i, align 2
  %mul.i118.i = mul i16 %1218, 20
  %add.i119.i = add i16 %mul.i118.i, 17
  %add3.i120.i = add i16 %add.i119.i, %1220
  %1221 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1221)
  %1222 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1222, i16 noundef zeroext %add3.i120.i) #17
  %1223 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i122.i = getelementptr inbounds %struct.net_device, ptr %1224, i32 0, i32 5
  %1225 = ptrtoint ptr %base_addr.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %1225)
  %1226 = load i32, ptr %base_addr.i.i122.i, align 32
  %add.i.i123.i = add i32 %1226, 8
  %and.i.i124.i = and i32 %add.i.i123.i, 1048575
  %add1.i.i125.i = or i32 %and.i.i124.i, -18874368
  %1227 = inttoptr i32 %add1.i.i125.i to ptr
  %1228 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1227) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %1229 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1229)
  %1230 = load i16, ptr %tx_desc_head.i, align 8
  %1231 = ptrtoint ptr %tx_desc_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1231)
  %1232 = load i16, ptr %tx_desc_pos.i.i, align 2
  %mul.i127.i = mul i16 %1230, 20
  %add.i128.i = add i16 %mul.i127.i, 8
  %add3.i129.i = add i16 %add.i128.i, %1232
  %1233 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1234, i16 noundef zeroext %add3.i129.i) #17
  %1235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load ptr, ptr %dev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  call void @arm_heavy_mb() #17
  %base_addr.i.i131.i = getelementptr inbounds %struct.net_device, ptr %1236, i32 0, i32 5
  %1237 = ptrtoint ptr %base_addr.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load i32, ptr %base_addr.i.i131.i, align 32
  %add.i.i132.i = add i32 %1238, 8
  %and.i.i133.i = and i32 %add.i.i132.i, 1048575
  %add1.i.i134.i = or i32 %and.i.i133.i, -18874368
  %1239 = inttoptr i32 %add1.i.i134.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1239, i8 0) #17, !srcloc !312
  %conv17.i = zext i16 %1216 to i32
  %1240 = ptrtoint ptr %tx_free_mem.i to i32
  call void @__asan_load2_noabort(i32 %1240)
  %1241 = load i16, ptr %tx_free_mem.i, align 2
  %add.i183 = add i16 %1241, %1216
  store i16 %add.i183, ptr %tx_free_mem.i, align 2
  %1242 = ptrtoint ptr %tx_desc_free.i to i32
  call void @__asan_load2_noabort(i32 %1242)
  %1243 = load i16, ptr %tx_desc_free.i, align 2
  %inc.i184 = add i16 %1243, 1
  store i16 %inc.i184, ptr %tx_desc_free.i, align 2
  %1244 = ptrtoint ptr %tx_buff_head.i to i32
  call void @__asan_load2_noabort(i32 %1244)
  %1245 = load i16, ptr %tx_buff_head.i, align 8
  %conv20.i = zext i16 %1245 to i32
  %add22.i = add nuw nsw i32 %conv20.i, %conv17.i
  %1246 = ptrtoint ptr %tx_buff_pos.i to i32
  call void @__asan_load2_noabort(i32 %1246)
  %1247 = load i16, ptr %tx_buff_pos.i, align 2
  %conv24.i = zext i16 %1247 to i32
  %1248 = ptrtoint ptr %tx_buff_size.i to i32
  call void @__asan_load2_noabort(i32 %1248)
  %1249 = load i16, ptr %tx_buff_size.i, align 2
  %conv26.i = zext i16 %1249 to i32
  %add27.i = add nuw nsw i32 %conv26.i, %conv24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %add27.i)
  %cmp28.i = icmp ugt i32 %add22.i, %add27.i
  %conv35.i = trunc i32 %add22.i to i16
  %storemerge.i185 = select i1 %cmp28.i, i16 0, i16 %conv35.i
  %1250 = ptrtoint ptr %tx_buff_head.i to i32
  call void @__asan_store2_noabort(i32 %1250)
  store i16 %storemerge.i185, ptr %tx_buff_head.i, align 8
  %1251 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_load2_noabort(i32 %1251)
  %1252 = load i16, ptr %tx_desc_head.i, align 8
  %conv37.i = zext i16 %1252 to i32
  %1253 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load2_noabort(i32 %1253)
  %1254 = load i16, ptr %tx_desc_count.i, align 2
  %conv40.i = zext i16 %1254 to i32
  %sub.i186 = add nsw i32 %conv40.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i186, i32 %conv37.i)
  %cmp41.i = icmp sgt i32 %sub.i186, %conv37.i
  %inc45.i = add i16 %1252, 1
  %storemerge98.i = select i1 %cmp41.i, i16 %inc45.i, i16 0
  %1255 = ptrtoint ptr %tx_desc_head.i to i32
  call void @__asan_store2_noabort(i32 %1255)
  store i16 %storemerge98.i, ptr %tx_desc_head.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1228)
  %cmp50.i = icmp eq i8 %1228, 1
  br i1 %cmp50.i, label %if.then52.i, label %for.body.i187.if.end64.i_crit_edge

for.body.i187.if.end64.i_crit_edge:               ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64.i

if.then52.i:                                      ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1203)
  %cmp54.i = icmp eq i8 %1203, 0
  %1256 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load ptr, ptr %dev.i, align 4
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1257, i32 0, i32 36, i32 5
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1257, i32 0, i32 36, i32 1
  %tx_errors.sink135.i = select i1 %cmp54.i, ptr %tx_packets.i, ptr %tx_errors.i
  %1258 = ptrtoint ptr %tx_errors.sink135.i to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load i32, ptr %tx_errors.sink135.i, align 4
  %inc61.i = add i32 %1259, 1
  store i32 %inc61.i, ptr %tx_errors.sink135.i, align 4
  %1260 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1260, i32 0, i32 103
  %1261 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %1262) #17
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then52.i, %for.body.i187.if.end64.i_crit_edge
  %inc65.i = add nuw nsw i32 %i.0.i170, 1
  br label %for.cond.i179

do.end63:                                         ; preds = %if.end36
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %dev_id) #20
  %1263 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1264)
  %cmp.i188 = icmp eq i32 %1264, 7
  br i1 %cmp.i188, label %do.end63.sw.epilog_crit_edge, label %if.end.i

do.end63.sw.epilog_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i:                                         ; preds = %do.end63
  %1265 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1265)
  store i32 7, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1264)
  %cmp6.i = icmp eq i32 %1264, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.end.i
  %1266 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %1267) #17
  %1268 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1269, i32 0, i32 6
  %1270 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %1271, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %1269, i32 0, i32 103
  %1272 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %_tx.i.i24.i, align 128
  %state.i.i25.i = getelementptr inbounds %struct.netdev_queue, ptr %1273, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %1274 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %1274)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end36
  %1275 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1275)
  %1276 = load i16, ptr %command_pos.i.i, align 2
  %add.i.i189 = add i16 %1276, 1
  %1277 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1278, i16 noundef zeroext %add.i.i189) #17
  %1279 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i191 = getelementptr inbounds %struct.net_device, ptr %1280, i32 0, i32 5
  %1281 = ptrtoint ptr %base_addr.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load i32, ptr %base_addr.i.i.i191, align 32
  %add.i.i.i192 = add i32 %1282, 8
  %and.i.i.i193 = and i32 %add.i.i.i192, 1048575
  %add1.i.i.i194 = or i32 %and.i.i.i193, -18874368
  %1283 = inttoptr i32 %add1.i.i.i194 to ptr
  %1284 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1283) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %1285 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %1285)
  %1286 = load i16, ptr %command_pos.i.i, align 2
  %1287 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %dev.i, align 4
  call fastcc void @atmel_writeAR(ptr noundef %1288, i16 noundef zeroext %1286) #17
  %1289 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i128.i = getelementptr inbounds %struct.net_device, ptr %1290, i32 0, i32 5
  %1291 = ptrtoint ptr %base_addr.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %1291)
  %1292 = load i32, ptr %base_addr.i.i128.i, align 32
  %add.i.i129.i = add i32 %1292, 8
  %and.i.i130.i = and i32 %add.i.i129.i, 1048575
  %add1.i.i131.i = or i32 %and.i.i130.i, -18874368
  %1293 = inttoptr i32 %add1.i.i131.i to ptr
  %1294 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1293) #17, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #17
  %1295 = call ptr @memset(ptr %wrqu.i, i32 255, i32 16)
  %1296 = zext i8 %1284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1296, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %1284, label %if.end.i195 [
    i8 0, label %sw.bb68.atmel_command_irq.exit_crit_edge
    i8 8, label %sw.bb68.atmel_command_irq.exit_crit_edge273
  ]

sw.bb68.atmel_command_irq.exit_crit_edge273:      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

sw.bb68.atmel_command_irq.exit_crit_edge:         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

if.end.i195:                                      ; preds = %sw.bb68
  %1297 = zext i8 %1294 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1297, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %1294, label %if.end.i195.atmel_command_irq.exit_crit_edge [
    i8 5, label %sw.bb.i
    i8 3, label %sw.bb14.i
    i8 11, label %sw.bb39.i
    i8 4, label %sw.bb55.i
  ]

if.end.i195.atmel_command_irq.exit_crit_edge:     ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

sw.bb.i:                                          ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1284)
  %cmp10.i = icmp eq i8 %1284, 1
  br i1 %cmp10.i, label %if.then12.i, label %sw.bb.i.atmel_command_irq.exit_crit_edge

sw.bb.i.atmel_command_irq.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

if.then12.i:                                      ; preds = %sw.bb.i
  %1298 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load i32, ptr %station_is_associated64.i, align 8
  %1300 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_store4_noabort(i32 %1300)
  store i32 %1299, ptr %station_was_associated65.i, align 4
  call fastcc void @atmel_get_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 14, ptr noundef %CurrentBSSID) #17
  %1301 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1302)
  %cmp.i.i196 = icmp eq i32 %1302, 4
  br i1 %cmp.i.i196, label %if.then12.i.atmel_command_irq.exit_crit_edge, label %if.end.i.i

if.then12.i.atmel_command_irq.exit_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

if.end.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  %1303 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1303)
  store i32 4, ptr %station_state, align 8
  %1304 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1305, i32 0, i32 103
  %1306 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i197 = getelementptr inbounds %struct.netdev_queue, ptr %1307, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i.i197) #17
  %1308 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_on(ptr noundef %1309) #17
  br label %atmel_command_irq.exit

sw.bb14.i:                                        ; preds = %if.end.i195
  %1310 = ptrtoint ptr %fast_scan40.i to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load i32, ptr %fast_scan40.i, align 4
  store i32 0, ptr %fast_scan40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1284)
  %cmp18.not.i = icmp eq i8 %1284, 1
  br i1 %cmp18.not.i, label %if.else.i198, label %if.then20.i

if.then20.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1) #17
  br label %atmel_command_irq.exit

if.else.i198:                                     ; preds = %sw.bb14.i
  %call21.i = call fastcc i32 @retrieve_bss(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, -1
  br i1 %cmp22.not.i, label %if.else25.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else.i198
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_join_bss(ptr noundef %add.ptr.i, i32 noundef %call21.i) #17
  br label %if.then36.i

if.else25.i:                                      ; preds = %if.else.i198
  %1312 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1313)
  %cmp26.i = icmp eq i32 %1313, 1
  br i1 %cmp26.i, label %land.lhs.true.i199, label %if.else25.i.if.else31.i_crit_edge

if.else25.i.if.else31.i_crit_edge:                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else31.i

land.lhs.true.i199:                               ; preds = %if.else25.i
  %1314 = ptrtoint ptr %SSID_size.i to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load i32, ptr %SSID_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1315)
  %cmp28.not.i = icmp eq i32 %1315, 0
  br i1 %cmp28.not.i, label %land.lhs.true.i199.if.else31.i_crit_edge, label %if.then30.i

land.lhs.true.i199.if.else31.i_crit_edge:         ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else31.i

if.then30.i:                                      ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @start(ptr noundef %add.ptr.i) #17
  br label %if.then36.i

if.else31.i:                                      ; preds = %land.lhs.true.i199.if.else31.i_crit_edge, %if.else25.i.if.else31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1311)
  %tobool.not.i200 = icmp eq i32 %1311, 0
  %lnot.ext.i = zext i1 %tobool.not.i200 to i32
  %1316 = ptrtoint ptr %fast_scan40.i to i32
  call void @__asan_store4_noabort(i32 %1316)
  store i32 %lnot.ext.i, ptr %fast_scan40.i, align 4
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1) #17
  %1317 = ptrtoint ptr %site_survey_state46.i to i32
  call void @__asan_store4_noabort(i32 %1317)
  store i32 2, ptr %site_survey_state46.i, align 4
  br label %atmel_command_irq.exit

if.then36.i:                                      ; preds = %if.then30.i, %if.then24.i
  %1318 = ptrtoint ptr %site_survey_state46.i to i32
  call void @__asan_store4_noabort(i32 %1318)
  store i32 2, ptr %site_survey_state46.i, align 4
  %1319 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %1319)
  store i16 0, ptr %14, align 4
  %1320 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %1320)
  store i16 0, ptr %15, align 2
  %1321 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1321)
  %1322 = load ptr, ptr %dev.i, align 4
  call void @wireless_send_event(ptr noundef %1322, i32 noundef 35609, ptr noundef nonnull %wrqu.i, ptr noundef null) #17
  br label %atmel_command_irq.exit

sw.bb39.i:                                        ; preds = %if.end.i195
  %1323 = ptrtoint ptr %fast_scan40.i to i32
  call void @__asan_store4_noabort(i32 %1323)
  store i32 0, ptr %fast_scan40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1284)
  %cmp42.not.i = icmp eq i8 %1284, 1
  br i1 %cmp42.not.i, label %if.end45.i, label %sw.bb39.i.atmel_command_irq.exit_crit_edge

sw.bb39.i.atmel_command_irq.exit_crit_edge:       ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

if.end45.i:                                       ; preds = %sw.bb39.i
  %1324 = ptrtoint ptr %site_survey_state46.i to i32
  call void @__asan_store4_noabort(i32 %1324)
  store i32 2, ptr %site_survey_state46.i, align 4
  %1325 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_load4_noabort(i32 %1325)
  %1326 = load i32, ptr %station_is_associated64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1326)
  %tobool48.not.i = icmp eq i32 %1326, 0
  br i1 %tobool48.not.i, label %if.else53.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end45.i
  %1327 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1328)
  %cmp.i134.i = icmp eq i32 %1328, 4
  br i1 %cmp.i134.i, label %if.then49.i.atmel_enter_state.exit150.i_crit_edge, label %if.end.i135.i

if.then49.i.atmel_enter_state.exit150.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit150.i

if.end.i135.i:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  %1329 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1329)
  store i32 4, ptr %station_state, align 8
  %1330 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i137.i = getelementptr inbounds %struct.net_device, ptr %1331, i32 0, i32 103
  %1332 = ptrtoint ptr %_tx.i.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %_tx.i.i.i137.i, align 128
  %state.i.i.i138.i = getelementptr inbounds %struct.netdev_queue, ptr %1333, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i138.i) #17
  %1334 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_on(ptr noundef %1335) #17
  br label %atmel_enter_state.exit150.i

atmel_enter_state.exit150.i:                      ; preds = %if.end.i135.i, %if.then49.i.atmel_enter_state.exit150.i_crit_edge
  %1336 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %1336)
  store i16 0, ptr %14, align 4
  %1337 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %1337)
  store i16 0, ptr %15, align 2
  %1338 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %dev.i, align 4
  call void @wireless_send_event(ptr noundef %1339, i32 noundef 35609, ptr noundef nonnull %wrqu.i, ptr noundef null) #17
  br label %atmel_command_irq.exit

if.else53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1) #17
  br label %atmel_command_irq.exit

sw.bb55.i:                                        ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1284)
  %cmp57.i = icmp eq i8 %1284, 1
  br i1 %cmp57.i, label %if.then59.i, label %if.end77.i

if.then59.i:                                      ; preds = %sw.bb55.i
  %1340 = ptrtoint ptr %operating_mode60.i to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load i32, ptr %operating_mode60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1341)
  %cmp61.i = icmp eq i32 %1341, 1
  br i1 %cmp61.i, label %if.then63.i, label %if.else66.i

if.then63.i:                                      ; preds = %if.then59.i
  %1342 = ptrtoint ptr %station_is_associated64.i to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load i32, ptr %station_is_associated64.i, align 8
  %1344 = ptrtoint ptr %station_was_associated65.i to i32
  call void @__asan_store4_noabort(i32 %1344)
  store i32 %1343, ptr %station_was_associated65.i, align 4
  %1345 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1346)
  %cmp.i229 = icmp eq i32 %1346, 4
  br i1 %cmp.i229, label %if.then63.i.atmel_command_irq.exit_crit_edge, label %if.end.i230

if.then63.i.atmel_command_irq.exit_crit_edge:     ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_command_irq.exit

if.end.i230:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #19
  %1347 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1347)
  store i32 4, ptr %station_state, align 8
  %1348 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i232 = getelementptr inbounds %struct.net_device, ptr %1349, i32 0, i32 103
  %1350 = ptrtoint ptr %_tx.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %1350)
  %1351 = load ptr, ptr %_tx.i.i.i232, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1351, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #17
  %1352 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1352)
  %1353 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_on(ptr noundef %1353) #17
  br label %atmel_command_irq.exit

if.else66.i:                                      ; preds = %if.then59.i
  %1354 = ptrtoint ptr %AuthenticationRequestRetryCnt.i to i32
  call void @__asan_store4_noabort(i32 %1354)
  store i32 0, ptr %AuthenticationRequestRetryCnt.i, align 8
  %1355 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1356)
  %cmp.i214 = icmp eq i32 %1356, 2
  br i1 %cmp.i214, label %if.else66.i.atmel_enter_state.exit227_crit_edge, label %if.end.i215

if.else66.i.atmel_enter_state.exit227_crit_edge:  ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit227

if.end.i215:                                      ; preds = %if.else66.i
  %1357 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %1357)
  store i32 2, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1356)
  %cmp6.i216 = icmp eq i32 %1356, 4
  br i1 %cmp6.i216, label %if.then7.i221, label %if.end.i215.atmel_enter_state.exit227_crit_edge

if.end.i215.atmel_enter_state.exit227_crit_edge:  ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit227

if.then7.i221:                                    ; preds = %if.end.i215
  %1358 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load ptr, ptr %dev.i, align 4
  call void @netif_carrier_off(ptr noundef %1359) #17
  %1360 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %dev.i, align 4
  %state.i.i218 = getelementptr inbounds %struct.net_device, ptr %1361, i32 0, i32 6
  %1362 = ptrtoint ptr %state.i.i218 to i32
  call void @__asan_load4_noabort(i32 %1362)
  %1363 = load volatile i32, ptr %state.i.i218, align 4
  %and1.i.i.i219 = and i32 %1363, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i219)
  %tobool.i.not.i220 = icmp eq i32 %and1.i.i.i219, 0
  br i1 %tobool.i.not.i220, label %if.then7.i221.if.end12.i226_crit_edge, label %if.then10.i224

if.then7.i221.if.end12.i226_crit_edge:            ; preds = %if.then7.i221
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i226

if.then10.i224:                                   ; preds = %if.then7.i221
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i222 = getelementptr inbounds %struct.net_device, ptr %1361, i32 0, i32 103
  %1364 = ptrtoint ptr %_tx.i.i24.i222 to i32
  call void @__asan_load4_noabort(i32 %1364)
  %1365 = load ptr, ptr %_tx.i.i24.i222, align 128
  %state.i.i25.i223 = getelementptr inbounds %struct.netdev_queue, ptr %1365, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i223) #17
  br label %if.end12.i226

if.end12.i226:                                    ; preds = %if.then10.i224, %if.then7.i221.if.end12.i226_crit_edge
  %1366 = ptrtoint ptr %last_beacon_timestamp.i225 to i32
  call void @__asan_store8_noabort(i32 %1366)
  store i64 0, ptr %last_beacon_timestamp.i225, align 8
  br label %atmel_enter_state.exit227

atmel_enter_state.exit227:                        ; preds = %if.end12.i226, %if.end.i215.atmel_enter_state.exit227_crit_edge, %if.else66.i.atmel_enter_state.exit227_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1367 = load volatile i32, ptr @jiffies, align 128
  %add.i201 = add i32 %1367, 256
  %call67.i = call i32 @mod_timer(ptr noundef %management_timer.i, i32 noundef %add.i201) #17
  %1368 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %1368)
  store i32 1, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  %1369 = ptrtoint ptr %wep_is_on.i202 to i32
  call void @__asan_load1_noabort(i32 %1369)
  %1370 = load i8, ptr %wep_is_on.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1370)
  %tobool69.not.i203 = icmp eq i8 %1370, 0
  br i1 %tobool69.not.i203, label %atmel_enter_state.exit227.send_authentication_request.exit_crit_edge, label %land.lhs.true70.i

atmel_enter_state.exit227.send_authentication_request.exit_crit_edge: ; preds = %atmel_enter_state.exit227
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_authentication_request.exit

land.lhs.true70.i:                                ; preds = %atmel_enter_state.exit227
  call void @__sanitizer_cov_trace_pc() #19
  %1371 = ptrtoint ptr %exclude_unencrypted.i to i32
  call void @__asan_load1_noabort(i32 %1371)
  %1372 = load i8, ptr %exclude_unencrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1372)
  %tobool72.not.i = icmp ne i8 %1372, 0
  %spec.select.i = zext i1 %tobool72.not.i to i16
  br label %send_authentication_request.exit

send_authentication_request.exit:                 ; preds = %land.lhs.true70.i, %atmel_enter_state.exit227.send_authentication_request.exit_crit_edge
  %auth.0.i = phi i16 [ 0, %atmel_enter_state.exit227.send_authentication_request.exit_crit_edge ], [ %spec.select.i, %land.lhs.true70.i ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header.i204) #17
  %1373 = call ptr @memset(ptr %94, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %auth.i) #17
  %1374 = call ptr @memset(ptr %21, i32 255, i32 256)
  %1375 = ptrtoint ptr %header.i204 to i32
  call void @__asan_store2_noabort(i32 %1375)
  store i16 -20480, ptr %header.i204, align 2
  %1376 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %1376)
  store i16 128, ptr %16, align 2
  %1377 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %1377)
  store i16 0, ptr %20, align 2
  %1378 = call ptr @memcpy(ptr %17, ptr %CurrentBSSID, i32 6)
  %1379 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1379)
  %1380 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %1380, i32 0, i32 86
  %1381 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %1381)
  %1382 = load ptr, ptr %dev_addr.i, align 64
  %1383 = call ptr @memcpy(ptr %18, ptr %1382, i32 6)
  %1384 = call ptr @memcpy(ptr %19, ptr %CurrentBSSID, i32 6)
  %1385 = shl nuw nsw i16 %auth.0.i, 8
  %1386 = ptrtoint ptr %auth.i to i32
  call void @__asan_store2_noabort(i32 %1386)
  store i16 %1385, ptr %auth.i, align 2
  %1387 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %1387)
  store i16 0, ptr %status.i, align 2
  %1388 = ptrtoint ptr %trans_seq.i to i32
  call void @__asan_store2_noabort(i32 %1388)
  store i16 256, ptr %trans_seq.i, align 2
  %1389 = ptrtoint ptr %ExpectedAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %1389)
  store i32 2, ptr %ExpectedAuthentTransactionSeqNum.i, align 4
  %1390 = ptrtoint ptr %CurrentAuthentTransactionSeqNum.i to i32
  call void @__asan_store4_noabort(i32 %1390)
  store i32 3, ptr %CurrentAuthentTransactionSeqNum.i, align 8
  call fastcc void @atmel_transmit_management_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %header.i204, ptr noundef nonnull %auth.i, i32 noundef 6) #17
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %auth.i) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header.i204) #17
  br label %atmel_command_irq.exit

if.end77.i:                                       ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1) #17
  br label %atmel_command_irq.exit

atmel_command_irq.exit:                           ; preds = %if.end77.i, %send_authentication_request.exit, %if.end.i230, %if.then63.i.atmel_command_irq.exit_crit_edge, %if.else53.i, %atmel_enter_state.exit150.i, %sw.bb39.i.atmel_command_irq.exit_crit_edge, %if.then36.i, %if.else31.i, %if.then20.i, %if.end.i.i, %if.then12.i.atmel_command_irq.exit_crit_edge, %sw.bb.i.atmel_command_irq.exit_crit_edge, %if.end.i195.atmel_command_irq.exit_crit_edge, %sw.bb68.atmel_command_irq.exit_crit_edge, %sw.bb68.atmel_command_irq.exit_crit_edge273
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #17
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end36
  call fastcc void @atmel_get_mib(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext 14, ptr noundef %CurrentBSSID)
  %1391 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1392)
  %tobool71.not = icmp eq i32 %1392, 0
  br i1 %tobool71.not, label %sw.bb69.sw.epilog_crit_edge, label %if.then72

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then72:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @build_wpa_mib(ptr noundef %add.ptr.i)
  br label %sw.epilog

do.end77:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %dev_id) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end77, %if.then72, %sw.bb69.sw.epilog_crit_edge, %atmel_command_irq.exit, %if.end12.i, %if.end.i.sw.epilog_crit_edge, %do.end63.sw.epilog_crit_edge, %land.rhs.i182.sw.epilog_crit_edge, %for.cond.i179.sw.epilog_crit_edge, %rx_done_irq.exit, %if.then54, %land.lhs.true50.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge
  %call9 = call fastcc i32 @atmel_lock_mac(ptr noundef %add.ptr.i)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.epilog.do.end_crit_edge, label %sw.epilog.if.end13_crit_edge

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

cleanup:                                          ; preds = %do.end31, %if.then18, %do.end, %if.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end31 ], [ %cond, %if.then18 ], [ 1, %do.end ], [ 1, %land.lhs.true2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 98) #17
  %station_state = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %entry.sw.epilog38_crit_edge, label %if.then

entry.sw.epilog38_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog38

if.then:                                          ; preds = %entry
  %major_version = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 41, i32 14
  %4 = ptrtoint ptr %major_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %major_version, align 2
  %conv = zext i16 %5 to i32
  %minor_version = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 41, i32 15
  %6 = ptrtoint ptr %minor_version to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %minor_version, align 2
  %conv2 = zext i16 %7 to i32
  %build_version = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 41, i32 12
  %8 = ptrtoint ptr %build_version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %build_version, align 2
  %conv4 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4) #17
  %card_type = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp5.not = icmp eq i32 %11, 2
  br i1 %cmp5.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #17
  br label %if.end12

if.else:                                          ; preds = %if.then
  %firmware = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %firmware, align 4
  %tobool.not = icmp eq ptr %13, null
  %firmware_id10 = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 2
  br i1 %tobool.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef %firmware_id10) #17
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef %firmware_id10) #17
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then8, %if.then7
  %14 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.atmel_proc_show, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end12.sw.epilog_crit_edge
  %c.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.55, %if.end12.sw.epilog_crit_edge ]
  %reg_domain = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 48
  %18 = ptrtoint ptr %reg_domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_domain, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %19, label %for.inc.7.fold.split86 [
    i32 16, label %sw.epilog.for.inc.7_crit_edge
    i32 32, label %for.inc.7.fold.split
    i32 48, label %for.inc.7.fold.split81
    i32 49, label %for.inc.7.fold.split82
    i32 50, label %for.inc.7.fold.split83
    i32 64, label %for.inc.7.fold.split84
    i32 65, label %for.inc.7.fold.split85
    i32 80, label %if.then21.7
  ]

sw.epilog.for.inc.7_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

if.then21.7:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split81:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split82:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split83:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split84:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split85:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7.fold.split86:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.7.fold.split86, %for.inc.7.fold.split85, %for.inc.7.fold.split84, %for.inc.7.fold.split83, %for.inc.7.fold.split82, %for.inc.7.fold.split81, %for.inc.7.fold.split, %if.then21.7, %sw.epilog.for.inc.7_crit_edge
  %r.1.7 = phi ptr [ @.str.29, %if.then21.7 ], [ @.str.22, %sw.epilog.for.inc.7_crit_edge ], [ @.str.23, %for.inc.7.fold.split ], [ @.str.24, %for.inc.7.fold.split81 ], [ @.str.25, %for.inc.7.fold.split82 ], [ @.str.26, %for.inc.7.fold.split83 ], [ @.str.27, %for.inc.7.fold.split84 ], [ @.str.28, %for.inc.7.fold.split85 ], [ @.str.55, %for.inc.7.fold.split86 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull %c.0) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, ptr noundef nonnull %r.1.7) #17
  %do_rx_crc = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %do_rx_crc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %do_rx_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  %cond = select i1 %tobool24.not, ptr @.str.60, ptr @.str.59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond) #17
  %use_wpa = getelementptr inbounds %struct.atmel_private, ptr %1, i32 0, i32 38
  %23 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond26) #17
  %25 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %26 = icmp ult i32 %.pr, 8
  br i1 %26, label %switch.lookup87, label %for.inc.7.sw.epilog38_crit_edge

for.inc.7.sw.epilog38_crit_edge:                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog38

switch.lookup87:                                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep88 = getelementptr inbounds [8 x ptr], ptr @switch.table.atmel_proc_show.120, i32 0, i32 %.pr
  %27 = ptrtoint ptr %switch.gep88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load89 = load ptr, ptr %switch.gep88, align 4
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %switch.lookup87, %for.inc.7.sw.epilog38_crit_edge, %entry.sw.epilog38_crit_edge
  %s.0 = phi ptr [ %switch.load89, %switch.lookup87 ], [ @.str.71, %entry.sw.epilog38_crit_edge ], [ @.str.55, %for.inc.7.sw.epilog38_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, ptr noundef nonnull %s.0) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_atmel_card(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_type = getelementptr i8, ptr %dev, i32 2532
  %0 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %3, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 24576) #17, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr.i12, align 32
  %and.i13 = and i32 %6, 1048575
  %add1.i14 = or i32 %and.i13, -18874368
  %7 = inttoptr i32 %add1.i14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 16384) #17, !srcloc !310
  %management_timer = getelementptr i8, ptr %dev, i32 2356
  %call1 = tail call i32 @del_timer_sync(ptr noundef %management_timer) #17
  tail call void @unregister_netdev(ptr noundef %dev) #17
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.15, ptr noundef null) #17
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %dev) #17
  %firmware = getelementptr i8, ptr %dev, i32 2348
  %10 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %firmware, align 4
  tail call void @kfree(ptr noundef %11) #17
  %12 = ptrtoint ptr %base_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr.i12, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %13, i32 noundef 32) #17
  tail call void @free_netdev(ptr noundef %dev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_close(ptr nocapture noundef %dev) #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %0 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #17
  %2 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %5 = call ptr @memset(ptr %sa_data, i32 0, i32 6)
  %dev1 = getelementptr i8, ptr %dev, i32 2404
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @wireless_send_event(ptr noundef %7, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #17
  %8 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %station_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = phi i32 [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i = icmp eq i32 %9, 6
  br i1 %cmp.i, label %if.end.atmel_enter_state.exit_crit_edge, label %if.end.i

if.end.atmel_enter_state.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %station_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp6.i = icmp eq i32 %9, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.atmel_enter_state.exit_crit_edge

if.end.i.atmel_enter_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.then7.i:                                       ; preds = %if.end.i
  %dev8.i = getelementptr i8, ptr %dev, i32 2404
  %11 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8.i, align 4
  call void @netif_carrier_off(ptr noundef %12) #17
  %13 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i24.i, align 128
  %state.i.i25.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %last_beacon_timestamp.i = getelementptr i8, ptr %dev, i32 7376
  %19 = ptrtoint ptr %last_beacon_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %last_beacon_timestamp.i, align 8
  br label %atmel_enter_state.exit

atmel_enter_state.exit:                           ; preds = %if.end12.i, %if.end.i.atmel_enter_state.exit_crit_edge, %if.end.atmel_enter_state.exit_crit_edge
  %bus_type = getelementptr i8, ptr %dev, i32 2532
  %20 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2 = icmp eq i32 %21, 0
  br i1 %cmp2, label %if.then3, label %atmel_enter_state.exit.if.end4_crit_edge

atmel_enter_state.exit.if.end4_crit_edge:         ; preds = %atmel_enter_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %atmel_enter_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %23, 1048575
  %add1.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 24576) #17, !srcloc !310
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %atmel_enter_state.exit.if.end4_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  call void @arm_heavy_mb() #17
  %base_addr.i10 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %25 = ptrtoint ptr %base_addr.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_addr.i10, align 32
  %and.i11 = and i32 %26, 1048575
  %add1.i12 = or i32 %and.i11, -18874368
  %27 = inttoptr i32 %add1.i12 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 16384) #17, !srcloc !310
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %header = alloca %struct.ieee80211_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %header) #17
  %0 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 5
  %5 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 6
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = call ptr @memset(ptr %header, i32 255, i32 30)
  %7 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %8)
  %cmp = icmp ugt i32 %8, 60
  %phi.cast125 = and i32 %8, 65535
  %spec.select = select i1 %cmp, i32 %phi.cast125, i32 60
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %present_callback = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %present_callback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %present_callback, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call7 = tail call i32 %12(ptr noundef nonnull %10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %13 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @consume_skb(ptr noundef %skb) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %15 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp9.not = icmp eq i32 %16, 4
  br i1 %cmp9.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %17 = ptrtoint ptr %tx_errors13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_errors13, align 4
  %inc14 = add i32 %18, 1
  store i32 %inc14, ptr %tx_errors13, align 4
  tail call void @consume_skb(ptr noundef %skb) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %timerlock = getelementptr i8, ptr %dev, i32 2488
  tail call void @_raw_spin_lock_bh(ptr noundef %timerlock) #17
  %irqlock = getelementptr i8, ptr %dev, i32 2444
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #17
  %19 = trunc i32 %spec.select to i16
  %conv24 = add i16 %19, 18
  %tx_buff_size.i = getelementptr i8, ptr %dev, i32 2784
  %20 = ptrtoint ptr %tx_buff_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_buff_size.i, align 2
  %tx_buff_tail.i = getelementptr i8, ptr %dev, i32 2570
  %22 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_buff_tail.i, align 2
  %sub.i = sub i16 %21, %23
  %tx_desc_free.i = getelementptr i8, ptr %dev, i32 2558
  %24 = ptrtoint ptr %tx_desc_free.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_desc_free.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp.i = icmp eq i16 %25, 3
  br i1 %cmp.i, label %if.end15.if.then27_crit_edge, label %lor.lhs.false.i

if.end15.if.then27_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

lor.lhs.false.i:                                  ; preds = %if.end15
  %tx_free_mem.i = getelementptr i8, ptr %dev, i32 2566
  %26 = ptrtoint ptr %tx_free_mem.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_free_mem.i, align 2
  %conv5.i = zext i16 %27 to i32
  %conv6.i = zext i16 %conv24 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %conv24)
  %cmp7.i = icmp ult i16 %27, %conv24
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then27_crit_edge, label %if.end.i

lor.lhs.false.i.if.then27_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %conv24)
  %cmp11.not.i = icmp ult i16 %sub.i, %conv24
  br i1 %cmp11.not.i, label %if.end19.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx_buff_pos.i = getelementptr i8, ptr %dev, i32 2782
  %28 = ptrtoint ptr %tx_buff_pos.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_buff_pos.i, align 2
  %add.i = add i16 %29, %23
  br label %find_tx_buff.exit

if.end19.i:                                       ; preds = %if.end.i
  %conv9.i = zext i16 %sub.i to i32
  %sub23.i = sub nsw i32 %conv5.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23.i, i32 %conv6.i)
  %cmp25.not.i = icmp slt i32 %sub23.i, %conv6.i
  br i1 %cmp25.not.i, label %if.end19.i.if.then27_crit_edge, label %if.then27.i

if.end19.i.if.then27_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %tx_buff_tail.i, align 2
  %tx_buff_pos30.i = getelementptr i8, ptr %dev, i32 2782
  %31 = ptrtoint ptr %tx_buff_pos30.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx_buff_pos30.i, align 2
  br label %find_tx_buff.exit

find_tx_buff.exit:                                ; preds = %if.then27.i, %if.then13.i
  %retval.0.i = phi i16 [ %add.i, %if.then13.i ], [ %32, %if.then27.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %tobool26.not = icmp eq i16 %retval.0.i, 0
  br i1 %tobool26.not, label %find_tx_buff.exit.if.then27_crit_edge, label %if.end32

find_tx_buff.exit.if.then27_crit_edge:            ; preds = %find_tx_buff.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27:                                        ; preds = %find_tx_buff.exit.if.then27_crit_edge, %if.end19.i.if.then27_crit_edge, %lor.lhs.false.i.if.then27_crit_edge, %if.end15.if.then27_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %33 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_dropped, align 4
  %inc29 = add i32 %34, 1
  store i32 %inc29, ptr %tx_dropped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call20) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %timerlock) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  br label %cleanup

if.end32:                                         ; preds = %find_tx_buff.exit
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %0, align 2
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %4, align 2
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %39 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  %spec.select126 = select i1 %tobool33.not, i16 8, i16 16392
  %operating_mode = getelementptr i8, ptr %dev, i32 2820
  %41 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %operating_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp38 = icmp eq i32 %42, 1
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = call ptr @memcpy(ptr %1, ptr %44, i32 6)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr, align 64
  %48 = call ptr @memcpy(ptr %2, ptr %47, i32 6)
  %BSSID = getelementptr i8, ptr %dev, i32 7306
  %49 = call ptr @memcpy(ptr %3, ptr %BSSID, i32 6)
  br label %if.end49

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %50 = or i16 %spec.select126, 256
  %CurrentBSSID = getelementptr i8, ptr %dev, i32 7300
  %51 = call ptr @memcpy(ptr %1, ptr %CurrentBSSID, i32 6)
  %dev_addr47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr47, align 64
  %54 = call ptr @memcpy(ptr %2, ptr %53, i32 6)
  %data.i127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i127, align 4
  %57 = call ptr @memcpy(ptr %3, ptr %56, i32 6)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then40
  %frame_ctl.1 = phi i16 [ %spec.select126, %if.then40 ], [ %50, %if.else ]
  %use_wpa = getelementptr i8, ptr %dev, i32 2768
  %58 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool50.not = icmp eq i32 %59, 0
  br i1 %tobool50.not, label %if.end49.if.end52_crit_edge, label %if.then51

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %60 = call ptr @memcpy(ptr %5, ptr @rfc1042_header, i32 6)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49.if.end52_crit_edge
  %61 = tail call i16 @llvm.bswap.i16(i16 %frame_ctl.1)
  %62 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %header, align 2
  call fastcc void @atmel_copy_to_card(ptr noundef %dev, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %header, i16 noundef zeroext 30)
  %add54 = add i16 %retval.0.i, 30
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 12
  %conv57 = add i16 %19, -12
  tail call fastcc void @atmel_copy_to_card(ptr noundef %dev, i16 noundef zeroext %add54, ptr noundef %add.ptr, i16 noundef zeroext %conv57)
  %65 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %tx_buff_tail.i, align 2
  %conv63 = add i16 %66, %conv24
  store i16 %conv63, ptr %tx_buff_tail.i, align 2
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %71 = and i8 %70, 1
  %and = zext i8 %71 to i32
  tail call fastcc void @tx_update_descriptor(ptr noundef %add.ptr.i, i32 noundef %and, i16 noundef zeroext %conv24, i16 noundef zeroext %retval.0.i, i8 noundef zeroext 1)
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %72 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_bytes, align 4
  %add71 = add i32 %73, %spec.select
  store i32 %add71, ptr %tx_bytes, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call20) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %timerlock) #17
  tail call void @consume_skb(ptr noundef %skb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then27, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end52 ], [ 16, %if.then27 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %header) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #17
  %call = tail call i32 @atmel_open(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ioctl(ptr noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #0 align 64 {
entry:
  %com = alloca %struct.atmel_priv_ioctl, align 4
  %domain = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %com) #17
  %0 = call ptr @memset(ptr %com, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %domain) #17
  %1 = getelementptr inbounds [21 x i8], ptr %domain, i32 0, i32 20
  %2 = call ptr @memset(ptr %domain, i32 255, i32 21)
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35809, label %sw.bb
    i32 35808, label %sw.bb1
    i32 35810, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %u = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 333831, ptr %u, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %sw.bb1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.if.then11.i.i_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 40, i32 -1226833920) #23, !srcloc !324
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !325

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %com, i32 noundef 40) #17
  %8 = call i32 @llvm.read_register.i32(metadata !299) #17
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !326
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !328
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %com, ptr noundef %6, i32 noundef 40) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #17, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !325

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb1.if.then11.i.i_crit_edge
  %res.0.i.i83 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %sw.bb1.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i83
  %add.ptr.i.i = getelementptr i8, ptr %com, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i83)
  br label %sw.epilog

if.end:                                           ; preds = %if.end.i.i
  %call3 = call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %call3, label %if.end5, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.atmel_priv_ioctl, ptr %com, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.atmel_priv_ioctl, ptr %com, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv = zext i16 %15 to i32
  %call6 = call ptr @memdup_user(ptr noundef %13, i32 noundef %conv) #17
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %call6 to i32
  br label %sw.epilog

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %firmware = getelementptr i8, ptr %dev, i32 2348
  %17 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %firmware, align 4
  call void @kfree(ptr noundef %18) #17
  %19 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %firmware, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len, align 4
  %conv13 = zext i16 %21 to i32
  %firmware_length = getelementptr i8, ptr %dev, i32 2352
  %22 = ptrtoint ptr %firmware_length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv13, ptr %firmware_length, align 8
  %firmware_id = getelementptr i8, ptr %dev, i32 2312
  %call15 = call ptr @strncpy(ptr noundef %firmware_id, ptr noundef nonnull %com, i32 noundef 31)
  %arrayidx = getelementptr i8, ptr %dev, i32 2343
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %ifr_ifru19 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %24 = ptrtoint ptr %ifr_ifru19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ifr_ifru19, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #17
  %call.i.i62 = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i62, label %sw.bb17.if.then11.i.i78_crit_edge, label %land.lhs.true.i.i65

sw.bb17.if.then11.i.i78_crit_edge:                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i78

land.lhs.true.i.i65:                              ; preds = %sw.bb17
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 20, i32 -1226833920) #23, !srcloc !324
  %asmresult.i.i63 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i63)
  %cmp.i6.i64 = icmp eq i32 %asmresult.i.i63, 0
  br i1 %cmp.i6.i64, label %if.end.i.i75, label %land.lhs.true.i.i65.if.then11.i.i78_crit_edge, !prof !325

land.lhs.true.i.i65.if.then11.i.i78_crit_edge:    ; preds = %land.lhs.true.i.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i78

if.end.i.i75:                                     ; preds = %land.lhs.true.i.i65
  %call.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %domain, i32 noundef 20) #17
  %27 = call i32 @llvm.read_register.i32(metadata !299) #17
  %and.i.i.i.i.i.i67 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i67 to ptr
  %cpu_domain.i.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i68) #9, !srcloc !326
  %and.i.i.i.i69 = and i32 %29, -13
  %or.i.i.i.i70 = or i32 %and.i.i.i.i69, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i70) #17, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !328
  %call1.i.i.i71 = call i32 @arm_copy_from_user(ptr noundef nonnull %domain, ptr noundef %25, i32 noundef 20) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #17, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i71)
  %tobool4.not.i.i74 = icmp eq i32 %call1.i.i.i71, 0
  br i1 %tobool4.not.i.i74, label %if.end23, label %if.end.i.i75.if.then11.i.i78_crit_edge, !prof !325

if.end.i.i75.if.then11.i.i78_crit_edge:           ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i78

if.then11.i.i78:                                  ; preds = %if.end.i.i75.if.then11.i.i78_crit_edge, %land.lhs.true.i.i65.if.then11.i.i78_crit_edge, %sw.bb17.if.then11.i.i78_crit_edge
  %res.0.i.i7388 = phi i32 [ %call1.i.i.i71, %if.end.i.i75.if.then11.i.i78_crit_edge ], [ 20, %sw.bb17.if.then11.i.i78_crit_edge ], [ 20, %land.lhs.true.i.i65.if.then11.i.i78_crit_edge ]
  %sub.i.i76 = sub i32 20, %res.0.i.i7388
  %add.ptr.i.i77 = getelementptr i8, ptr %domain, i32 %sub.i.i76
  %30 = call ptr @memset(ptr %add.ptr.i.i77, i32 0, i32 %res.0.i.i7388)
  br label %sw.epilog

if.end23:                                         ; preds = %if.end.i.i75
  %call24 = call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %call24, label %if.end26, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end26:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %1, align 1
  %config_reg_domain = getelementptr i8, ptr %dev, i32 2844
  %call31 = call i32 @strcasecmp(ptr noundef nonnull @.str.22, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %config_reg_domain, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end26.for.inc_crit_edge
  %rc.1 = phi i32 [ -22, %if.end26.for.inc_crit_edge ], [ 0, %if.then33 ]
  %call31.1 = call i32 @strcasecmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.1)
  %tobool32.not.1 = icmp eq i32 %call31.1, 0
  br i1 %tobool32.not.1, label %if.then33.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then33.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 32, ptr %config_reg_domain, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then33.1, %for.inc.for.inc.1_crit_edge
  %rc.1.1 = phi i32 [ %rc.1, %for.inc.for.inc.1_crit_edge ], [ 0, %if.then33.1 ]
  %call31.2 = call i32 @strcasecmp(ptr noundef nonnull @.str.24, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.2)
  %tobool32.not.2 = icmp eq i32 %call31.2, 0
  br i1 %tobool32.not.2, label %if.then33.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then33.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 48, ptr %config_reg_domain, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then33.2, %for.inc.1.for.inc.2_crit_edge
  %rc.1.2 = phi i32 [ %rc.1.1, %for.inc.1.for.inc.2_crit_edge ], [ 0, %if.then33.2 ]
  %call31.3 = call i32 @strcasecmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.3)
  %tobool32.not.3 = icmp eq i32 %call31.3, 0
  br i1 %tobool32.not.3, label %if.then33.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then33.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 49, ptr %config_reg_domain, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then33.3, %for.inc.2.for.inc.3_crit_edge
  %rc.1.3 = phi i32 [ %rc.1.2, %for.inc.2.for.inc.3_crit_edge ], [ 0, %if.then33.3 ]
  %call31.4 = call i32 @strcasecmp(ptr noundef nonnull @.str.26, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.4)
  %tobool32.not.4 = icmp eq i32 %call31.4, 0
  br i1 %tobool32.not.4, label %if.then33.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then33.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 50, ptr %config_reg_domain, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then33.4, %for.inc.3.for.inc.4_crit_edge
  %rc.1.4 = phi i32 [ %rc.1.3, %for.inc.3.for.inc.4_crit_edge ], [ 0, %if.then33.4 ]
  %call31.5 = call i32 @strcasecmp(ptr noundef nonnull @.str.27, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.5)
  %tobool32.not.5 = icmp eq i32 %call31.5, 0
  br i1 %tobool32.not.5, label %if.then33.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then33.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 64, ptr %config_reg_domain, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then33.5, %for.inc.4.for.inc.5_crit_edge
  %rc.1.5 = phi i32 [ %rc.1.4, %for.inc.4.for.inc.5_crit_edge ], [ 0, %if.then33.5 ]
  %call31.6 = call i32 @strcasecmp(ptr noundef nonnull @.str.28, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.6)
  %tobool32.not.6 = icmp eq i32 %call31.6, 0
  br i1 %tobool32.not.6, label %if.then33.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.then33.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65, ptr %config_reg_domain, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then33.6, %for.inc.5.for.inc.6_crit_edge
  %rc.1.6 = phi i32 [ %rc.1.5, %for.inc.5.for.inc.6_crit_edge ], [ 0, %if.then33.6 ]
  %call31.7 = call i32 @strcasecmp(ptr noundef nonnull @.str.29, ptr noundef nonnull %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.7)
  %tobool32.not.7 = icmp eq i32 %call31.7, 0
  br i1 %tobool32.not.7, label %for.inc.7.thread, label %for.inc.7

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %config_reg_domain to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 80, ptr %config_reg_domain, align 4
  br label %land.lhs.true

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.6)
  %cmp36 = icmp eq i32 %rc.1.6, 0
  br i1 %cmp36, label %for.inc.7.land.lhs.true_crit_edge, label %for.inc.7.sw.epilog_crit_edge

for.inc.7.sw.epilog_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.inc.7.land.lhs.true_crit_edge:                ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.7.land.lhs.true_crit_edge, %for.inc.7.thread
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %40 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp38.not = icmp eq i32 %41, 6
  br i1 %cmp38.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then40

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call41 = call i32 @atmel_open(ptr noundef %dev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40, %land.lhs.true.sw.epilog_crit_edge, %for.inc.7.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge, %if.then11.i.i78, %if.end10, %if.then8, %if.end.sw.epilog_crit_edge, %if.then11.i.i, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.2 = phi i32 [ %call41, %if.then40 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %rc.1.6, %for.inc.7.sw.epilog_crit_edge ], [ %16, %if.then8 ], [ 0, %if.end10 ], [ 0, %sw.bb ], [ -1, %if.end.sw.epilog_crit_edge ], [ -1, %if.end23.sw.epilog_crit_edge ], [ -95, %entry.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i78 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %domain) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %com) #17
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_copy_to_card(ptr nocapture noundef readonly %dev, i16 noundef zeroext %dest, ptr nocapture noundef readonly %src, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atmel_writeAR(ptr noundef %dev, i16 noundef zeroext %dest)
  %0 = and i16 %dest, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %src, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr.i, align 32
  %add.i = add i32 %4, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %2) #17, !srcloc !312
  %incdec.ptr = getelementptr i8, ptr %src, i32 1
  %dec = add i16 %len, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i16 [ %dec, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %src.addr.0 = phi ptr [ %incdec.ptr, %if.then ], [ %src, %entry.if.end_crit_edge ]
  %conv1 = zext i16 %len.addr.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len.addr.0)
  %cmp30 = icmp ugt i16 %len.addr.0, 1
  br i1 %cmp30, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %base_addr.i22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %src.addr.132 = phi ptr [ %src.addr.0, %for.body.lr.ph ], [ %incdec.ptr4, %for.body.for.body_crit_edge ]
  %i.031 = phi i32 [ %conv1, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %incdec.ptr3 = getelementptr i8, ptr %src.addr.132, i32 1
  %6 = ptrtoint ptr %src.addr.132 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.132, align 1
  %incdec.ptr4 = getelementptr i8, ptr %src.addr.132, i32 2
  %8 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr3, align 1
  %conv5 = zext i8 %7 to i16
  %conv6 = zext i8 %9 to i16
  %shl = shl nuw i16 %conv6, 8
  %or = or i16 %shl, %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %10 = tail call i16 @llvm.bswap.i16(i16 %or) #17
  %11 = ptrtoint ptr %base_addr.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr.i22, align 32
  %add.i23 = add i32 %12, 8
  %and.i24 = and i32 %add.i23, 1048575
  %add1.i25 = or i32 %and.i24, -18874368
  %13 = inttoptr i32 %add1.i25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #17, !srcloc !310
  %sub = add nsw i32 %i.031, -2
  %cmp = icmp ugt i32 %sub, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %conv1, %if.end.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %src.addr.1.lcssa = phi ptr [ %src.addr.0, %if.end.for.end_crit_edge ], [ %incdec.ptr4, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool8.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool8.not, label %for.end.if.end10_crit_edge, label %if.then9

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %src.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %src.addr.1.lcssa, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i26 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %base_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr.i26, align 32
  %add.i27 = add i32 %17, 8
  %and.i28 = and i32 %add.i27, 1048575
  %add1.i29 = or i32 %and.i28, -18874368
  %18 = inttoptr i32 %add1.i29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #17, !srcloc !312
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_update_descriptor(ptr noundef %priv, i32 noundef %is_bcast, i16 noundef zeroext %len, i16 noundef zeroext %buff, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_desc_tail = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_desc_tail, align 2
  %tx_desc_pos.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 6
  %2 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i = mul i16 %1, 20
  %add.i = add i16 %mul.i, 4
  %add3.i = add i16 %add.i, %3
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %5, i16 noundef zeroext %add3.i) #17
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %8 = tail call i16 @llvm.bswap.i16(i16 %buff) #17
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %10, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #17, !srcloc !310
  %12 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_desc_tail, align 2
  %14 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i170 = mul i16 %13, 20
  %add.i171 = add i16 %mul.i170, 6
  %add3.i172 = add i16 %add.i171, %15
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %17, i16 noundef zeroext %add3.i172) #17
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %20 = tail call i16 @llvm.bswap.i16(i16 %len) #17
  %base_addr.i.i174 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 5
  %21 = ptrtoint ptr %base_addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_addr.i.i174, align 32
  %add.i.i175 = add i32 %22, 8
  %and.i.i176 = and i32 %add.i.i175, 1048575
  %add1.i.i177 = or i32 %and.i.i176, -18874368
  %23 = inttoptr i32 %add1.i.i177 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #17, !srcloc !310
  %use_wpa = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 38
  %24 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_desc_tail, align 2
  %28 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i179 = mul i16 %27, 20
  %add.i180 = add i16 %mul.i179, 18
  %add3.i181 = add i16 %add.i180, %29
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %31, i16 noundef zeroext %add3.i181) #17
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i183 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %base_addr.i.i183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_addr.i.i183, align 32
  %add.i.i184 = add i32 %35, 8
  %and.i.i185 = and i32 %add.i.i184, 1048575
  %add1.i.i186 = or i32 %and.i.i185, -18874368
  %36 = inttoptr i32 %add1.i.i186 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 %20) #17, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %37 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_desc_tail, align 2
  %39 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i188 = mul i16 %38, 20
  %add.i189 = add i16 %mul.i188, 17
  %add3.i190 = add i16 %add.i189, %40
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %42, i16 noundef zeroext %add3.i190) #17
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i192 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %base_addr.i.i192 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_addr.i.i192, align 32
  %add.i.i193 = add i32 %46, 8
  %and.i.i194 = and i32 %add.i.i193, 1048575
  %add1.i.i195 = or i32 %and.i.i194, -18874368
  %47 = inttoptr i32 %add1.i.i195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %type) #17, !srcloc !312
  %48 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tx_desc_tail, align 2
  %50 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i197 = mul i16 %49, 20
  %add.i198 = add i16 %mul.i197, 11
  %add3.i199 = add i16 %add.i198, %51
  %tx_rate = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 50
  %52 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_rate, align 8
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %55, i16 noundef zeroext %add3.i199) #17
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %conv.i = trunc i32 %53 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i201 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %base_addr.i.i201 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_addr.i.i201, align 32
  %add.i.i202 = add i32 %59, 8
  %and.i.i203 = and i32 %add.i.i202, 1048575
  %add1.i.i204 = or i32 %and.i.i203, -18874368
  %60 = inttoptr i32 %add1.i.i204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %conv.i) #17, !srcloc !312
  %61 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tx_desc_tail, align 2
  %63 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i206 = mul i16 %62, 20
  %add.i207 = add i16 %mul.i206, 10
  %add3.i208 = add i16 %add.i207, %64
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %66, i16 noundef zeroext %add3.i208) #17
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i210 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %base_addr.i.i210 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_addr.i.i210, align 32
  %add.i.i211 = add i32 %70, 8
  %and.i.i212 = and i32 %add.i.i211, 1048575
  %add1.i.i213 = or i32 %and.i.i212, -18874368
  %71 = inttoptr i32 %add1.i.i213 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 0) #17, !srcloc !312
  %72 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool13.not = icmp eq i32 %73, 0
  br i1 %tobool13.not, label %if.end.if.end78_crit_edge, label %if.then14

if.end.if.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_bcast)
  %tobool15.not = icmp eq i32 %is_bcast, 0
  br i1 %tobool15.not, label %if.else41, label %if.then16

if.then16:                                        ; preds = %if.then14
  %group_cipher_suite = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 34
  %74 = ptrtoint ptr %group_cipher_suite to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %group_cipher_suite, align 4
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %75, label %if.else25 [
    i8 1, label %if.then16.if.end71_crit_edge
    i8 5, label %if.then16.if.end71_crit_edge262
    i8 2, label %if.then24
  ]

if.then16.if.end71_crit_edge262:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then16.if.end71_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.else25:                                        ; preds = %if.then16
  %pairwise_cipher_suite = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 35
  %77 = ptrtoint ptr %pairwise_cipher_suite to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pairwise_cipher_suite, align 1
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %78, label %if.else25.if.end71_crit_edge [
    i8 1, label %if.else25.if.then34_crit_edge
    i8 5, label %if.else25.if.then34_crit_edge263
  ]

if.else25.if.then34_crit_edge263:                 ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34

if.else25.if.then34_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34

if.else25.if.end71_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then34:                                        ; preds = %if.else25.if.then34_crit_edge, %if.else25.if.then34_crit_edge263
  br label %if.end71

if.else41:                                        ; preds = %if.then14
  %pairwise_cipher_suite42 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 35
  %80 = ptrtoint ptr %pairwise_cipher_suite42 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pairwise_cipher_suite42, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %81, label %if.else54 [
    i8 1, label %if.else41.if.end71_crit_edge
    i8 5, label %if.else41.if.end71_crit_edge264
    i8 2, label %if.then53
  ]

if.else41.if.end71_crit_edge264:                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.else41.if.end71_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then53:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.else54:                                        ; preds = %if.else41
  %group_cipher_suite55 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 34
  %83 = ptrtoint ptr %group_cipher_suite55 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %group_cipher_suite55, align 4
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %84, label %if.else54.if.end71_crit_edge [
    i8 1, label %if.else54.if.then64_crit_edge
    i8 5, label %if.else54.if.then64_crit_edge265
  ]

if.else54.if.then64_crit_edge265:                 ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

if.else54.if.then64_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

if.else54.if.end71_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then64:                                        ; preds = %if.else54.if.then64_crit_edge, %if.else54.if.then64_crit_edge265
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.else54.if.end71_crit_edge, %if.then53, %if.else41.if.end71_crit_edge, %if.else41.if.end71_crit_edge264, %if.then34, %if.else25.if.end71_crit_edge, %if.then24, %if.then16.if.end71_crit_edge, %if.then16.if.end71_crit_edge262
  %cipher_type.0.shrunk = phi i8 [ 2, %if.then24 ], [ %78, %if.then34 ], [ 2, %if.then53 ], [ %84, %if.then64 ], [ %75, %if.then16.if.end71_crit_edge ], [ %75, %if.then16.if.end71_crit_edge262 ], [ 0, %if.else25.if.end71_crit_edge ], [ %81, %if.else41.if.end71_crit_edge ], [ %81, %if.else41.if.end71_crit_edge264 ], [ 0, %if.else54.if.end71_crit_edge ]
  %cipher_length.0.off0 = phi i8 [ 12, %if.then24 ], [ 8, %if.then34 ], [ 12, %if.then53 ], [ 8, %if.then64 ], [ 8, %if.then16.if.end71_crit_edge ], [ 8, %if.then16.if.end71_crit_edge262 ], [ 0, %if.else25.if.end71_crit_edge ], [ 8, %if.else41.if.end71_crit_edge ], [ 8, %if.else41.if.end71_crit_edge264 ], [ 0, %if.else54.if.end71_crit_edge ]
  %86 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tx_desc_tail, align 2
  %88 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i215 = mul i16 %87, 20
  %add.i216 = add i16 %mul.i215, 13
  %add3.i217 = add i16 %add.i216, %89
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %91, i16 noundef zeroext %add3.i217) #17
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i219 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %base_addr.i.i219 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base_addr.i.i219, align 32
  %add.i.i220 = add i32 %95, 8
  %and.i.i221 = and i32 %add.i.i220, 1048575
  %add1.i.i222 = or i32 %and.i.i221, -18874368
  %96 = inttoptr i32 %add1.i.i222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %cipher_type.0.shrunk) #17, !srcloc !312
  %97 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %tx_desc_tail, align 2
  %99 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i224 = mul i16 %98, 20
  %add.i225 = add i16 %mul.i224, 14
  %add3.i226 = add i16 %add.i225, %100
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %102, i16 noundef zeroext %add3.i226) #17
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i229 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %base_addr.i.i229 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %base_addr.i.i229, align 32
  %add.i.i230 = add i32 %106, 8
  %and.i.i231 = and i32 %add.i.i230, 1048575
  %add1.i.i232 = or i32 %and.i.i231, -18874368
  %107 = inttoptr i32 %add1.i.i232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %cipher_length.0.off0) #17, !srcloc !312
  br label %if.end78

if.end78:                                         ; preds = %if.end71, %if.end.if.end78_crit_edge
  %108 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tx_desc_tail, align 2
  %110 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i234 = mul i16 %109, 20
  %add3.i235 = add i16 %mul.i234, %111
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %113, i16 noundef zeroext %add3.i235) #17
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i237 = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %base_addr.i.i237 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %base_addr.i.i237, align 32
  %add.i.i238 = add i32 %117, 8
  %and.i.i239 = and i32 %add.i.i238, 1048575
  %add1.i.i240 = or i32 %and.i.i239, -18874368
  %118 = inttoptr i32 %add1.i.i240 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %118, i16 0) #17, !srcloc !310
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i7.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %base_addr.i7.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %base_addr.i7.i, align 32
  %add.i8.i = add i32 %122, 8
  %and.i9.i = and i32 %add.i8.i, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %123 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 128) #17, !srcloc !310
  %124 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %tx_desc_tail, align 2
  %126 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i242 = mul i16 %125, 20
  %add.i243 = add i16 %mul.i242, 8
  %add3.i244 = add i16 %add.i243, %127
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %129, i16 noundef zeroext %add3.i244) #17
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i246 = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %base_addr.i.i246 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base_addr.i.i246, align 32
  %add.i.i247 = add i32 %133, 8
  %and.i.i248 = and i32 %add.i.i247, 1048575
  %add1.i.i249 = or i32 %and.i.i248, -18874368
  %134 = inttoptr i32 %add1.i.i249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 -128) #17, !srcloc !312
  %tx_desc_previous = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 22
  %135 = ptrtoint ptr %tx_desc_previous to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %tx_desc_previous, align 4
  %137 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %tx_desc_tail, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %138)
  %cmp86.not = icmp eq i16 %136, %138
  br i1 %cmp86.not, label %if.end78.if.end91_crit_edge, label %if.then88

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

if.then88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %139 = ptrtoint ptr %tx_desc_pos.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %tx_desc_pos.i, align 2
  %mul.i251 = mul i16 %136, 20
  %add3.i252 = add i16 %140, %mul.i251
  %141 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %142, i16 noundef zeroext %add3.i252) #17
  %143 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i254 = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %base_addr.i.i254 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %base_addr.i.i254, align 32
  %add.i.i255 = add i32 %146, 8
  %and.i.i256 = and i32 %add.i.i255, 1048575
  %add1.i.i257 = or i32 %and.i.i256, -18874368
  %147 = inttoptr i32 %add1.i.i257 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %147, i16 0) #17, !srcloc !310
  %148 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i7.i258 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %base_addr.i7.i258 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %base_addr.i7.i258, align 32
  %add.i8.i259 = add i32 %151, 8
  %and.i9.i260 = and i32 %add.i8.i259, 1048575
  %add1.i10.i261 = or i32 %and.i9.i260, -18874368
  %152 = inttoptr i32 %add1.i10.i261 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %152, i16 0) #17, !srcloc !310
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end78.if.end91_crit_edge
  %153 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %tx_desc_tail, align 2
  %155 = ptrtoint ptr %tx_desc_previous to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %tx_desc_previous, align 4
  %conv95 = zext i16 %154 to i32
  %tx_desc_count = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 7
  %156 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %tx_desc_count, align 2
  %conv96 = zext i16 %157 to i32
  %sub = add nsw i32 %conv96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv95)
  %cmp97 = icmp sgt i32 %sub, %conv95
  %inc = add i16 %154, 1
  %storemerge = select i1 %cmp97, i16 %inc, i16 0
  %158 = ptrtoint ptr %tx_desc_tail to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %storemerge, ptr %tx_desc_tail, align 2
  %tx_desc_free = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 19
  %159 = ptrtoint ptr %tx_desc_free to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %tx_desc_free, align 2
  %dec = add i16 %160, -1
  store i16 %dec, ptr %tx_desc_free, align 2
  %tx_free_mem = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 23
  %161 = ptrtoint ptr %tx_free_mem to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %tx_free_mem, align 2
  %sub106 = sub i16 %162, %len
  store i16 %sub106, ptr %tx_free_mem, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_writeAR(ptr nocapture noundef readonly %dev, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !329
  tail call void @arm_heavy_mb() #17
  %0 = tail call i16 @llvm.bswap.i16(i16 %data)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %0) #17, !srcloc !310
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %add325 = add i32 %5, 4
  %and426 = and i32 %add325, 1048575
  %add527 = or i32 %and426, -18874368
  %6 = inttoptr i32 %add527 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #17, !srcloc !314
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !330
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %data)
  %cmp.not28.not = icmp eq i16 %8, %data
  br i1 %cmp.not28.not, label %entry.for.end_crit_edge, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  br label %do.body12

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %entry.do.body12_crit_edge
  %i.029 = phi i32 [ %inc, %do.body12.do.body12_crit_edge ], [ 0, %entry.do.body12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !331
  tail call void @arm_heavy_mb() #17
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr, align 32
  %add16 = add i32 %10, 4
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %0) #17, !srcloc !310
  %inc = add nuw nsw i32 %i.029, 1
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %add3 = add i32 %13, 4
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %14 = inttoptr i32 %add5 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #17, !srcloc !314
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !330
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %data)
  %cmp.not = icmp ne i16 %16, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.029)
  %cmp10 = icmp ult i32 %i.029, 9
  %or.cond = select i1 %cmp.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body12.do.body12_crit_edge, label %do.body12.for.end_crit_edge

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

for.end:                                          ; preds = %do.body12.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_lock_mac(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %host_info_base.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 40
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.then10.retry_crit_edge, %entry
  %j.0 = phi i32 [ 20, %entry ], [ %dec12, %if.then10.retry_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %retry
  %i.049 = phi i32 [ 5000, %retry ], [ %dec, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host_info_base.i, align 8
  %add.i = add i16 %1, 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %3, i16 noundef zeroext %add.i) #17
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %7, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end5, label %if.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #17
  %dec = add nsw i32 %i.049, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %11 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %host_info_base.i, align 8
  %add.i28 = add i16 %12, 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %14, i16 noundef zeroext %add.i28) #17
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i30 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %base_addr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr.i.i30, align 32
  %add.i.i31 = add i32 %18, 8
  %and.i.i32 = and i32 %add.i.i31, 1048575
  %add1.i.i33 = or i32 %and.i.i32, -18874368
  %19 = inttoptr i32 %add1.i.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 1) #17, !srcloc !312
  %20 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %host_info_base.i, align 8
  %add.i35 = add i16 %21, 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %23, i16 noundef zeroext %add.i35) #17
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i37 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %base_addr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr.i.i37, align 32
  %add.i.i38 = add i32 %27, 8
  %and.i.i39 = and i32 %add.i.i38, 1048575
  %add1.i.i40 = or i32 %and.i.i39, -18874368
  %28 = inttoptr i32 %add1.i.i40 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not = icmp eq i8 %29, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %30 = ptrtoint ptr %host_info_base.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %host_info_base.i, align 8
  %add.i42 = add i16 %31, 3
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %33, i16 noundef zeroext %add.i42) #17
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i44 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %base_addr.i.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr.i.i44, align 32
  %add.i.i45 = add i32 %37, 8
  %and.i.i46 = and i32 %add.i.i45, 1048575
  %add1.i.i47 = or i32 %and.i.i46, -18874368
  %38 = inttoptr i32 %add1.i.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 0) #17, !srcloc !312
  %dec12 = add nsw i32 %j.0, -1
  %tobool13.not = icmp eq i32 %j.0, 0
  br i1 %tobool13.not, label %if.then10.cleanup_crit_edge, label %if.then10.retry_crit_edge

if.then10.retry_crit_edge:                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %retry

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.then10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_get_mib(ptr nocapture noundef readonly %priv, i8 noundef zeroext %type, i8 noundef zeroext %index, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.get_set_mib, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %m) #17
  %0 = getelementptr inbounds i8, ptr %m, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 213)
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %type, ptr %m, align 1
  %size = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %size, align 1
  %index2 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %index, ptr %index2, align 1
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i5 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %7 = ptrtoint ptr %command_pos.i.i5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %command_pos.i.i5, align 2
  %add.i.i6 = add i16 %8, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %6, i16 noundef zeroext %add.i.i6, ptr noundef nonnull %m, i16 noundef zeroext 10) #17
  %9 = ptrtoint ptr %command_pos.i.i5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %command_pos.i.i5, align 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %12, i16 noundef zeroext %10) #17
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i9 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %base_addr.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_addr.i.i.i9, align 32
  %add.i.i.i10 = add i32 %16, 8
  %and.i.i.i11 = and i32 %add.i.i.i10, 1048575
  %add1.i.i.i12 = or i32 %and.i.i.i11, -18874368
  %17 = inttoptr i32 %add1.i.i.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 2) #17, !srcloc !312
  %18 = ptrtoint ptr %command_pos.i.i5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %command_pos.i.i5, align 2
  %add.i12.i = add i16 %19, 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %21, i16 noundef zeroext %add.i12.i) #17
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %25, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %26 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #17, !srcloc !312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 5000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %command_pos.i.i5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %command_pos.i.i5, align 2
  %add.i.i = add i16 %28, 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %30, i16 noundef zeroext %add.i.i) #17
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %34, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %35 = inttoptr i32 %add1.i.i.i to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %36, label %for.body.i.atmel_send_command_wait.exit_crit_edge [
    i8 0, label %for.body.i.if.end.i_crit_edge
    i8 8, label %for.body.i.if.end.i_crit_edge14
  ]

for.body.i.if.end.i_crit_edge14:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.atmel_send_command_wait.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_send_command_wait.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 4294960) #17
  %dec.i = add nsw i32 %i.023.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %40) #20
  br label %atmel_send_command_wait.exit

atmel_send_command_wait.exit:                     ; preds = %do.end.i, %for.body.i.atmel_send_command_wait.exit_crit_edge
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %command_pos.i.i5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %command_pos.i.i5, align 2
  %add.i = add i16 %44, 8
  tail call fastcc void @atmel_writeAR(ptr noundef %42, i16 noundef zeroext %add.i) #17
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i1 = icmp eq i16 %45, 0
  br i1 %tobool.not.i1, label %atmel_send_command_wait.exit.for.body.lr.ph.i_crit_edge, label %if.then.i

atmel_send_command_wait.exit.for.body.lr.ph.i_crit_edge: ; preds = %atmel_send_command_wait.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i

if.then.i:                                        ; preds = %atmel_send_command_wait.exit
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 5
  %46 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i2 = add i32 %47, 8
  %and.i.i = and i32 %add.i.i2, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %48 = inttoptr i32 %add1.i.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %data, align 1
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 1
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i, %atmel_send_command_wait.exit.for.body.lr.ph.i_crit_edge
  %dest.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %data, %atmel_send_command_wait.exit.for.body.lr.ph.i_crit_edge ]
  %base_addr.i25.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 5
  %51 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i = add i32 %52, 8
  %and.i27.i = and i32 %add.i26.i, 1048575
  %add1.i28.i = or i32 %and.i27.i, -18874368
  %53 = inttoptr i32 %add1.i28.i to ptr
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %53) #17, !srcloc !314
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i = trunc i16 %55 to i8
  %incdec.ptr5.i = getelementptr i8, ptr %dest.addr.0.i, i32 1
  %56 = ptrtoint ptr %dest.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv4.i, ptr %dest.addr.0.i, align 1
  %57 = lshr i16 %55, 8
  %conv7.i = trunc i16 %57 to i8
  %incdec.ptr8.i = getelementptr i8, ptr %dest.addr.0.i, i32 2
  %58 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  %59 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i.1 = add i32 %60, 8
  %and.i27.i.1 = and i32 %add.i26.i.1, 1048575
  %add1.i28.i.1 = or i32 %and.i27.i.1, -18874368
  %61 = inttoptr i32 %add1.i28.i.1 to ptr
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %61) #17, !srcloc !314
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.1 = trunc i16 %63 to i8
  %incdec.ptr5.i.1 = getelementptr i8, ptr %dest.addr.0.i, i32 3
  %64 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv4.i.1, ptr %incdec.ptr8.i, align 1
  %65 = lshr i16 %63, 8
  %conv7.i.1 = trunc i16 %65 to i8
  %incdec.ptr8.i.1 = getelementptr i8, ptr %dest.addr.0.i, i32 4
  %66 = ptrtoint ptr %incdec.ptr5.i.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv7.i.1, ptr %incdec.ptr5.i.1, align 1
  br i1 %tobool.not.i1, label %for.body.i4.2, label %for.body.lr.ph.i.for.end.i_crit_edge

for.body.lr.ph.i.for.end.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i4.2:                                    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i.2 = add i32 %68, 8
  %and.i27.i.2 = and i32 %add.i26.i.2, 1048575
  %add1.i28.i.2 = or i32 %and.i27.i.2, -18874368
  %69 = inttoptr i32 %add1.i28.i.2 to ptr
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %69) #17, !srcloc !314
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.2 = trunc i16 %71 to i8
  %incdec.ptr5.i.2 = getelementptr i8, ptr %dest.addr.0.i, i32 5
  %72 = ptrtoint ptr %incdec.ptr8.i.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv4.i.2, ptr %incdec.ptr8.i.1, align 1
  %73 = lshr i16 %71, 8
  %conv7.i.2 = trunc i16 %73 to i8
  %incdec.ptr8.i.2 = getelementptr i8, ptr %dest.addr.0.i, i32 6
  %74 = ptrtoint ptr %incdec.ptr5.i.2 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv7.i.2, ptr %incdec.ptr5.i.2, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i4.2, %for.body.lr.ph.i.for.end.i_crit_edge
  %incdec.ptr8.i.lcssa = phi ptr [ %incdec.ptr8.i.1, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %incdec.ptr8.i.2, %for.body.i4.2 ]
  %sub.i.lcssa = phi i1 [ false, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %tobool.not.i1, %for.body.i4.2 ]
  br i1 %sub.i.lcssa, label %for.end.i.atmel_copy_to_host.exit_crit_edge, label %if.then10.i

for.end.i.atmel_copy_to_host.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %75 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %base_addr.i25.i, align 32
  %add.i30.i = add i32 %76, 8
  %and.i31.i = and i32 %add.i30.i, 1048575
  %add1.i32.i = or i32 %and.i31.i, -18874368
  %77 = inttoptr i32 %add1.i32.i to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %79 = ptrtoint ptr %incdec.ptr8.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %incdec.ptr8.i.lcssa, align 1
  br label %atmel_copy_to_host.exit

atmel_copy_to_host.exit:                          ; preds = %if.then10.i, %for.end.i.atmel_copy_to_host.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %m) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_wpa_mib(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %mib = alloca %struct.anon.132, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %mib) #17
  %0 = getelementptr inbounds i8, ptr %mib, i32 164
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %wep_is_on = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 30
  %2 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wep_is_on, align 8
  %wep_is_on1 = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 2
  %4 = ptrtoint ptr %wep_is_on1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %wep_is_on1, align 2
  %exclude_unencrypted = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 32
  %5 = ptrtoint ptr %exclude_unencrypted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exclude_unencrypted, align 2
  %exclude_unencrypted2 = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 5
  %7 = ptrtoint ptr %exclude_unencrypted2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %exclude_unencrypted2, align 1
  %receiver_address = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 1
  %CurrentBSSID = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 76
  %8 = call ptr @memcpy(ptr %receiver_address, ptr %CurrentBSSID, i32 6)
  %9 = call ptr @memset(ptr %mib, i32 0, i32 160)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end59_crit_edge, label %if.then

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then:                                          ; preds = %entry
  %key_RSC = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 10
  %10 = call ptr @memset(ptr %key_RSC, i32 0, i32 32)
  %group_key = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 4
  %default_key = getelementptr inbounds %struct.anon.132, ptr %mib, i32 0, i32 3
  %11 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %default_key, align 1
  %default_key14 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 31
  %pairwise_cipher_suite28 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 35
  %group_cipher_suite = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 34
  %arrayidx = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 37, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp sgt i32 %13, 0
  br i1 %cmp7, label %if.then8, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then8:                                         ; preds = %if.then
  %arrayidx12 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 36, i32 0
  %14 = call ptr @memcpy(ptr %mib, ptr %arrayidx12, i32 40)
  %15 = ptrtoint ptr %default_key14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %default_key14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp15 = icmp eq i8 %16, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %default_key, align 1
  %arrayidx22 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 0, i32 39
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %arrayidx22, align 1
  %19 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pairwise_cipher_suite28, align 1
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %group_key to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %group_key, align 4
  %22 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pairwise_cipher_suite28, align 1
  %24 = ptrtoint ptr %group_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %group_cipher_suite, align 4
  %arrayidx31 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 0, i32 39
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx31, align 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else, %if.then17
  %.sink = phi i8 [ %23, %if.else ], [ %20, %if.then17 ]
  %arrayidx35 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 0, i32 38
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %arrayidx35, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 37, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.1 = icmp sgt i32 %28, 0
  br i1 %cmp7.1, label %if.then8.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  %arrayidx10.1 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 1
  %arrayidx12.1 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 36, i32 1
  %29 = call ptr @memcpy(ptr %arrayidx10.1, ptr %arrayidx12.1, i32 40)
  %30 = ptrtoint ptr %default_key14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %default_key14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp15.1 = icmp eq i8 %31, 1
  br i1 %cmp15.1, label %if.then17.1, label %if.else.1

if.else.1:                                        ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %group_key to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %group_key, align 4
  %33 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pairwise_cipher_suite28, align 1
  %35 = ptrtoint ptr %group_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %group_cipher_suite, align 4
  %arrayidx31.1 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 1, i32 39
  %36 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx31.1, align 1
  br label %for.inc.1.sink.split

if.then17.1:                                      ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %default_key, align 1
  %arrayidx22.1 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 1, i32 39
  %38 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 7, ptr %arrayidx22.1, align 1
  %39 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pairwise_cipher_suite28, align 1
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.then17.1, %if.else.1
  %.sink84 = phi i8 [ %40, %if.then17.1 ], [ %34, %if.else.1 ]
  %arrayidx25.1 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 1, i32 38
  %41 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink84, ptr %arrayidx25.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 37, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp7.2 = icmp sgt i32 %43, 0
  br i1 %cmp7.2, label %if.then8.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then8.2:                                       ; preds = %for.inc.1
  %arrayidx10.2 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 2
  %arrayidx12.2 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 36, i32 2
  %44 = call ptr @memcpy(ptr %arrayidx10.2, ptr %arrayidx12.2, i32 40)
  %45 = ptrtoint ptr %default_key14 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %default_key14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp15.2 = icmp eq i8 %46, 2
  br i1 %cmp15.2, label %if.then17.2, label %if.else.2

if.else.2:                                        ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %group_key to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %group_key, align 4
  %48 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pairwise_cipher_suite28, align 1
  %50 = ptrtoint ptr %group_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %group_cipher_suite, align 4
  %arrayidx31.2 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 2, i32 39
  %51 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx31.2, align 1
  br label %for.inc.2.sink.split

if.then17.2:                                      ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %default_key, align 1
  %arrayidx22.2 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 2, i32 39
  %53 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %arrayidx22.2, align 1
  %54 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pairwise_cipher_suite28, align 1
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %if.then17.2, %if.else.2
  %.sink85 = phi i8 [ %55, %if.then17.2 ], [ %49, %if.else.2 ]
  %arrayidx25.2 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 2, i32 38
  %56 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink85, ptr %arrayidx25.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 37, i32 3
  %57 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp7.3 = icmp sgt i32 %58, 0
  br i1 %cmp7.3, label %if.then8.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then8.3:                                       ; preds = %for.inc.2
  %arrayidx10.3 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 3
  %arrayidx12.3 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 36, i32 3
  %59 = call ptr @memcpy(ptr %arrayidx10.3, ptr %arrayidx12.3, i32 40)
  %60 = ptrtoint ptr %default_key14 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %default_key14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp15.3 = icmp eq i8 %61, 3
  br i1 %cmp15.3, label %if.then17.3, label %if.else.3

if.else.3:                                        ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #19
  %62 = ptrtoint ptr %group_key to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %group_key, align 4
  %63 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pairwise_cipher_suite28, align 1
  %65 = ptrtoint ptr %group_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %group_cipher_suite, align 4
  %arrayidx31.3 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 3, i32 39
  %66 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %arrayidx31.3, align 1
  br label %for.inc.3.sink.split

if.then17.3:                                      ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %default_key, align 1
  %arrayidx22.3 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 3, i32 39
  %68 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 7, ptr %arrayidx22.3, align 1
  %69 = ptrtoint ptr %pairwise_cipher_suite28 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pairwise_cipher_suite28, align 1
  br label %for.inc.3.sink.split

for.inc.3.sink.split:                             ; preds = %if.then17.3, %if.else.3
  %.sink86 = phi i8 [ %70, %if.then17.3 ], [ %64, %if.else.3 ]
  %arrayidx25.3 = getelementptr inbounds [4 x [40 x i8]], ptr %mib, i32 0, i32 3, i32 38
  %71 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink86, ptr %arrayidx25.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3.sink.split, %for.inc.2.for.inc.3_crit_edge
  %72 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %default_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp39 = icmp eq i8 %73, -1
  %74 = ptrtoint ptr %group_key to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %group_key, align 4
  br i1 %cmp39, label %if.then41, label %for.inc.3.if.end50_crit_edge

for.inc.3.if.end50_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then41:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp44.not = icmp eq i8 %75, -1
  %spec.select = select i1 %cmp44.not, i8 0, i8 %75
  %76 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %spec.select, ptr %default_key, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %for.inc.3.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp53 = icmp eq i8 %75, -1
  br i1 %cmp53, label %if.then55, label %if.end50.if.end59_crit_edge

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %default_key, align 1
  %79 = ptrtoint ptr %group_key to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %group_key, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end50.if.end59_crit_edge, %entry.if.end59_crit_edge
  call fastcc void @atmel_set_mib(ptr noundef %priv, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %mib, i32 noundef 212)
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %mib) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_crc(ptr nocapture noundef readonly %priv, i16 noundef zeroext %packet_loc, i16 noundef zeroext %msdu_size) unnamed_addr #0 align 64 {
entry:
  %netcrc = alloca i32, align 4
  %octet = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netcrc) #17
  %0 = ptrtoint ptr %netcrc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %netcrc, align 4, !annotation !321
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %msdu_size)
  %cmp = icmp ult i16 %msdu_size, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %msdu_size to i32
  %sub = add nsw i32 %conv, -4
  %dev = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = trunc i32 %sub to i16
  %conv4 = add i16 %3, %packet_loc
  tail call fastcc void @atmel_writeAR(ptr noundef %2, i16 noundef zeroext %conv4) #17
  %4 = and i16 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.for.body.lr.ph.i_crit_edge, label %if.then.i

if.end.for.body.lr.ph.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %6, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %9 = ptrtoint ptr %netcrc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %netcrc, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %netcrc, i32 1
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i, %if.end.for.body.lr.ph.i_crit_edge
  %dest.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %netcrc, %if.end.for.body.lr.ph.i_crit_edge ]
  %base_addr.i25.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i = add i32 %11, 8
  %and.i27.i = and i32 %add.i26.i, 1048575
  %add1.i28.i = or i32 %and.i27.i, -18874368
  %12 = inttoptr i32 %add1.i28.i to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #17, !srcloc !314
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i = trunc i16 %14 to i8
  %incdec.ptr5.i = getelementptr i8, ptr %dest.addr.0.i, i32 1
  %15 = ptrtoint ptr %dest.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4.i, ptr %dest.addr.0.i, align 1
  %16 = lshr i16 %14, 8
  %conv7.i = trunc i16 %16 to i8
  %incdec.ptr8.i = getelementptr i8, ptr %dest.addr.0.i, i32 2
  %17 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  br i1 %tobool.not.i, label %for.body.i.1, label %for.body.lr.ph.i.for.end.i_crit_edge

for.body.lr.ph.i.for.end.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i.1 = add i32 %19, 8
  %and.i27.i.1 = and i32 %add.i26.i.1, 1048575
  %add1.i28.i.1 = or i32 %and.i27.i.1, -18874368
  %20 = inttoptr i32 %add1.i28.i.1 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #17, !srcloc !314
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i.1 = trunc i16 %22 to i8
  %incdec.ptr5.i.1 = getelementptr i8, ptr %dest.addr.0.i, i32 3
  %23 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i.1, ptr %incdec.ptr8.i, align 1
  %24 = lshr i16 %22, 8
  %conv7.i.1 = trunc i16 %24 to i8
  %incdec.ptr8.i.1 = getelementptr i8, ptr %dest.addr.0.i, i32 4
  %25 = ptrtoint ptr %incdec.ptr5.i.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7.i.1, ptr %incdec.ptr5.i.1, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.1, %for.body.lr.ph.i.for.end.i_crit_edge
  %incdec.ptr8.i.lcssa = phi ptr [ %incdec.ptr8.i, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %incdec.ptr8.i.1, %for.body.i.1 ]
  %sub.i.lcssa = phi i1 [ false, %for.body.lr.ph.i.for.end.i_crit_edge ], [ %tobool.not.i, %for.body.i.1 ]
  br i1 %sub.i.lcssa, label %for.end.i.atmel_copy_to_host.exit_crit_edge, label %if.then10.i

for.end.i.atmel_copy_to_host.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr.i25.i, align 32
  %add.i30.i = add i32 %27, 8
  %and.i31.i = and i32 %add.i30.i, 1048575
  %add1.i32.i = or i32 %and.i31.i, -18874368
  %28 = inttoptr i32 %add1.i32.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %30 = ptrtoint ptr %incdec.ptr8.i.lcssa to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %incdec.ptr8.i.lcssa, align 1
  br label %atmel_copy_to_host.exit

atmel_copy_to_host.exit:                          ; preds = %if.then10.i, %for.end.i.atmel_copy_to_host.exit_crit_edge
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %32, i16 noundef zeroext %packet_loc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not18 = icmp eq i32 %sub, 0
  br i1 %tobool.not18, label %atmel_copy_to_host.exit.while.end_crit_edge, label %atmel_copy_to_host.exit.while.body_crit_edge

atmel_copy_to_host.exit.while.body_crit_edge:     ; preds = %atmel_copy_to_host.exit
  br label %while.body

atmel_copy_to_host.exit.while.end_crit_edge:      ; preds = %atmel_copy_to_host.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %atmel_copy_to_host.exit.while.body_crit_edge
  %crc.020 = phi i32 [ %call7, %while.body.while.body_crit_edge ], [ -1, %atmel_copy_to_host.exit.while.body_crit_edge ]
  %i.019 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %sub, %atmel_copy_to_host.exit.while.body_crit_edge ]
  %dec = add i32 %i.019, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %octet) #17
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr.i, align 32
  %add.i = add i32 %36, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %37 = inttoptr i32 %add1.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %39 = ptrtoint ptr %octet to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %octet, align 1
  %call7 = call i32 @crc32_le(i32 noundef %crc.020, ptr noundef nonnull %octet, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %octet) #17
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo = xor i32 %call7, -1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %atmel_copy_to_host.exit.while.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %atmel_copy_to_host.exit.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %40 = ptrtoint ptr %netcrc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %netcrc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %crc.0.lcssa)
  %cmp8 = icmp eq i32 %41, %crc.0.lcssa
  %conv9 = zext i1 %cmp8 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv9, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netcrc) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @join(ptr nocapture noundef readonly %priv, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.anon.130, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #17
  %0 = getelementptr inbounds i8, ptr %cmd, i32 6
  %1 = call ptr @memset(ptr %0, i32 255, i32 38)
  %SSID_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 74
  %2 = ptrtoint ptr %SSID_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SSID_size, align 4
  %conv = trunc i32 %3 to i8
  %SSID_size1 = getelementptr inbounds %struct.anon.130, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %SSID_size1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %SSID_size1, align 2
  %SSID = getelementptr inbounds %struct.anon.130, ptr %cmd, i32 0, i32 1
  %SSID2 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 78
  %5 = call ptr @memcpy(ptr %SSID, ptr %SSID2, i32 %3)
  %CurrentBSSID = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 76
  %6 = call ptr @memcpy(ptr %cmd, ptr %CurrentBSSID, i32 6)
  %channel = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 47
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %9 = trunc i32 %8 to i8
  %conv7 = and i8 %9, 127
  %channel8 = getelementptr inbounds %struct.anon.130, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %channel8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %channel8, align 1
  %conv9 = trunc i32 %type to i8
  %BSS_type = getelementptr inbounds %struct.anon.130, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %BSS_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %BSS_type, align 2
  %timeout = getelementptr inbounds %struct.anon.130, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -12281, ptr %timeout, align 2
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %15 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %command_pos.i.i, align 2
  %add.i.i = add i16 %16, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %14, i16 noundef zeroext %add.i.i, ptr noundef nonnull %cmd, i16 noundef zeroext 44) #17
  %17 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %command_pos.i.i, align 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %20, i16 noundef zeroext %18) #17
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %24, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %25 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 4) #17, !srcloc !312
  %26 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %command_pos.i.i, align 2
  %add.i12.i = add i16 %27, 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %29, i16 noundef zeroext %add.i12.i) #17
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %33, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %34 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 0) #17, !srcloc !312
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @retrieve_bss(ptr nocapture noundef %priv) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %BSS_list_entries = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 71
  %0 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BSS_list_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %connect_to_any_BSS = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 73
  %2 = ptrtoint ptr %connect_to_any_BSS to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connect_to_any_BSS, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond27.preheader, label %if.then1

for.cond27.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29124 = icmp sgt i32 %1, 0
  br i1 %cmp29124, label %for.body31.lr.ph, label %for.cond27.preheader.cleanup_crit_edge

for.cond27.preheader.cleanup_crit_edge:           ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %SSID_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 74
  %4 = ptrtoint ptr %SSID_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SSID_size, align 4
  %SSID = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 78
  %operating_mode45 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 43
  br label %for.body31

if.then1:                                         ; preds = %if.end
  %current_BSS = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 72
  %6 = ptrtoint ptr %current_BSS to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %current_BSS, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3119 = icmp sgt i32 %1, 0
  br i1 %cmp3119, label %for.body.lr.ph, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then1
  %operating_mode = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 43
  %7 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %operating_mode, align 4
  %wep_is_on = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %max_index.0122 = phi i32 [ -1, %for.body.lr.ph ], [ %max_index.1, %for.inc.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.0120
  %BSStype = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.0120, i32 6
  %9 = ptrtoint ptr %BSStype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %BSStype, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  %UsingWEP = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.0120, i32 3
  %13 = ptrtoint ptr %UsingWEP to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %UsingWEP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true12

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %tobool9.not, label %land.lhs.true6.land.lhs.true17_crit_edge, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true6.land.lhs.true17_crit_edge:         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true17

land.lhs.true12:                                  ; preds = %land.lhs.true
  br i1 %tobool9.not, label %land.lhs.true12.for.inc_crit_edge, label %land.lhs.true12.land.lhs.true17_crit_edge

land.lhs.true12.land.lhs.true17_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true17

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true12.land.lhs.true17_crit_edge, %land.lhs.true6.land.lhs.true17_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %current_BSS to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0120, ptr %current_BSS, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %max_index.1 = phi i32 [ %max_index.0122, %land.lhs.true17.for.inc_crit_edge ], [ %i.0120, %if.then21 ], [ %max_index.0122, %land.lhs.true12.for.inc_crit_edge ], [ %max_index.0122, %for.body.for.inc_crit_edge ], [ %max_index.0122, %land.lhs.true6.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body31:                                       ; preds = %for.inc70.for.body31_crit_edge, %for.body31.lr.ph
  %max_index.2128 = phi i32 [ -1, %for.body31.lr.ph ], [ %max_index.3, %for.inc70.for.body31_crit_edge ]
  %max_rssi.0127 = phi i32 [ -128, %for.body31.lr.ph ], [ %max_rssi.1, %for.inc70.for.body31_crit_edge ]
  %i.1125 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc71, %for.inc70.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.1125
  %SSIDsize = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.1125, i32 1
  %18 = ptrtoint ptr %SSIDsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %SSIDsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp34 = icmp eq i32 %5, %19
  br i1 %cmp34, label %land.lhs.true36, label %for.body31.for.inc70_crit_edge

for.body31.for.inc70_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc70

land.lhs.true36:                                  ; preds = %for.body31
  %SSID39 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.1125, i32 8
  %bcmp = tail call i32 @bcmp(ptr %SSID, ptr %SSID39, i32 %5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp42 = icmp eq i32 %bcmp, 0
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true36.for.inc70_crit_edge

land.lhs.true36.for.inc70_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc70

land.lhs.true44:                                  ; preds = %land.lhs.true36
  %20 = ptrtoint ptr %operating_mode45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %operating_mode45, align 4
  %BSStype48 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.1125, i32 6
  %22 = ptrtoint ptr %BSStype48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %BSStype48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp49 = icmp eq i32 %21, %23
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true44.for.inc70_crit_edge

land.lhs.true44.for.inc70_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc70

land.lhs.true51:                                  ; preds = %land.lhs.true44
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx33, align 4
  %call55 = tail call fastcc i32 @atmel_validate_channel(ptr noundef %priv, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %land.lhs.true51.for.inc70_crit_edge

land.lhs.true51.for.inc70_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc70

if.then58:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #19
  %RSSI61 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %i.1125, i32 2
  %26 = ptrtoint ptr %RSSI61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %RSSI61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %max_rssi.0127)
  %cmp62.not = icmp slt i32 %27, %max_rssi.0127
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 %max_rssi.0127)
  %spec.select117 = select i1 %cmp62.not, i32 %max_index.2128, i32 %i.1125
  br label %for.inc70

for.inc70:                                        ; preds = %if.then58, %land.lhs.true51.for.inc70_crit_edge, %land.lhs.true44.for.inc70_crit_edge, %land.lhs.true36.for.inc70_crit_edge, %for.body31.for.inc70_crit_edge
  %max_rssi.1 = phi i32 [ %max_rssi.0127, %land.lhs.true51.for.inc70_crit_edge ], [ %max_rssi.0127, %land.lhs.true44.for.inc70_crit_edge ], [ %max_rssi.0127, %land.lhs.true36.for.inc70_crit_edge ], [ %max_rssi.0127, %for.body31.for.inc70_crit_edge ], [ %28, %if.then58 ]
  %max_index.3 = phi i32 [ %max_index.2128, %land.lhs.true51.for.inc70_crit_edge ], [ %max_index.2128, %land.lhs.true44.for.inc70_crit_edge ], [ %max_index.2128, %land.lhs.true36.for.inc70_crit_edge ], [ %max_index.2128, %for.body31.for.inc70_crit_edge ], [ %spec.select117, %if.then58 ]
  %inc71 = add nuw nsw i32 %i.1125, 1
  %exitcond131.not = icmp eq i32 %inc71, %1
  br i1 %exitcond131.not, label %for.inc70.cleanup_crit_edge, label %for.inc70.for.body31_crit_edge

for.inc70.for.body31_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body31

for.inc70.cleanup_crit_edge:                      ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc70.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %for.cond27.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.cond27.preheader.cleanup_crit_edge ], [ -1, %if.then1.cleanup_crit_edge ], [ %max_index.3, %for.inc70.cleanup_crit_edge ], [ %max_index.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_join_bss(ptr noundef %priv, i32 noundef %bss_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index
  %CurrentBSSID = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 76
  %BSSID = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 7
  %0 = call ptr @memcpy(ptr %CurrentBSSID, ptr %BSSID, i32 6)
  %SSID = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 78
  %SSID3 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 8
  %SSIDsize = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 1
  %1 = ptrtoint ptr %SSIDsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %SSIDsize, align 4
  %SSID_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 74
  %3 = ptrtoint ptr %SSID_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %SSID_size, align 4
  %4 = call ptr @memcpy(ptr %SSID, ptr %SSID3, i32 %2)
  %use_wpa = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 38
  %5 = ptrtoint ptr %use_wpa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_wpa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @build_wpa_mib(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %BSStype = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 6
  %7 = ptrtoint ptr %BSStype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %BSStype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %operating_mode = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 43
  %9 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %operating_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.not = icmp eq i32 %10, 1
  br i1 %cmp5.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %power_mode = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 44
  %11 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end10_crit_edge, label %if.then8

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %power_mode, align 8
  %listen_interval = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 59
  %14 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %listen_interval, align 4
  tail call fastcc void @atmel_set_mib8(ptr noundef %priv, i8 noundef zeroext 5, i8 noundef zeroext 53, i8 noundef zeroext 1)
  tail call fastcc void @atmel_set_mib16(ptr noundef %priv, i8 noundef zeroext 5, i8 noundef zeroext 54, i16 noundef zeroext 1)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %15 = ptrtoint ptr %BSStype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %BSStype, align 4
  %operating_mode12 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 43
  %17 = ptrtoint ptr %operating_mode12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %operating_mode12, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and = and i32 %19, 127
  %channel13 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 47
  %20 = ptrtoint ptr %channel13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %channel13, align 4
  %beacon_period = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 5
  %21 = ptrtoint ptr %beacon_period to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %beacon_period, align 4
  %beacon_period14 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 58
  %23 = ptrtoint ptr %beacon_period14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %beacon_period14, align 8
  %preamble = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 56
  %24 = ptrtoint ptr %preamble to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %preamble, align 8
  %preamble15 = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 4
  %26 = ptrtoint ptr %preamble15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %preamble15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp16.not = icmp eq i32 %25, %27
  br i1 %cmp16.not, label %if.end10.if.end21_crit_edge, label %if.then17

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %preamble to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %preamble, align 8
  %29 = ptrtoint ptr %preamble15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %preamble15, align 4
  %conv = trunc i32 %30 to i8
  tail call fastcc void @atmel_set_mib8(ptr noundef %priv, i8 noundef zeroext 1, i8 noundef zeroext 9, i8 noundef zeroext %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end10.if.end21_crit_edge
  %wep_is_on = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 30
  %31 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not = icmp eq i8 %32, 0
  %UsingWEP = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 70, i32 %bss_index, i32 3
  %33 = ptrtoint ptr %UsingWEP to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %UsingWEP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool24.not = icmp eq i32 %34, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true30

land.lhs.true23:                                  ; preds = %if.end21
  br i1 %tobool24.not, label %land.lhs.true23.if.end35_crit_edge, label %if.then25

land.lhs.true23.if.end35_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then25:                                        ; preds = %land.lhs.true23
  %station_state.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 42
  %35 = ptrtoint ptr %station_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %station_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cmp.i = icmp eq i32 %36, 7
  br i1 %cmp.i, label %if.then25.atmel_enter_state.exit_crit_edge, label %if.end.i

if.then25.atmel_enter_state.exit_crit_edge:       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.end.i:                                         ; preds = %if.then25
  %37 = ptrtoint ptr %station_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %station_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp6.i = icmp eq i32 %36, 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.atmel_enter_state.exit_crit_edge

if.end.i.atmel_enter_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit

if.then7.i:                                       ; preds = %if.end.i
  %dev8.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %38 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev8.i, align 4
  tail call void @netif_carrier_off(ptr noundef %39) #17
  %40 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev8.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 103
  %44 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i24.i, align 128
  %state.i.i25.i = getelementptr inbounds %struct.netdev_queue, ptr %45, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end12.i_crit_edge
  %last_beacon_timestamp.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 80
  %46 = ptrtoint ptr %last_beacon_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %last_beacon_timestamp.i, align 8
  br label %atmel_enter_state.exit

atmel_enter_state.exit:                           ; preds = %if.end12.i, %if.end.i.atmel_enter_state.exit_crit_edge, %if.then25.atmel_enter_state.exit_crit_edge
  %station_is_associated = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 68
  %47 = ptrtoint ptr %station_is_associated to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %station_is_associated, align 8
  br label %cleanup

land.lhs.true30:                                  ; preds = %if.end21
  br i1 %tobool24.not, label %if.then33, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true30
  %station_state.i79 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 42
  %48 = ptrtoint ptr %station_state.i79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %station_state.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %49)
  %cmp.i80 = icmp eq i32 %49, 7
  br i1 %cmp.i80, label %if.then33.atmel_enter_state.exit93_crit_edge, label %if.end.i81

if.then33.atmel_enter_state.exit93_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit93

if.end.i81:                                       ; preds = %if.then33
  %50 = ptrtoint ptr %station_state.i79 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7, ptr %station_state.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp6.i82 = icmp eq i32 %49, 4
  br i1 %cmp6.i82, label %if.then7.i87, label %if.end.i81.atmel_enter_state.exit93_crit_edge

if.end.i81.atmel_enter_state.exit93_crit_edge:    ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit93

if.then7.i87:                                     ; preds = %if.end.i81
  %dev8.i83 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %51 = ptrtoint ptr %dev8.i83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev8.i83, align 4
  tail call void @netif_carrier_off(ptr noundef %52) #17
  %53 = ptrtoint ptr %dev8.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev8.i83, align 4
  %state.i.i84 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %state.i.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state.i.i84, align 4
  %and1.i.i.i85 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i85)
  %tobool.i.not.i86 = icmp eq i32 %and1.i.i.i85, 0
  br i1 %tobool.i.not.i86, label %if.then7.i87.if.end12.i92_crit_edge, label %if.then10.i90

if.then7.i87.if.end12.i92_crit_edge:              ; preds = %if.then7.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i92

if.then10.i90:                                    ; preds = %if.then7.i87
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i88 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i.i24.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i24.i88, align 128
  %state.i.i25.i89 = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i89) #17
  br label %if.end12.i92

if.end12.i92:                                     ; preds = %if.then10.i90, %if.then7.i87.if.end12.i92_crit_edge
  %last_beacon_timestamp.i91 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 80
  %59 = ptrtoint ptr %last_beacon_timestamp.i91 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %last_beacon_timestamp.i91, align 8
  br label %atmel_enter_state.exit93

atmel_enter_state.exit93:                         ; preds = %if.end12.i92, %if.end.i81.atmel_enter_state.exit93_crit_edge, %if.then33.atmel_enter_state.exit93_crit_edge
  %station_is_associated34 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 68
  %60 = ptrtoint ptr %station_is_associated34 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %station_is_associated34, align 8
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %land.lhs.true23.if.end35_crit_edge
  %station_state.i94 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 42
  %61 = ptrtoint ptr %station_state.i94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %station_state.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i95 = icmp eq i32 %62, 1
  br i1 %cmp.i95, label %if.end35.atmel_enter_state.exit108_crit_edge, label %if.end.i96

if.end35.atmel_enter_state.exit108_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit108

if.end.i96:                                       ; preds = %if.end35
  %63 = ptrtoint ptr %station_state.i94 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %station_state.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp6.i97 = icmp eq i32 %62, 4
  br i1 %cmp6.i97, label %if.then7.i102, label %if.end.i96.atmel_enter_state.exit108_crit_edge

if.end.i96.atmel_enter_state.exit108_crit_edge:   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_enter_state.exit108

if.then7.i102:                                    ; preds = %if.end.i96
  %dev8.i98 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %64 = ptrtoint ptr %dev8.i98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev8.i98, align 4
  tail call void @netif_carrier_off(ptr noundef %65) #17
  %66 = ptrtoint ptr %dev8.i98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev8.i98, align 4
  %state.i.i99 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %state.i.i99 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i.i99, align 4
  %and1.i.i.i100 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i100)
  %tobool.i.not.i101 = icmp eq i32 %and1.i.i.i100, 0
  br i1 %tobool.i.not.i101, label %if.then7.i102.if.end12.i107_crit_edge, label %if.then10.i105

if.then7.i102.if.end12.i107_crit_edge:            ; preds = %if.then7.i102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i107

if.then10.i105:                                   ; preds = %if.then7.i102
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i.i24.i103 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 103
  %70 = ptrtoint ptr %_tx.i.i24.i103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i24.i103, align 128
  %state.i.i25.i104 = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i25.i104) #17
  br label %if.end12.i107

if.end12.i107:                                    ; preds = %if.then10.i105, %if.then7.i102.if.end12.i107_crit_edge
  %last_beacon_timestamp.i106 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 80
  %72 = ptrtoint ptr %last_beacon_timestamp.i106 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %last_beacon_timestamp.i106, align 8
  br label %atmel_enter_state.exit108

atmel_enter_state.exit108:                        ; preds = %if.end12.i107, %if.end.i96.atmel_enter_state.exit108_crit_edge, %if.end35.atmel_enter_state.exit108_crit_edge
  %73 = ptrtoint ptr %operating_mode12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %operating_mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp37 = icmp eq i32 %74, 2
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %atmel_enter_state.exit108
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @join(ptr noundef %priv, i32 noundef 2)
  br label %cleanup

if.else:                                          ; preds = %atmel_enter_state.exit108
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @join(ptr noundef %priv, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %atmel_enter_state.exit93, %atmel_enter_state.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_transmit_management_frame(ptr noundef %priv, ptr nocapture noundef readonly %header, ptr nocapture noundef readonly %body, i32 noundef %body_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %body_len to i16
  %conv = add i16 %0, 24
  %tx_buff_size.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 5
  %1 = ptrtoint ptr %tx_buff_size.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tx_buff_size.i, align 2
  %tx_buff_tail.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 25
  %3 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_buff_tail.i, align 2
  %sub.i = sub i16 %2, %4
  %tx_desc_free.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 19
  %5 = ptrtoint ptr %tx_desc_free.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_desc_free.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i = icmp eq i16 %6, 3
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %tx_free_mem.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 23
  %7 = ptrtoint ptr %tx_free_mem.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_free_mem.i, align 2
  %conv5.i = zext i16 %8 to i32
  %conv6.i = zext i16 %conv to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %conv)
  %cmp7.i = icmp ult i16 %8, %conv
  br i1 %cmp7.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %conv)
  %cmp11.not.i = icmp ult i16 %sub.i, %conv
  br i1 %cmp11.not.i, label %if.end19.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx_buff_pos.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 4
  %9 = ptrtoint ptr %tx_buff_pos.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_buff_pos.i, align 2
  %add.i = add i16 %10, %4
  br label %find_tx_buff.exit

if.end19.i:                                       ; preds = %if.end.i
  %conv9.i = zext i16 %sub.i to i32
  %sub23.i = sub nsw i32 %conv5.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23.i, i32 %conv6.i)
  %cmp25.not.i = icmp slt i32 %sub23.i, %conv6.i
  br i1 %cmp25.not.i, label %if.end19.i.cleanup_crit_edge, label %if.then27.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then27.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %tx_buff_tail.i, align 2
  %tx_buff_pos30.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 4
  %12 = ptrtoint ptr %tx_buff_pos30.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_buff_pos30.i, align 2
  br label %find_tx_buff.exit

find_tx_buff.exit:                                ; preds = %if.then27.i, %if.then13.i
  %retval.0.i = phi i16 [ %add.i, %if.then13.i ], [ %13, %if.then27.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %tobool.not = icmp eq i16 %retval.0.i, 0
  br i1 %tobool.not, label %find_tx_buff.exit.cleanup_crit_edge, label %if.end

find_tx_buff.exit.cleanup_crit_edge:              ; preds = %find_tx_buff.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %find_tx_buff.exit
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call fastcc void @atmel_copy_to_card(ptr noundef %15, i16 noundef zeroext %retval.0.i, ptr noundef %header, i16 noundef zeroext 24)
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %add3 = add i16 %retval.0.i, 24
  tail call fastcc void @atmel_copy_to_card(ptr noundef %17, i16 noundef zeroext %add3, ptr noundef %body, i16 noundef zeroext %0)
  %18 = ptrtoint ptr %tx_buff_tail.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_buff_tail.i, align 2
  %conv8 = add i16 %19, %conv
  store i16 %conv8, ptr %tx_buff_tail.i, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %header, i32 0, i32 2
  %20 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr1, align 2
  %22 = and i8 %21, 1
  %and = zext i8 %22 to i32
  tail call fastcc void @tx_update_descriptor(ptr noundef %priv, i32 noundef %and, i16 noundef zeroext %conv, i16 noundef zeroext %retval.0.i, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_tx_buff.exit.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_set_mib16(ptr nocapture noundef readonly %priv, i8 noundef zeroext %type, i8 noundef zeroext %index, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.get_set_mib, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %m) #17
  %0 = getelementptr inbounds i8, ptr %m, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 213)
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %type, ptr %m, align 1
  %size = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %size, align 1
  %index2 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %index, ptr %index2, align 1
  %conv = trunc i16 %data to i8
  %data3 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 4
  %5 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %data3, align 1
  %6 = lshr i16 %data, 8
  %conv5 = trunc i16 %6 to i8
  %arrayidx7 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx7, align 1
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i9 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %10 = ptrtoint ptr %command_pos.i.i9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %command_pos.i.i9, align 2
  %add.i.i10 = add i16 %11, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %9, i16 noundef zeroext %add.i.i10, ptr noundef nonnull %m, i16 noundef zeroext 6) #17
  %12 = ptrtoint ptr %command_pos.i.i9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %command_pos.i.i9, align 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %15, i16 noundef zeroext %13) #17
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i12 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %base_addr.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr.i.i.i12, align 32
  %add.i.i.i13 = add i32 %19, 8
  %and.i.i.i14 = and i32 %add.i.i.i13, 1048575
  %add1.i.i.i15 = or i32 %and.i.i.i14, -18874368
  %20 = inttoptr i32 %add1.i.i.i15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 1) #17, !srcloc !312
  %21 = ptrtoint ptr %command_pos.i.i9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %command_pos.i.i9, align 2
  %add.i12.i = add i16 %22, 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %24, i16 noundef zeroext %add.i12.i) #17
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %28, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %29 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #17, !srcloc !312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 5000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %command_pos.i.i9 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %command_pos.i.i9, align 2
  %add.i.i = add i16 %31, 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %33, i16 noundef zeroext %add.i.i) #17
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %37, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %38 = inttoptr i32 %add1.i.i.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %39, label %for.body.i.atmel_send_command_wait.exit_crit_edge [
    i8 0, label %for.body.i.if.end.i_crit_edge
    i8 8, label %for.body.i.if.end.i_crit_edge17
  ]

for.body.i.if.end.i_crit_edge17:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.atmel_send_command_wait.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_send_command_wait.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 4294960) #17
  %dec.i = add nsw i32 %i.023.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %43) #20
  br label %atmel_send_command_wait.exit

atmel_send_command_wait.exit:                     ; preds = %do.end.i, %for.body.i.atmel_send_command_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %m) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_set_mib(ptr nocapture noundef readonly %priv, i8 noundef zeroext %type, i8 noundef zeroext %index, ptr nocapture noundef readonly %data, i32 noundef %data_len) unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.get_set_mib, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %m) #17
  %0 = getelementptr inbounds i8, ptr %m, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 213)
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %type, ptr %m, align 1
  %conv = trunc i32 %data_len to i8
  %size = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %size, align 1
  %index2 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %index, ptr %index2, align 1
  %data4 = getelementptr inbounds %struct.get_set_mib, ptr %m, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %data4, ptr %data, i32 %data_len)
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i11 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %8 = ptrtoint ptr %command_pos.i.i11 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %command_pos.i.i11, align 2
  %add.i.i12 = add i16 %9, 4
  %10 = trunc i32 %data_len to i16
  %conv.i13 = add i16 %10, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %7, i16 noundef zeroext %add.i.i12, ptr noundef nonnull %m, i16 noundef zeroext %conv.i13) #17
  %11 = ptrtoint ptr %command_pos.i.i11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %command_pos.i.i11, align 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %14, i16 noundef zeroext %12) #17
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i15 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %base_addr.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr.i.i.i15, align 32
  %add.i.i.i16 = add i32 %18, 8
  %and.i.i.i17 = and i32 %add.i.i.i16, 1048575
  %add1.i.i.i18 = or i32 %and.i.i.i17, -18874368
  %19 = inttoptr i32 %add1.i.i.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 1) #17, !srcloc !312
  %20 = ptrtoint ptr %command_pos.i.i11 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %command_pos.i.i11, align 2
  %add.i12.i = add i16 %21, 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %23, i16 noundef zeroext %add.i12.i) #17
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %27, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %28 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #17, !srcloc !312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 5000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %command_pos.i.i11 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %command_pos.i.i11, align 2
  %add.i.i = add i16 %30, 1
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %32, i16 noundef zeroext %add.i.i) #17
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %36, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %37 = inttoptr i32 %add1.i.i.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %38, label %for.body.i.atmel_send_command_wait.exit_crit_edge [
    i8 0, label %for.body.i.if.end.i_crit_edge
    i8 8, label %for.body.i.if.end.i_crit_edge20
  ]

for.body.i.if.end.i_crit_edge20:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.i.atmel_send_command_wait.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_send_command_wait.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 4294960) #17
  %dec.i = add nsw i32 %i.023.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %42) #20
  br label %atmel_send_command_wait.exit

atmel_send_command_wait.exit:                     ; preds = %do.end.i, %for.body.i.atmel_send_command_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %m) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.anon.131, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #17
  %0 = getelementptr inbounds i8, ptr %cmd, i32 6
  %1 = call ptr @memset(ptr %0, i32 255, i32 38)
  %SSID_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 74
  %2 = ptrtoint ptr %SSID_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SSID_size, align 4
  %conv = trunc i32 %3 to i8
  %SSID_size1 = getelementptr inbounds %struct.anon.131, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %SSID_size1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %SSID_size1, align 1
  %SSID = getelementptr inbounds %struct.anon.131, ptr %cmd, i32 0, i32 1
  %SSID2 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 78
  %5 = call ptr @memcpy(ptr %SSID, ptr %SSID2, i32 %3)
  %BSSID6 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 77
  %6 = call ptr @memcpy(ptr %cmd, ptr %BSSID6, i32 6)
  %BSS_type = getelementptr inbounds %struct.anon.131, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %BSS_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %BSS_type, align 1
  %channel = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 47
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = trunc i32 %9 to i8
  %conv9 = and i8 %10, 127
  %channel10 = getelementptr inbounds %struct.anon.131, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %channel10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %channel10, align 1
  %dev.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %command_pos.i.i = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %14 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %command_pos.i.i, align 2
  %add.i.i = add i16 %15, 4
  call fastcc void @atmel_copy_to_card(ptr noundef %13, i16 noundef zeroext %add.i.i, ptr noundef nonnull %cmd, i16 noundef zeroext 44) #17
  %16 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %command_pos.i.i, align 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %19, i16 noundef zeroext %17) #17
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %23, 8
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %24 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 5) #17, !srcloc !312
  %25 = ptrtoint ptr %command_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %command_pos.i.i, align 2
  %add.i12.i = add i16 %26, 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %28, i16 noundef zeroext %add.i12.i) #17
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i14.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %base_addr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr.i.i14.i, align 32
  %add.i.i15.i = add i32 %32, 8
  %and.i.i16.i = and i32 %add.i.i15.i, 1048575
  %add1.i.i17.i = or i32 %and.i.i16.i, -18874368
  %33 = inttoptr i32 %add1.i.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #17, !srcloc !312
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atmel_get_wireless_stats(ptr noundef %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_qual.i = getelementptr i8, ptr %dev, i32 2828
  %1 = ptrtoint ptr %last_qual.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_qual.i, align 4
  %sub.i = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %3 = icmp ult i32 %sub.i, 100
  br i1 %3, label %entry.atmel_smooth_qual.exit_crit_edge, label %while.body.lr.ph.i

entry.atmel_smooth_qual.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_smooth_qual.exit

while.body.lr.ph.i:                               ; preds = %entry
  %div.i = udiv i32 %sub.i, 100
  %qual.i = getelementptr i8, ptr %dev, i32 2414
  %beacons_this_sec.i = getelementptr i8, ptr %dev, i32 2832
  %beacon_period.i = getelementptr i8, ptr %dev, i32 2880
  %4 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beacon_period.i, align 8
  %level.i = getelementptr i8, ptr %dev, i32 2415
  %6 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %level.i, align 1
  %conv10.i = zext i8 %7 to i32
  %add11.i = add nuw nsw i32 %conv10.i, 100
  %8 = ptrtoint ptr %qual.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %qual.promoted.i = load i8, ptr %qual.i, align 2
  %9 = ptrtoint ptr %beacons_this_sec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %beacons_this_sec.promoted.i = load i32, ptr %beacons_this_sec.i, align 8
  %10 = mul nuw i32 %div.i, 100
  %dec.peel.i = add nsw i32 %div.i, -1
  %11 = lshr i8 %qual.promoted.i, 1
  %mul.peel.i = mul i32 %beacons_this_sec.promoted.i, %5
  %mul12.peel.i = mul i32 %mul.peel.i, %add11.i
  %div13.peel.i = sdiv i32 %mul12.peel.i, 4000
  %12 = trunc i32 %div13.peel.i to i8
  %conv19.peel.i = add i8 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.peel.i)
  %tobool.not.peel.i = icmp eq i32 %dec.peel.i, 0
  br i1 %tobool.not.peel.i, label %while.body.lr.ph.i.while.cond.while.end_crit_edge.i_crit_edge, label %while.body.lr.ph.i.while.body.i_crit_edge

while.body.lr.ph.i.while.body.i_crit_edge:        ; preds = %while.body.lr.ph.i
  br label %while.body.i

while.body.lr.ph.i.while.cond.while.end_crit_edge.i_crit_edge: ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.while.end_crit_edge.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i.while.body.i_crit_edge
  %13 = phi i8 [ %14, %while.body.i.while.body.i_crit_edge ], [ %conv19.peel.i, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %time_diff.041.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec.peel.i, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %dec.i = add i32 %time_diff.041.i, -1
  %14 = lshr i8 %13, 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.cond.while.end_crit_edge.i_crit_edge, label %while.body.i.while.body.i_crit_edge, !llvm.loop !322

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.while.cond.while.end_crit_edge.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i.while.cond.while.end_crit_edge.i_crit_edge, %while.body.lr.ph.i.while.cond.while.end_crit_edge.i_crit_edge
  %conv19.lcssa.i = phi i8 [ %conv19.peel.i, %while.body.lr.ph.i.while.cond.while.end_crit_edge.i_crit_edge ], [ %14, %while.body.i.while.cond.while.end_crit_edge.i_crit_edge ]
  %15 = add i32 %10, %2
  %16 = ptrtoint ptr %last_qual.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_qual.i, align 4
  %17 = ptrtoint ptr %qual.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19.lcssa.i, ptr %qual.i, align 2
  %18 = ptrtoint ptr %beacons_this_sec.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %beacons_this_sec.i, align 8
  br label %atmel_smooth_qual.exit

atmel_smooth_qual.exit:                           ; preds = %while.cond.while.end_crit_edge.i, %entry.atmel_smooth_qual.exit_crit_edge
  %updated.i = getelementptr i8, ptr %dev, i32 2417
  %19 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %updated.i, align 1
  %21 = and i8 %20, -18
  %22 = or i8 %21, 1
  store i8 %22, ptr %updated.i, align 1
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %23 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %station_state, align 8
  %conv = trunc i32 %24 to i16
  %wstats = getelementptr i8, ptr %dev, i32 2412
  %25 = ptrtoint ptr %wstats to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %wstats, align 4
  %operating_mode = getelementptr i8, ptr %dev, i32 2820
  %26 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %operating_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp = icmp eq i32 %27, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %atmel_smooth_qual.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp3.not = icmp eq i32 %24, 4
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %qual = getelementptr i8, ptr %dev, i32 2414
  %28 = ptrtoint ptr %qual to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %qual, align 2
  %level = getelementptr i8, ptr %dev, i32 2415
  %29 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %level, align 1
  %30 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 48, ptr %updated.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %noise = getelementptr i8, ptr %dev, i32 2416
  %31 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %noise, align 2
  %32 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %updated.i, align 1
  %34 = or i8 %33, 64
  store i8 %34, ptr %updated.i, align 1
  br label %if.end32

if.else:                                          ; preds = %atmel_smooth_qual.exit
  call void @__sanitizer_cov_trace_pc() #19
  %qual20 = getelementptr i8, ptr %dev, i32 2414
  %35 = ptrtoint ptr %qual20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %qual20, align 2
  %level24 = getelementptr i8, ptr %dev, i32 2415
  %36 = ptrtoint ptr %level24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %level24, align 1
  %noise27 = getelementptr i8, ptr %dev, i32 2416
  %37 = ptrtoint ptr %noise27 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %noise27, align 2
  %38 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 112, ptr %updated.i, align 1
  %miss = getelementptr i8, ptr %dev, i32 2440
  %39 = ptrtoint ptr %miss to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %miss, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end
  ret ptr %wstats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_config_commit(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %zwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atmel_open(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_name(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %cwrq, ptr nocapture noundef readnone %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %cwrq, ptr @.str.73, i32 15)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_set_freq(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %fwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %e = getelementptr inbounds %struct.iw_freq, ptr %fwrq, i32 0, i32 1
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  %2 = ptrtoint ptr %fwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fwrq, align 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %div = sdiv i32 %3, 100000
  %4 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %e, align 4
  %mul.i = mul nsw i32 %div, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #17
  %5 = ptrtoint ptr %fwrq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %fwrq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = phi i32 [ %call.i, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %6)
  %7 = icmp ugt i32 %6, 1000
  br i1 %7, label %if.end.if.end25_crit_edge, label %lor.lhs.false11

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

lor.lhs.false11:                                  ; preds = %if.end
  %8 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp14 = icmp sgt i16 %9, 0
  br i1 %cmp14, label %lor.lhs.false11.if.end25_crit_edge, label %if.else

lor.lhs.false11.if.end25_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false11
  %call18 = tail call fastcc i32 @atmel_validate_channel(ptr noundef %add.ptr.i, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %channel22 = getelementptr i8, ptr %dev, i32 2836
  %10 = ptrtoint ptr %channel22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %channel22, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %lor.lhs.false11.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %rc.1 = phi i32 [ -95, %lor.lhs.false11.if.end25_crit_edge ], [ -95, %if.end.if.end25_crit_edge ], [ -115, %if.then21 ], [ -22, %if.else.if.end25_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %fwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %dev, i32 2836
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = ptrtoint ptr %fwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fwrq, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %fwrq, i32 0, i32 1
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %e, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_mode(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uwrq, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %operating_mode = getelementptr i8, ptr %dev, i32 2820
  %2 = ptrtoint ptr %operating_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %operating_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %operating_mode = getelementptr i8, ptr %dev, i32 2820
  %0 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %operating_mode, align 4
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %uwrq, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_get_range(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr noundef %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %reg_domain = getelementptr i8, ptr %dev, i32 2840
  %1 = call ptr @memset(ptr %extra, i32 0, i32 568)
  %2 = ptrtoint ptr %reg_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_domain, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %3, label %for.inc.7 [
    i32 16, label %entry.if.then_crit_edge
    i32 32, label %if.then.fold.split
    i32 48, label %if.then.fold.split113
    i32 49, label %if.then.fold.split114
    i32 50, label %if.then.fold.split115
    i32 64, label %if.then.fold.split116
    i32 65, label %if.then.fold.split117
    i32 80, label %if.then.fold.split118
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split113:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split114:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split115:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split116:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split117:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.fold.split118:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split118, %if.then.fold.split117, %if.then.fold.split116, %if.then.fold.split115, %if.then.fold.split114, %if.then.fold.split113, %if.then.fold.split, %entry.if.then_crit_edge
  %j.0108.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split113 ], [ 3, %if.then.fold.split114 ], [ 4, %if.then.fold.split115 ], [ 5, %if.then.fold.split116 ], [ 6, %if.then.fold.split117 ], [ 7, %if.then.fold.split118 ]
  %max = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %j.0108.lcssa, i32 2
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %min = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %j.0108.lcssa, i32 1
  %7 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min, align 4
  %sub = sub i32 %6, %8
  %9 = trunc i32 %sub to i16
  %conv = add i16 %9, 1
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %num_channels, align 4
  br label %for.end

for.inc.7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %11)
  %.pr = load i16, ptr %num_channels, align 4
  br label %for.end

for.end:                                          ; preds = %for.inc.7, %if.then
  %j.0107 = phi i32 [ 8, %for.inc.7 ], [ %j.0108.lcssa, %if.then ]
  %12 = phi i16 [ %.pr, %for.inc.7 ], [ %conv, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp8.not = icmp eq i16 %12, 0
  br i1 %cmp8.not, label %for.end.if.end32_crit_edge, label %if.then10

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then10:                                        ; preds = %for.end
  %min12 = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %j.0107, i32 1
  %13 = ptrtoint ptr %min12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min12, align 4
  %max15 = getelementptr [8 x %struct.anon.128], ptr @channel_table, i32 0, i32 %j.0107, i32 2
  %15 = ptrtoint ptr %max15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16.not109 = icmp sgt i32 %14, %16
  br i1 %cmp16.not109, label %if.then10.for.end30_crit_edge, label %if.then10.for.body18_crit_edge

if.then10.for.body18_crit_edge:                   ; preds = %if.then10
  br label %for.body18

if.then10.for.end30_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end30

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then10.for.body18_crit_edge
  %i.0111 = phi i32 [ %inc29, %for.body18.for.body18_crit_edge ], [ %14, %if.then10.for.body18_crit_edge ]
  %k.0110 = phi i32 [ %inc26, %for.body18.for.body18_crit_edge ], [ 0, %if.then10.for.body18_crit_edge ]
  %conv19 = trunc i32 %i.0111 to i8
  %arrayidx20 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %k.0110
  %i21 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %k.0110, i32 2
  %17 = ptrtoint ptr %i21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19, ptr %i21, align 2
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %i.0111, i32 noundef 0) #17
  %div.i = udiv i32 %call.i, 1000
  %mul = mul i32 %div.i, 100000
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %arrayidx20, align 4
  %inc26 = add i32 %k.0110, 1
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %k.0110, i32 1
  %19 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %e, align 4
  %inc29 = add i32 %i.0111, 1
  %cmp16.not = icmp sgt i32 %inc29, %16
  br i1 %cmp16.not, label %for.end30.loopexit, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body18

for.end30.loopexit:                               ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast = trunc i32 %inc26 to i8
  br label %for.end30

for.end30:                                        ; preds = %for.end30.loopexit, %if.then10.for.end30_crit_edge
  %k.0.lcssa = phi i8 [ 0, %if.then10.for.end30_crit_edge ], [ %phi.cast, %for.end30.loopexit ]
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %20 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %k.0.lcssa, ptr %num_frequency, align 2
  br label %if.end32

if.end32:                                         ; preds = %for.end30, %for.end.if.end32_crit_edge
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %21 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 100, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 100, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 64, ptr %updated, align 1
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %25 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 50, ptr %avg_qual, align 4
  %level38 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %level38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 50, ptr %level38, align 1
  %noise40 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %noise40 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %noise40, align 2
  %updated42 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %updated42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %updated42, align 1
  %sensitivity = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 7
  %29 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %sensitivity, align 4
  %bitrate = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 11
  %30 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1000000, ptr %bitrate, align 4
  %arrayidx45 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2000000, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5500000, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 3
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 11000000, ptr %arrayidx49, align 4
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %34 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %num_bitrates, align 4
  %min_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 12
  %35 = ptrtoint ptr %min_rts to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %min_rts, align 4
  %max_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 13
  %36 = ptrtoint ptr %max_rts to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2347, ptr %max_rts, align 4
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %37 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %38 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2346, ptr %max_frag, align 4
  %encoding_size = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 23
  %39 = ptrtoint ptr %encoding_size to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 5, ptr %encoding_size, align 2
  %arrayidx52 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 23, i32 1
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 13, ptr %arrayidx52, align 2
  %num_encoding_sizes = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 24
  %41 = ptrtoint ptr %num_encoding_sizes to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %num_encoding_sizes, align 2
  %max_encoding_tokens = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 25
  %42 = ptrtoint ptr %max_encoding_tokens to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %max_encoding_tokens, align 1
  %pmp_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 20
  %43 = ptrtoint ptr %pmp_flags to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %pmp_flags, align 4
  %pmt_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 21
  %44 = ptrtoint ptr %pmt_flags to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %pmt_flags, align 2
  %pm_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 22
  %45 = ptrtoint ptr %pm_capa to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %pm_capa, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %46 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 22, ptr %we_version_source, align 1
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %47 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 22, ptr %we_version_compiled, align 4
  %retry_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 32
  %48 = ptrtoint ptr %retry_capa to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 4096, ptr %retry_capa, align 2
  %retry_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 33
  %49 = ptrtoint ptr %retry_flags to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 4096, ptr %retry_flags, align 4
  %r_time_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 34
  %50 = ptrtoint ptr %r_time_flags to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %r_time_flags, align 2
  %min_retry = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 35
  %51 = ptrtoint ptr %min_retry to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %min_retry, align 4
  %max_retry = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 36
  %52 = ptrtoint ptr %max_retry to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65535, ptr %max_retry, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_set_wap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %awrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %awrq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %awrq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %awrq, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @atmel_set_wap.any, ptr noundef dereferenceable(6) %sa_data, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %bcmp84 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @atmel_set_wap.off, ptr noundef dereferenceable(6) %sa_data, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp84)
  %tobool6.not = icmp eq i32 %bcmp84, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then7_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

for.cond.preheader:                               ; preds = %lor.lhs.false
  %BSS_list_entries = getelementptr i8, ptr %dev, i32 7280
  %2 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %BSS_list_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1888 = icmp sgt i32 %3, 0
  br i1 %cmp1888, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %management_timer = getelementptr i8, ptr %dev, i32 2356
  %call8 = tail call i32 @del_timer_sync(ptr noundef %management_timer) #17
  %irqlock = getelementptr i8, ptr %dev, i32 2444
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #17
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call13) #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %BSSID = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.089, i32 7
  %bcmp85 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %BSSID, ptr noundef dereferenceable(6) %sa_data, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp85)
  %cmp24 = icmp eq i32 %bcmp85, 0
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %4 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool27.not = icmp eq i8 %5, 0
  %UsingWEP = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.089, i32 3
  %6 = ptrtoint ptr %UsingWEP to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %UsingWEP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool30.not = icmp eq i32 %7, 0
  br i1 %tobool27.not, label %land.lhs.true, label %land.lhs.true35

land.lhs.true:                                    ; preds = %if.then26
  br i1 %tobool30.not, label %land.lhs.true.if.else41_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else41

land.lhs.true35:                                  ; preds = %if.then26
  br i1 %tobool30.not, label %land.lhs.true35.cleanup_crit_edge, label %land.lhs.true35.if.else41_crit_edge

land.lhs.true35.if.else41_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else41

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else41:                                        ; preds = %land.lhs.true35.if.else41_crit_edge, %land.lhs.true.if.else41_crit_edge
  %management_timer42 = getelementptr i8, ptr %dev, i32 2356
  %call43 = tail call i32 @del_timer_sync(ptr noundef %management_timer42) #17
  %irqlock51 = getelementptr i8, ptr %dev, i32 2444
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock51) #17
  tail call fastcc void @atmel_join_bss(ptr noundef %add.ptr.i, i32 noundef %i.089)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock51, i32 noundef %call53) #17
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else41, %land.lhs.true35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then7, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else41 ], [ 0, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true35.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_wap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %awrq, ptr nocapture noundef readnone %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %awrq, i32 0, i32 1
  %CurrentBSSID = getelementptr i8, ptr %dev, i32 7300
  %0 = call ptr @memcpy(ptr %sa_data, ptr %CurrentBSSID, i32 6)
  %1 = ptrtoint ptr %awrq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %awrq, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_set_scan(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %station_state = getelementptr i8, ptr %dev, i32 2816
  %0 = ptrtoint ptr %station_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %station_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_survey = getelementptr i8, ptr %dev, i32 2912
  %2 = ptrtoint ptr %last_survey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_survey, align 8
  %add = add i32 %3, 2000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %site_survey_state = getelementptr i8, ptr %dev, i32 2908
  %5 = ptrtoint ptr %site_survey_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %site_survey_state, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %last_survey to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_survey, align 8
  %site_survey_state5 = getelementptr i8, ptr %dev, i32 2908
  %8 = ptrtoint ptr %site_survey_state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %site_survey_state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %management_timer = getelementptr i8, ptr %dev, i32 2356
  %call9 = tail call i32 @del_timer_sync(ptr noundef %management_timer) #17
  %irqlock = getelementptr i8, ptr %dev, i32 2444
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #17
  %10 = ptrtoint ptr %site_survey_state5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %site_survey_state5, align 4
  %fast_scan = getelementptr i8, ptr %dev, i32 2924
  %11 = ptrtoint ptr %fast_scan to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fast_scan, align 4
  tail call fastcc void @atmel_scan(ptr noundef %add.ptr.i, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call13) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -11, %entry.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_get_scan(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef writeonly %dwrq, ptr noundef %extra) #0 align 64 {
entry:
  %iwe = alloca %struct.iw_event, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe) #17
  %0 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 2
  %site_survey_state = getelementptr i8, ptr %dev, i32 2908
  %4 = call ptr @memset(ptr %iwe, i32 255, i32 20)
  %5 = ptrtoint ptr %site_survey_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %site_survey_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %BSS_list_entries = getelementptr i8, ptr %dev, i32 7280
  %7 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %BSS_list_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1102 = icmp sgt i32 %8, 0
  br i1 %cmp1102, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %extra, i32 4096
  %level = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %current_ev.0104 = phi ptr [ %extra, %for.body.lr.ph ], [ %call59, %for.body.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -29931, ptr %0, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %1, align 4
  %arrayidx = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103
  %BSSID = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 7
  %11 = call ptr @memcpy(ptr %sa_data, ptr %BSSID, i32 6)
  %call4 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.0104, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 20) #17
  %SSIDsize = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 1
  %12 = ptrtoint ptr %SSIDsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SSIDsize, align 4
  %conv = trunc i32 %13 to i16
  %conv10 = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv10)
  %cmp11 = icmp ugt i32 %conv10, 32
  %spec.select = select i1 %cmp11, i16 32, i16 %conv
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %2, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -29925, ptr %0, align 2
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %3, align 2
  %SSID = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 8
  %call23 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call4, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef %SSID) #17
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -29945, ptr %0, align 2
  %BSStype = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 6
  %18 = ptrtoint ptr %BSStype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BSStype, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %call29 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call23, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #17
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -29947, ptr %0, align 2
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %1, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %2, align 4
  %call36 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call29, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 12) #17
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -29695, ptr %0, align 2
  %RSSI = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 2
  %27 = ptrtoint ptr %RSSI to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %RSSI, align 4
  %conv40 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv40, ptr %level, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv40, ptr %1, align 4
  %call46 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call36, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #17
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -29909, ptr %0, align 2
  %UsingWEP = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 70, i32 %i.0103, i32 3
  %32 = ptrtoint ptr %UsingWEP to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %UsingWEP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  %storemerge = select i1 %tobool.not, i16 -32768, i16 2048
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %storemerge, ptr %3, align 2
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %2, align 4
  %call59 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call46, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef null) #17
  %inc = add nuw nsw i32 %i.0103, 1
  %36 = ptrtoint ptr %BSS_list_entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BSS_list_entries, align 8
  %cmp1 = icmp slt i32 %inc, %37
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %current_ev.0.lcssa = phi ptr [ %extra, %for.cond.preheader.for.end_crit_edge ], [ %call59, %for.body.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %current_ev.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %extra to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i32 %sub.ptr.sub to i16
  %length61 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %38 = ptrtoint ptr %length61 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv60, ptr %length61, align 4
  %flags62 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %39 = ptrtoint ptr %flags62 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags62, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_essid(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %connect_to_any_BSS = getelementptr i8, ptr %dev, i32 7288
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %connect_to_any_BSS to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %connect_to_any_BSS, align 8
  br label %cleanup18

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %connect_to_any_BSS to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %connect_to_any_BSS, align 8
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  %conv5 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp6 = icmp ugt i16 %5, 32
  br i1 %cmp6, label %if.else.cleanup18_crit_edge, label %if.end

if.else.cleanup18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup18

if.end:                                           ; preds = %if.else
  %6 = and i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp9.not = icmp eq i16 %6, 1
  br i1 %cmp9.not, label %cleanup, label %if.end.cleanup18_crit_edge

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup18

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %new_SSID = getelementptr i8, ptr %dev, i32 7344
  %7 = call ptr @memcpy(ptr %new_SSID, ptr %extra, i32 %conv5)
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 4
  %conv16 = zext i16 %9 to i32
  %new_SSID_size = getelementptr i8, ptr %dev, i32 7296
  %10 = ptrtoint ptr %new_SSID_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv16, ptr %new_SSID_size, align 8
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup, %if.end.cleanup18_crit_edge, %if.else.cleanup18_crit_edge, %if.then
  %retval.1 = phi i32 [ -115, %cleanup ], [ -115, %if.then ], [ -22, %if.end.cleanup18_crit_edge ], [ -7, %if.else.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_essid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr nocapture noundef writeonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %new_SSID_size = getelementptr i8, ptr %dev, i32 7296
  %0 = ptrtoint ptr %new_SSID_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_SSID_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %new_SSID = getelementptr i8, ptr %dev, i32 7344
  %2 = call ptr @memcpy(ptr %extra, ptr %new_SSID, i32 %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %SSID = getelementptr i8, ptr %dev, i32 7312
  %SSID_size = getelementptr i8, ptr %dev, i32 7292
  %3 = ptrtoint ptr %SSID_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SSID_size, align 4
  %5 = call ptr @memcpy(ptr %extra, ptr %SSID, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.sink.in.in = phi ptr [ %SSID_size, %if.else ], [ %new_SSID_size, %if.then ]
  %6 = ptrtoint ptr %conv.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %conv.sink.in = load i32, ptr %conv.sink.in.in, align 4
  %conv.sink = trunc i32 %conv.sink.in to i16
  %7 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.sink, ptr %7, align 4
  %connect_to_any_BSS = getelementptr i8, ptr %dev, i32 7288
  %9 = ptrtoint ptr %connect_to_any_BSS to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connect_to_any_BSS, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %conv7 = zext i1 %tobool.not to i16
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %flags, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_rate(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %0 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate = getelementptr i8, ptr %dev, i32 2848
  %2 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %tx_rate, align 8
  %auto_tx_rate = getelementptr i8, ptr %dev, i32 2852
  %3 = ptrtoint ptr %auto_tx_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %auto_tx_rate, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %auto_tx_rate2 = getelementptr i8, ptr %dev, i32 2852
  %4 = ptrtoint ptr %auto_tx_rate2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %auto_tx_rate2, align 4
  %5 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate10 = getelementptr i8, ptr %dev, i32 2848
  %8 = ptrtoint ptr %tx_rate10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx_rate10, align 8
  br label %cleanup

if.else11:                                        ; preds = %if.else
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %6, label %if.else11.cleanup_crit_edge [
    i32 1000000, label %sw.bb
    i32 2000000, label %sw.bb14
    i32 5500000, label %sw.bb16
    i32 11000000, label %sw.bb18
  ]

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate13 = getelementptr i8, ptr %dev, i32 2848
  %10 = ptrtoint ptr %tx_rate13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_rate13, align 8
  br label %cleanup

sw.bb14:                                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate15 = getelementptr i8, ptr %dev, i32 2848
  %11 = ptrtoint ptr %tx_rate15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tx_rate15, align 8
  br label %cleanup

sw.bb16:                                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate17 = getelementptr i8, ptr %dev, i32 2848
  %12 = ptrtoint ptr %tx_rate17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %tx_rate17, align 8
  br label %cleanup

sw.bb18:                                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  %tx_rate19 = getelementptr i8, ptr %dev, i32 2848
  %13 = ptrtoint ptr %tx_rate19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %tx_rate19, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb, %if.else11.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.else11.cleanup_crit_edge ], [ -115, %if.then8 ], [ -115, %sw.bb18 ], [ -115, %sw.bb16 ], [ -115, %sw.bb14 ], [ -115, %sw.bb ], [ -115, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_tx_rate = getelementptr i8, ptr %dev, i32 2852
  %0 = ptrtoint ptr %auto_tx_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auto_tx_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %fixed1 = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %fixed1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fixed1, align 4
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %fixed1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %fixed1, align 4
  %tx_rate = getelementptr i8, ptr %dev, i32 2848
  %4 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.atmel_get_rate, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %switch.lookup, %if.then
  %.sink = phi i32 [ 11000000, %if.then ], [ %switch.load, %switch.lookup ]
  %8 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %vwrq, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_rts(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vwrq, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %tobool.not, i32 %1, i32 2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 2347, i32 %spec.store.select)
  %4 = icmp ugt i32 %spec.store.select, 2347
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rts_threshold = getelementptr i8, ptr %dev, i32 2856
  %5 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %rts_threshold, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_rts(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rts_threshold = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rts_threshold, align 8
  %2 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2346, i32 %1)
  %cmp = icmp sgt i32 %1, 2346
  %conv2 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %3 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %4 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_frag(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vwrq, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %tobool.not, i32 %1, i32 2346
  %4 = add i32 %spec.store.select, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %4)
  %5 = icmp ult i32 %4, -2091
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i32 %spec.store.select, -2
  %frag_threshold = getelementptr i8, ptr %dev, i32 2860
  %6 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %frag_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_threshold = getelementptr i8, ptr %dev, i32 2860
  %0 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frag_threshold, align 4
  %2 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2345, i32 %1)
  %cmp = icmp sgt i32 %1, 2345
  %conv2 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %3 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %4 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_retry(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %and4 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vwrq, align 4
  %long_retry = getelementptr i8, ptr %dev, i32 2864
  %6 = ptrtoint ptr %long_retry to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %long_retry, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then
  %and9 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %7 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vwrq, align 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %short_retry = getelementptr i8, ptr %dev, i32 2868
  %9 = ptrtoint ptr %short_retry to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %short_retry, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %long_retry15 = getelementptr i8, ptr %dev, i32 2864
  %10 = ptrtoint ptr %long_retry15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %long_retry15, align 8
  %11 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vwrq, align 4
  %short_retry17 = getelementptr i8, ptr %dev, i32 2868
  %13 = ptrtoint ptr %short_retry17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %short_retry17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then11, %if.then6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.then11 ], [ -115, %if.else13 ], [ -115, %if.then6 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_retry(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4128, ptr %flags, align 2
  %long_retry = getelementptr i8, ptr %dev, i32 2864
  %5 = ptrtoint ptr %long_retry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %long_retry, align 8
  %7 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vwrq, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4096, ptr %flags, align 2
  %short_retry = getelementptr i8, ptr %dev, i32 2868
  %9 = ptrtoint ptr %short_retry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %short_retry, align 4
  %11 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vwrq, align 4
  %long_retry4 = getelementptr i8, ptr %dev, i32 2864
  %12 = ptrtoint ptr %long_retry4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %long_retry4, align 8
  %14 = load i32, ptr %short_retry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp.not = icmp eq i32 %13, %14
  br i1 %cmp.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4112, ptr %flags, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_encode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  %flags66 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %2 = ptrtoint ptr %flags66 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags66, align 2
  %4 = and i16 %3, 255
  br i1 %cmp.not, label %if.else64, label %if.then

if.then:                                          ; preds = %entry
  %and = zext i16 %4 to i32
  %sub = add nsw i32 %and, -1
  %default_key = getelementptr i8, ptr %dev, i32 2585
  %5 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %default_key, align 1
  %conv3 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %1)
  %cmp6 = icmp ugt i16 %1, 13
  br i1 %cmp6, label %if.then.cleanup127_crit_edge, label %if.end

if.then.cleanup127_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup127

if.end:                                           ; preds = %if.then
  %7 = add nsw i16 %4, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %7)
  %8 = icmp ult i16 %7, -4
  br i1 %8, label %if.end.if.end16_crit_edge, label %if.else

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv14 = trunc i32 %sub to i8
  %9 = ptrtoint ptr %default_key to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %default_key, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end.if.end16_crit_edge
  %index.0 = phi i32 [ %sub, %if.else ], [ %conv3, %if.end.if.end16_crit_edge ]
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp19 = icmp ugt i16 %11, 5
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %index.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %arrayidx, align 4
  br label %if.end34

if.else22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp25.not = icmp eq i16 %11, 0
  %arrayidx32 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %index.0
  br i1 %cmp25.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %arrayidx32, align 4
  br label %if.end34

if.else30:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then27, %if.then21
  %15 = ptrtoint ptr %flags66 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags66, align 2
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.then38, label %if.end34.if.end45_crit_edge

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx39 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 36, i32 %index.0
  %18 = call ptr @memset(ptr %arrayidx39, i32 0, i32 13)
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length, align 4
  %conv44 = zext i16 %20 to i32
  %21 = call ptr @memcpy(ptr %arrayidx39, ptr %extra, i32 %conv44)
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.end34.if.end45_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0, i32 %conv3)
  %cmp46 = icmp eq i32 %index.0, %conv3
  br i1 %cmp46, label %land.lhs.true, label %if.end45.if.end89_crit_edge

if.end45.if.end89_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end45
  %arrayidx49 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %conv3
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp50 = icmp sgt i32 %23, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then52:                                        ; preds = %land.lhs.true
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %24 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %wep_is_on, align 8
  %exclude_unencrypted = getelementptr i8, ptr %dev, i32 2586
  %25 = ptrtoint ptr %exclude_unencrypted to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %exclude_unencrypted, align 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp55 = icmp sgt i32 %27, 5
  %pairwise_cipher_suite = getelementptr i8, ptr %dev, i32 2589
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %pairwise_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %pairwise_cipher_suite, align 1
  br label %if.end89.sink.split

if.else58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %pairwise_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %pairwise_cipher_suite, align 1
  br label %if.end89.sink.split

if.else64:                                        ; preds = %entry
  %30 = add nsw i16 %4, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %30)
  %31 = icmp ult i16 %30, 4
  br i1 %31, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #19
  %and68 = trunc i16 %3 to i8
  %sub69 = add i8 %and68, -1
  br label %if.end89.sink.split

if.else78:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %3)
  %tobool82.not = icmp ult i16 %3, 4096
  br i1 %tobool82.not, label %if.else78.cleanup127_crit_edge, label %if.else78.if.end89_crit_edge

if.else78.if.end89_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.else78.cleanup127_crit_edge:                   ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup127

if.end89.sink.split:                              ; preds = %if.then75, %if.else58, %if.then57
  %.sink182 = phi i32 [ 2587, %if.then57 ], [ 2587, %if.else58 ], [ 2585, %if.then75 ]
  %.sink = phi i8 [ 2, %if.then57 ], [ 1, %if.else58 ], [ %sub69, %if.then75 ]
  %encryption_level = getelementptr i8, ptr %dev, i32 %.sink182
  %32 = ptrtoint ptr %encryption_level to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %encryption_level, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %if.else78.if.end89_crit_edge, %land.lhs.true.if.end89_crit_edge, %if.end45.if.end89_crit_edge
  %flags90 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %33 = ptrtoint ptr %flags90 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %tobool93.not = icmp sgt i16 %34, -1
  %wep_is_on99 = getelementptr i8, ptr %dev, i32 2584
  br i1 %tobool93.not, label %if.else98, label %if.then94

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %wep_is_on99 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %wep_is_on99, align 8
  %encryption_level96 = getelementptr i8, ptr %dev, i32 2587
  %36 = ptrtoint ptr %encryption_level96 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %encryption_level96, align 1
  br label %if.end112

if.else98:                                        ; preds = %if.end89
  %37 = ptrtoint ptr %wep_is_on99 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %wep_is_on99, align 8
  %default_key101 = getelementptr i8, ptr %dev, i32 2585
  %38 = ptrtoint ptr %default_key101 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %default_key101, align 1
  %idxprom = zext i8 %39 to i32
  %arrayidx102 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %idxprom
  %40 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp103 = icmp sgt i32 %41, 5
  %pairwise_cipher_suite106 = getelementptr i8, ptr %dev, i32 2589
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %pairwise_cipher_suite106 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %pairwise_cipher_suite106, align 1
  br label %if.end112

if.else108:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %pairwise_cipher_suite106 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %pairwise_cipher_suite106, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.else108, %if.then105, %if.then94
  %.sink184 = phi i32 [ 2587, %if.then105 ], [ 2587, %if.else108 ], [ 2589, %if.then94 ]
  %.sink183 = phi i8 [ 2, %if.then105 ], [ 1, %if.else108 ], [ 0, %if.then94 ]
  %encryption_level107 = getelementptr i8, ptr %dev, i32 %.sink184
  %44 = ptrtoint ptr %encryption_level107 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink183, ptr %encryption_level107, align 1
  %45 = ptrtoint ptr %flags90 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags90, align 2
  %47 = and i16 %46, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool116.not = icmp eq i16 %47, 0
  br i1 %tobool116.not, label %if.end112.if.end119_crit_edge, label %if.then117

if.end112.if.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted118 = getelementptr i8, ptr %dev, i32 2586
  %48 = ptrtoint ptr %exclude_unencrypted118 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %exclude_unencrypted118, align 2
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end112.if.end119_crit_edge
  %49 = ptrtoint ptr %flags90 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags90, align 2
  %51 = and i16 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool123.not = icmp eq i16 %51, 0
  br i1 %tobool123.not, label %if.end119.cleanup127_crit_edge, label %if.then124

if.end119.cleanup127_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup127

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted125 = getelementptr i8, ptr %dev, i32 2586
  %52 = ptrtoint ptr %exclude_unencrypted125 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %exclude_unencrypted125, align 2
  br label %cleanup127

cleanup127:                                       ; preds = %if.then124, %if.end119.cleanup127_crit_edge, %if.else78.cleanup127_crit_edge, %if.then.cleanup127_crit_edge
  %retval.2 = phi i32 [ -22, %if.else78.cleanup127_crit_edge ], [ -115, %if.then124 ], [ -115, %if.end119.cleanup127_crit_edge ], [ -22, %if.then.cleanup127_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_encode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %dwrq, ptr nocapture noundef writeonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 255
  %and = zext i16 %2 to i32
  %sub = add nsw i32 %and, -1
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %3 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted = getelementptr i8, ptr %dev, i32 2586
  %5 = ptrtoint ptr %exclude_unencrypted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exclude_unencrypted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %. = select i1 %tobool2.not, i16 8192, i16 16384
  br label %if.end7

if.end7:                                          ; preds = %if.else, %entry.if.end7_crit_edge
  %.sink = phi i16 [ -32768, %entry.if.end7_crit_edge ], [ %., %if.else ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink, ptr %flags, align 2
  %8 = add nsw i16 %2, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %8)
  %9 = icmp ult i16 %8, -4
  br i1 %9, label %if.then11, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %default_key = getelementptr i8, ptr %dev, i32 2585
  %10 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %default_key, align 1
  %conv12 = zext i8 %11 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %index.0 = phi i32 [ %conv12, %if.then11 ], [ %sub, %if.end7.if.end13_crit_edge ]
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = trunc i32 %index.0 to i16
  %15 = add nsw i16 %14, 1
  %conv16 = or i16 %15, %13
  store i16 %conv16, ptr %flags, align 2
  %arrayidx = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %index.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv17 = trunc i32 %17 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %length, align 4
  %conv19 = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv19)
  %cmp20 = icmp ugt i32 %conv19, 16
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %length, align 4
  br label %if.end28

if.else24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %20 = call ptr @memset(ptr %extra, i32 0, i32 16)
  %arrayidx25 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 36, i32 %index.0
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length, align 4
  %conv27 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %extra, ptr %arrayidx25, i32 %conv27)
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then22
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_power(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = zext i1 %tobool.not to i32
  %power_mode = getelementptr i8, ptr %dev, i32 2824
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %power_mode, align 8
  ret i32 -115
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode = getelementptr i8, ptr %dev, i32 2824
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %conv = zext i1 %tobool.not to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_auth(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 4095
  %and = zext i16 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge27
    i32 2, label %entry.sw.epilog_crit_edge28
    i32 3, label %entry.sw.epilog_crit_edge29
    i32 8, label %entry.sw.epilog_crit_edge30
    i32 10, label %entry.sw.epilog_crit_edge31
    i32 5, label %sw.bb1
    i32 6, label %sw.bb3
    i32 7, label %sw.bb15
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %conv2 = zext i1 %tobool.not to i8
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrqu, align 4
  %and5 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %sw.bb3.sw.epilog.sink.split_crit_edge

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb3
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.else.sw.epilog.sink.split_crit_edge

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %8 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %sw.bb15.cleanup_crit_edge, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.else.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb1
  %.sink = phi i8 [ %conv2, %sw.bb1 ], [ 1, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ 0, %if.else.sw.epilog.sink.split_crit_edge ]
  %exclude_unencrypted7 = getelementptr i8, ptr %dev, i32 2586
  %10 = ptrtoint ptr %exclude_unencrypted7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %exclude_unencrypted7, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb15.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge27, %entry.sw.epilog_crit_edge28, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %sw.epilog ], [ -22, %if.else.cleanup_crit_edge ], [ -95, %sw.bb15.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_auth(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 4095
  %and = zext i16 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb2
    i32 7, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted = getelementptr i8, ptr %dev, i32 2586
  %4 = ptrtoint ptr %exclude_unencrypted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exclude_unencrypted, align 2
  %conv1 = zext i8 %5 to i32
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %exclude_unencrypted3 = getelementptr i8, ptr %dev, i32 2586
  %6 = ptrtoint ptr %exclude_unencrypted3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exclude_unencrypted3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  %. = select i1 %cmp, i32 2, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb, %entry.cleanup.sink.split_crit_edge
  %conv1.sink = phi i32 [ %conv1, %sw.bb ], [ %., %sw.bb2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1.sink, ptr %wrqu, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_set_encodeext(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %alg1 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %0 = ptrtoint ptr %alg1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alg1, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp4 = icmp ugt i16 %4, 4
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %dec = add nsw i32 %and, -1
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %default_key = getelementptr i8, ptr %dev, i32 2585
  %5 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %default_key, align 1
  %conv7 = zext i8 %6 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %idx.0 = phi i32 [ %dec, %if.end ], [ %conv7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool12.not.inv = icmp slt i16 %3, 0
  %spec.select = select i1 %tobool12.not.inv, i16 0, i16 %1
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extra, align 4
  %and15 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end8.if.then26_crit_edge, label %if.then17

if.end8.if.then26_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then26

if.then17:                                        ; preds = %if.end8
  %conv18 = trunc i32 %idx.0 to i8
  %default_key19 = getelementptr i8, ptr %dev, i32 2585
  %9 = ptrtoint ptr %default_key19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv18, ptr %default_key19, align 1
  %key_len20 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %10 = ptrtoint ptr %key_len20 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %key_len20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp22 = icmp eq i16 %11, 0
  br i1 %cmp22, label %if.then17.cleanup_crit_edge, label %if.then17.if.then26_crit_edge

if.then17.if.then26_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then26

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then26:                                        ; preds = %if.then17.if.then26_crit_edge, %if.end8.if.then26_crit_edge
  %12 = zext i16 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.153)
  switch i16 %spec.select, label %if.then26.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb27
  ]

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %13 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %wep_is_on, align 8
  %encryption_level = getelementptr i8, ptr %dev, i32 2587
  %14 = ptrtoint ptr %encryption_level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %encryption_level, align 1
  %pairwise_cipher_suite = getelementptr i8, ptr %dev, i32 2589
  %15 = ptrtoint ptr %pairwise_cipher_suite to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pairwise_cipher_suite, align 1
  br label %cleanup

sw.bb27:                                          ; preds = %if.then26
  %key_len28 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %16 = ptrtoint ptr %key_len28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %key_len28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %17)
  %cmp30 = icmp ugt i16 %17, 5
  br i1 %cmp30, label %sw.bb27.if.end47_crit_edge, label %if.else35

sw.bb27.if.end47_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.else35:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp38.not = icmp eq i16 %17, 0
  br i1 %cmp38.not, label %if.else35.cleanup_crit_edge, label %if.else35.if.end47_crit_edge

if.else35.if.end47_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end47:                                         ; preds = %if.else35.if.end47_crit_edge, %sw.bb27.if.end47_crit_edge
  %.sink101 = phi i32 [ 13, %sw.bb27.if.end47_crit_edge ], [ 5, %if.else35.if.end47_crit_edge ]
  %.sink100 = phi i8 [ 5, %sw.bb27.if.end47_crit_edge ], [ 1, %if.else35.if.end47_crit_edge ]
  %.sink = phi i8 [ 2, %sw.bb27.if.end47_crit_edge ], [ 1, %if.else35.if.end47_crit_edge ]
  %arrayidx42 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %idx.0
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink101, ptr %arrayidx42, align 4
  %pairwise_cipher_suite43 = getelementptr i8, ptr %dev, i32 2589
  %19 = ptrtoint ptr %pairwise_cipher_suite43 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink100, ptr %pairwise_cipher_suite43, align 1
  %encryption_level44 = getelementptr i8, ptr %dev, i32 2587
  %20 = ptrtoint ptr %encryption_level44 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %encryption_level44, align 1
  %wep_is_on48 = getelementptr i8, ptr %dev, i32 2584
  %21 = ptrtoint ptr %wep_is_on48 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %wep_is_on48, align 8
  %arrayidx49 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 36, i32 %idx.0
  %22 = call ptr @memset(ptr %arrayidx49, i32 0, i32 13)
  %23 = ptrtoint ptr %key_len28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %key_len28, align 2
  %conv51 = zext i16 %24 to i32
  %arrayidx53 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %idx.0
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx53, align 4
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %conv51)
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %arrayidx49, ptr %key, i32 %27)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else35.cleanup_crit_edge, %sw.bb, %if.then26.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else35.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ -115, %sw.bb ], [ -115, %if.end47 ], [ -115, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_get_encodeext(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %1)
  %cmp = icmp ult i16 %1, 40
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp6 = icmp ugt i16 %4, 4
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %dec = add nsw i32 %and, -1
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %default_key = getelementptr i8, ptr %dev, i32 2585
  %5 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %default_key, align 1
  %conv10 = zext i8 %6 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end9
  %idx.0 = phi i32 [ %dec, %if.end9 ], [ %conv10, %if.else ]
  %7 = trunc i32 %idx.0 to i16
  %conv12 = add nsw i16 %7, 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv12, ptr %flags, align 2
  %9 = call ptr @memset(ptr %extra, i32 0, i32 40)
  %wep_is_on = getelementptr i8, ptr %dev, i32 2584
  %10 = ptrtoint ptr %wep_is_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wep_is_on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = or i16 %13, -32768
  store i16 %14, ptr %flags, align 2
  br label %cleanup

if.else19:                                        ; preds = %if.end11
  %encryption_level = getelementptr i8, ptr %dev, i32 2587
  %15 = ptrtoint ptr %encryption_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %encryption_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp21.not = icmp eq i8 %16, 0
  br i1 %cmp21.not, label %if.else19.cleanup_crit_edge, label %if.then23

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #19
  %alg24 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %17 = ptrtoint ptr %alg24 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %alg24, align 4
  %arrayidx = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 37, i32 %idx.0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %conv27 = trunc i32 %19 to i16
  %key_len28 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %20 = ptrtoint ptr %key_len28 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv27, ptr %key_len28, align 2
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %arrayidx29 = getelementptr %struct.atmel_private, ptr %add.ptr.i, i32 0, i32 36, i32 %idx.0
  %conv32 = and i32 %19, 65535
  %21 = call ptr @memcpy(ptr %key, ptr %arrayidx29, i32 %conv32)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.else19.cleanup_crit_edge, %if.then15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else19.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_wakeup_firmware(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %host_info = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41
  %card_type = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !313
  tail call void @arm_heavy_mb() #17
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %5, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !315
  %8 = or i16 %7, 4
  %9 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr.i, align 32
  %and7.i = and i32 %10, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %11 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #17, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 7
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !319
  tail call void @arm_heavy_mb() #17
  %base_addr.i198 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %base_addr.i198 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr.i198, align 32
  %and.i199 = and i32 %15, 1048575
  %add1.i200 = or i32 %and.i199, -18874368
  %16 = inttoptr i32 %add1.i200 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !320
  %18 = and i16 %17, -16385
  %19 = ptrtoint ptr %base_addr.i198 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_addr.i198, align 32
  %and8.i = and i32 %20, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %21 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #17, !srcloc !310
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !309
  tail call void @arm_heavy_mb() #17
  %base_addr.i201 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %base_addr.i201 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr.i201, align 32
  %add.i = add i32 %25, 2
  %and.i202 = and i32 %add.i, 1048575
  %add1.i203 = or i32 %and.i202, -18874368
  %26 = inttoptr i32 %add1.i203 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 2) #17, !srcloc !310
  %27 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp4 = icmp eq i32 %28, 1
  br i1 %cmp4, label %if.end.while.body_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %__ms.0246 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0246, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #17
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end6_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end6:                                          ; preds = %while.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %bus_type = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %i.0247 = phi i32 [ 500000, %if.end6 ], [ %dec21, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  %base_addr.i204 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %base_addr.i204 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr.i204, align 32
  %add.i205 = add i32 %33, 18
  %and.i206 = and i32 %add.i205, 1048575
  %add1.i207 = or i32 %and.i206, -18874368
  %34 = inttoptr i32 %add1.i207 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %base_addr.i208 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %base_addr.i208 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr.i208, align 32
  %add.i209 = add i32 %39, 22
  %and.i210 = and i32 %add.i209, 1048575
  %add1.i211 = or i32 %and.i210, -18874368
  %40 = inttoptr i32 %add1.i211 to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %42 = and i16 %41, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool11.not = icmp eq i16 %42, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.end13:                                         ; preds = %for.body
  %43 = and i16 %35, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool16.not = icmp eq i16 %43, 0
  br i1 %tobool16.not, label %if.end13.for.inc_crit_edge, label %land.lhs.true

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end13
  %44 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp17 = icmp eq i32 %45, 0
  br i1 %cmp17, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %dec21 = add nsw i32 %i.0247, -1
  %tobool7.not = icmp eq i32 %dec21, 0
  br i1 %tobool7.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %47) #20
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  %base_addr.i212 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %base_addr.i212 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_addr.i212, align 32
  %add.i213 = add i32 %51, 20
  %and.i214 = and i32 %add.i213, 1048575
  %add1.i215 = or i32 %and.i214, -18874368
  %52 = inttoptr i32 %add1.i215 to ptr
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %52) #17, !srcloc !314
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %host_info_base = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 40
  %55 = ptrtoint ptr %host_info_base to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %host_info_base, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp31 = icmp eq i16 %53, -1
  br i1 %cmp31, label %do.end36, label %if.end42

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %57) #20
  br label %cleanup

if.end42:                                         ; preds = %if.end27
  %add.i216 = add i16 %54, 28
  %58 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1, align 4
  tail call fastcc void @atmel_writeAR(ptr noundef %59, i16 noundef zeroext %add.i216) #17
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !311
  tail call void @arm_heavy_mb() #17
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %63, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %64 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 1) #17, !srcloc !312
  br label %for.body46

for.body46:                                       ; preds = %for.inc65.for.body46_crit_edge, %if.end42
  %i.1248 = phi i32 [ 500000, %if.end42 ], [ %dec66, %for.inc65.for.body46_crit_edge ]
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  %base_addr.i217 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %base_addr.i217 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base_addr.i217, align 32
  %add.i218 = add i32 %68, 18
  %and.i219 = and i32 %add.i218, 1048575
  %add1.i220 = or i32 %and.i219, -18874368
  %69 = inttoptr i32 %add1.i220 to ptr
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %69) #17, !srcloc !314
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %72 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1, align 4
  %base_addr.i221 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %base_addr.i221 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base_addr.i221, align 32
  %add.i222 = add i32 %75, 22
  %and.i223 = and i32 %add.i222, 1048575
  %add1.i224 = or i32 %and.i223, -18874368
  %76 = inttoptr i32 %add1.i224 to ptr
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %76) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %78 = and i16 %77, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool53.not = icmp eq i16 %78, 0
  br i1 %tobool53.not, label %if.end55, label %land.lhs.true83

if.end55:                                         ; preds = %for.body46
  %79 = and i16 %71, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool58.not = icmp eq i16 %79, 0
  br i1 %tobool58.not, label %if.end55.for.inc65_crit_edge, label %land.lhs.true59

if.end55.for.inc65_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc65

land.lhs.true59:                                  ; preds = %if.end55
  %80 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp61 = icmp eq i32 %81, 0
  br i1 %cmp61, label %land.lhs.true59.if.end98_crit_edge, label %land.lhs.true59.for.inc65_crit_edge

land.lhs.true59.for.inc65_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc65

land.lhs.true59.if.end98_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

for.inc65:                                        ; preds = %land.lhs.true59.for.inc65_crit_edge, %if.end55.for.inc65_crit_edge
  %dec66 = add nsw i32 %i.1248, -1
  %tobool45.not = icmp eq i32 %dec66, 0
  br i1 %tobool45.not, label %do.end73, label %for.inc65.for.body46_crit_edge

for.inc65.for.body46_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

do.end73:                                         ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %83) #20
  br label %cleanup

land.lhs.true83:                                  ; preds = %for.body46
  %84 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev1, align 4
  %base_addr.i225 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %base_addr.i225 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %base_addr.i225, align 32
  %add.i226 = add i32 %87, 22
  %and.i227 = and i32 %add.i226, 1048575
  %add1.i228 = or i32 %and.i227, -18874368
  %88 = inttoptr i32 %add1.i228 to ptr
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %88) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %90 = and i16 %89, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool88.not = icmp eq i16 %90, 0
  br i1 %tobool88.not, label %do.end92, label %land.lhs.true83.if.end98_crit_edge

land.lhs.true83.if.end98_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

do.end92:                                         ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  %91 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev1, align 4
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %92) #20
  br label %cleanup

if.end98:                                         ; preds = %land.lhs.true83.if.end98_crit_edge, %land.lhs.true59.if.end98_crit_edge
  %93 = and i16 %71, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool101.not = icmp eq i16 %93, 0
  br i1 %tobool101.not, label %if.end98.if.end117_crit_edge, label %land.lhs.true102

if.end98.if.end117_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

land.lhs.true102:                                 ; preds = %if.end98
  %94 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1, align 4
  %base_addr.i229 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %base_addr.i229 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %base_addr.i229, align 32
  %add.i230 = add i32 %97, 18
  %and.i231 = and i32 %add.i230, 1048575
  %add1.i232 = or i32 %and.i231, -18874368
  %98 = inttoptr i32 %add1.i232 to ptr
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %98) #17, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %100 = and i16 %99, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool107.not = icmp eq i16 %100, 0
  br i1 %tobool107.not, label %do.end111, label %land.lhs.true102.if.end117_crit_edge

land.lhs.true102.if.end117_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

do.end111:                                        ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #19
  %101 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %102) #20
  br label %cleanup

if.end117:                                        ; preds = %land.lhs.true102.if.end117_crit_edge, %if.end98.if.end117_crit_edge
  %103 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev1, align 4
  %105 = ptrtoint ptr %host_info_base to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %host_info_base, align 8
  tail call fastcc void @atmel_writeAR(ptr noundef %104, i16 noundef zeroext %106) #17
  %107 = and i16 %106, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not.i = icmp eq i16 %107, 0
  br i1 %tobool.not.i, label %if.end117.for.body.lr.ph.i_crit_edge, label %if.then.i

if.end117.for.body.lr.ph.i_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i

if.then.i:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  %base_addr.i.i233 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 5
  %108 = ptrtoint ptr %base_addr.i.i233 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base_addr.i.i233, align 32
  %add.i.i234 = add i32 %109, 8
  %and.i.i235 = and i32 %add.i.i234, 1048575
  %add1.i.i236 = or i32 %and.i.i235, -18874368
  %110 = inttoptr i32 %add1.i.i236 to ptr
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %110) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %112 = ptrtoint ptr %host_info to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %host_info, align 1
  %incdec.ptr.i = getelementptr %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 1
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i, %if.end117.for.body.lr.ph.i_crit_edge
  %len.addr.0.i = phi i32 [ 35, %if.then.i ], [ 36, %if.end117.for.body.lr.ph.i_crit_edge ]
  %dest.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %host_info, %if.end117.for.body.lr.ph.i_crit_edge ]
  %base_addr.i25.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dest.addr.135.i = phi ptr [ %dest.addr.0.i, %for.body.lr.ph.i ], [ %incdec.ptr8.i, %for.body.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ %len.addr.0.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %113 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %base_addr.i25.i, align 32
  %add.i26.i = add i32 %114, 8
  %and.i27.i = and i32 %add.i26.i, 1048575
  %add1.i28.i = or i32 %and.i27.i, -18874368
  %115 = inttoptr i32 %add1.i28.i to ptr
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %115) #17, !srcloc !314
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !318
  %conv4.i = trunc i16 %117 to i8
  %incdec.ptr5.i = getelementptr i8, ptr %dest.addr.135.i, i32 1
  %118 = ptrtoint ptr %dest.addr.135.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv4.i, ptr %dest.addr.135.i, align 1
  %119 = lshr i16 %117, 8
  %conv7.i = trunc i16 %119 to i8
  %incdec.ptr8.i = getelementptr i8, ptr %dest.addr.135.i, i32 2
  %120 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  %sub.i = add nsw i32 %i.034.i, -2
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool9.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool9.not.i, label %for.end.i.atmel_copy_to_host.exit_crit_edge, label %if.then10.i

for.end.i.atmel_copy_to_host.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atmel_copy_to_host.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %121 = ptrtoint ptr %base_addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %base_addr.i25.i, align 32
  %add.i30.i = add i32 %122, 8
  %and.i31.i = and i32 %add.i30.i, 1048575
  %add1.i32.i = or i32 %and.i31.i, -18874368
  %123 = inttoptr i32 %add1.i32.i to ptr
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %123) #17, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !317
  %125 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %incdec.ptr8.i, align 1
  br label %atmel_copy_to_host.exit

atmel_copy_to_host.exit:                          ; preds = %if.then10.i, %for.end.i.atmel_copy_to_host.exit_crit_edge
  %tx_buff_pos = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 4
  %126 = ptrtoint ptr %tx_buff_pos to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %tx_buff_pos, align 2
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  %129 = ptrtoint ptr %tx_buff_pos to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %tx_buff_pos, align 2
  %tx_buff_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 5
  %130 = ptrtoint ptr %tx_buff_size to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %tx_buff_size, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %133 = ptrtoint ptr %tx_buff_size to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %tx_buff_size, align 2
  %tx_desc_pos = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 6
  %134 = ptrtoint ptr %tx_desc_pos to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %tx_desc_pos, align 2
  %136 = tail call i16 @llvm.bswap.i16(i16 %135)
  %137 = ptrtoint ptr %tx_desc_pos to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %tx_desc_pos, align 2
  %tx_desc_count = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 7
  %138 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %tx_desc_count, align 2
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %141 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %tx_desc_count, align 2
  %rx_buff_pos = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 8
  %142 = ptrtoint ptr %rx_buff_pos to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %rx_buff_pos, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %145 = ptrtoint ptr %rx_buff_pos to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %rx_buff_pos, align 2
  %rx_buff_size = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 9
  %146 = ptrtoint ptr %rx_buff_size to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %rx_buff_size, align 2
  %148 = tail call i16 @llvm.bswap.i16(i16 %147)
  %149 = ptrtoint ptr %rx_buff_size to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %rx_buff_size, align 2
  %rx_desc_pos = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 10
  %150 = ptrtoint ptr %rx_desc_pos to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %rx_desc_pos, align 2
  %152 = tail call i16 @llvm.bswap.i16(i16 %151)
  %153 = ptrtoint ptr %rx_desc_pos to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %rx_desc_pos, align 2
  %rx_desc_count = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 11
  %154 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %rx_desc_count, align 2
  %156 = tail call i16 @llvm.bswap.i16(i16 %155)
  %157 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %rx_desc_count, align 2
  %build_version = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 12
  %158 = ptrtoint ptr %build_version to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %build_version, align 2
  %160 = tail call i16 @llvm.bswap.i16(i16 %159)
  %161 = ptrtoint ptr %build_version to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %build_version, align 2
  %command_pos = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 13
  %162 = ptrtoint ptr %command_pos to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %command_pos, align 2
  %164 = tail call i16 @llvm.bswap.i16(i16 %163)
  %165 = ptrtoint ptr %command_pos to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %command_pos, align 2
  %major_version = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 14
  %166 = ptrtoint ptr %major_version to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %major_version, align 2
  %168 = tail call i16 @llvm.bswap.i16(i16 %167)
  %169 = ptrtoint ptr %major_version to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %major_version, align 2
  %minor_version = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 15
  %170 = ptrtoint ptr %minor_version to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %minor_version, align 2
  %172 = tail call i16 @llvm.bswap.i16(i16 %171)
  %173 = ptrtoint ptr %minor_version to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %minor_version, align 2
  %func_ctrl = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 16
  %174 = ptrtoint ptr %func_ctrl to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %func_ctrl, align 2
  %176 = tail call i16 @llvm.bswap.i16(i16 %175)
  %177 = ptrtoint ptr %func_ctrl to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %func_ctrl, align 2
  %mac_status = getelementptr inbounds %struct.atmel_private, ptr %priv, i32 0, i32 41, i32 17
  %178 = ptrtoint ptr %mac_status to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %mac_status, align 2
  %180 = tail call i16 @llvm.bswap.i16(i16 %179)
  %181 = ptrtoint ptr %mac_status to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %mac_status, align 2
  br label %cleanup

cleanup:                                          ; preds = %atmel_copy_to_host.exit, %do.end111, %do.end92, %do.end73, %do.end36, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -19, %do.end36 ], [ -5, %do.end73 ], [ 0, %atmel_copy_to_host.exit ], [ -5, %do.end111 ], [ -5, %do.end92 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !224, !225, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !267, !268, !269, !271, !273, !274, !275, !277, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297}
!llvm.named.register.sp = !{!299}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306, !307}
!llvm.ident = !{!308}

!0 = !{ptr @__UNIQUE_ID_author347, !1, !"__UNIQUE_ID_author347", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 75, i32 1}
!2 = !{ptr @__UNIQUE_ID_description348, !3, !"__UNIQUE_ID_description348", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 76, i32 1}
!4 = !{ptr @__UNIQUE_ID_file349, !5, !"__UNIQUE_ID_file349", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 77, i32 1}
!6 = !{ptr @__UNIQUE_ID_license350, !5, !"__UNIQUE_ID_license350", i1 false, i1 false}
!7 = !{ptr @__param_firmware, !8, !"__param_firmware", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 82, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmwaretype351, !8, !"__UNIQUE_ID_firmwaretype351", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware352, !11, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 100, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware353, !13, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 101, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware354, !15, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 102, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware355, !17, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 103, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware356, !19, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 104, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware357, !21, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 105, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware358, !23, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 106, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware359, !25, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 107, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware360, !27, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 108, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware361, !29, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 109, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware362, !31, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 110, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware363, !33, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 111, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware364, !35, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 112, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware365, !37, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 113, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware366, !39, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 114, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware367, !41, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 115, i32 1}
!42 = !{ptr @__ksymtab_atmel_open, !43, !"__ksymtab_atmel_open", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1303, i32 1}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1346, i32 4}
!46 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @atmel_open._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @atmel_open._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1509, i32 3}
!52 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @init_atmel_card._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @init_atmel_card._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @init_atmel_card.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1569, i32 2}
!57 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @init_atmel_card.__key.6, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1570, i32 2}
!60 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @init_atmel_card.__key.8, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1571, i32 2}
!63 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1585, i32 3}
!66 = !{ptr @init_atmel_card._entry.10, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @init_atmel_card._entry_ptr.12, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1589, i32 7}
!70 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1604, i32 31}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1606, i32 3}
!75 = !{ptr @init_atmel_card._entry.16, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @init_atmel_card._entry_ptr.18, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1608, i32 2}
!79 = !{ptr @init_atmel_card._entry.19, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @init_atmel_card._entry_ptr.21, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_init_atmel_card, !82, !"__ksymtab_init_atmel_card", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1622, i32 1}
!83 = !{ptr @__ksymtab_stop_atmel_card, !84, !"__ksymtab_stop_atmel_card", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1642, i32 1}
!85 = !{ptr @__param_str_firmware, !8, !"__param_str_firmware", i1 false, i1 false}
!86 = !{ptr @firmware, !87, !"firmware", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 81, i32 14}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 564, i32 48}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 565, i32 34}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 566, i32 35}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 567, i32 37}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 568, i32 38}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 569, i32 35}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 570, i32 35}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 571, i32 36}
!104 = !{ptr @channel_table, !105, !"channel_table", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 564, i32 3}
!106 = !{ptr @atmel_netdev_ops, !107, !"atmel_netdev_ops", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1485, i32 36}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!110 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!115 = !{ptr @service_interrupt.irq_order, !116, !"irq_order", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1160, i32 18}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1188, i32 4}
!119 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @service_interrupt._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @service_interrupt._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @service_interrupt._entry.35, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1208, i32 4}
!124 = !{ptr @service_interrupt._entry_ptr.36, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1239, i32 4}
!127 = !{ptr @service_interrupt._entry.37, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @service_interrupt._entry_ptr.39, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1255, i32 4}
!131 = !{ptr @service_interrupt._entry.40, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @service_interrupt._entry_ptr.42, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @atmel_basic_rates, !134, !"atmel_basic_rates", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 558, i32 11}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 4065, i32 3}
!137 = !{ptr @atmel_send_command_wait._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @atmel_send_command_wait._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 4119, i32 3}
!141 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @atmel_set_mib._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @atmel_set_mib._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 4134, i32 3}
!146 = !{ptr @atmel_get_mib._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @atmel_get_mib._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1407, i32 16}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1411, i32 7}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1418, i32 16}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1420, i32 18}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1422, i32 18}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1426, i32 8}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1429, i32 8}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1432, i32 8}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1435, i32 8}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1443, i32 17}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1444, i32 17}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1445, i32 17}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1446, i32 23}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1446, i32 30}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1447, i32 17}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1448, i32 21}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1448, i32 29}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1453, i32 7}
!184 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1456, i32 7}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1459, i32 7}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1462, i32 7}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1465, i32 7}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1468, i32 7}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1471, i32 7}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1474, i32 7}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 1480, i32 16}
!200 = !{ptr @atmel_handler_def, !201, !"atmel_handler_def", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2613, i32 36}
!202 = !{ptr @atmel_handler, !203, !"atmel_handler", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2516, i32 25}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2009, i32 15}
!206 = !{ptr @atmel_set_wap.any, !207, !"any", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2473, i32 18}
!208 = !{ptr @atmel_set_wap.off, !209, !"off", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2474, i32 18}
!210 = !{ptr @atmel_private_handler, !211, !"atmel_private_handler", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2575, i32 25}
!212 = !{ptr @atmel_private_args, !213, !"atmel_private_args", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 2592, i32 34}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3695, i32 4}
!216 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @probe_atmel_card._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @probe_atmel_card._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @probe_atmel_card.default_mac, !220, !"default_mac", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3734, i32 20}
!221 = !{ptr @.str.77, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3737, i32 4}
!223 = !{ptr @probe_atmel_card._entry.76, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @probe_atmel_card._entry_ptr.78, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @mac_reader, !226, !"mac_reader", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 394, i32 11}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3601, i32 3}
!229 = !{ptr @.str.80, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @atmel_wakeup_firmware._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @atmel_wakeup_firmware._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3606, i32 3}
!234 = !{ptr @atmel_wakeup_firmware._entry.81, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @atmel_wakeup_firmware._entry_ptr.83, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3629, i32 3}
!238 = !{ptr @atmel_wakeup_firmware._entry.84, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @atmel_wakeup_firmware._entry_ptr.86, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.88, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3637, i32 3}
!242 = !{ptr @atmel_wakeup_firmware._entry.87, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @atmel_wakeup_firmware._entry_ptr.89, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.91, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3642, i32 3}
!246 = !{ptr @atmel_wakeup_firmware._entry.90, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @atmel_wakeup_firmware._entry_ptr.92, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3870, i32 3}
!250 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3871, i32 3}
!252 = distinct !{null, !253, !"firmware_modifier", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3869, i32 15}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3890, i32 6}
!256 = !{ptr @.str.96, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @reset_atmel_card._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @reset_atmel_card._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.98, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3893, i32 6}
!261 = !{ptr @reset_atmel_card._entry.97, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @reset_atmel_card._entry_ptr.99, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.100, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3896, i32 32}
!265 = !{ptr @.str.102, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3900, i32 6}
!267 = !{ptr @reset_atmel_card._entry.101, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @reset_atmel_card._entry_ptr.103, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3918, i32 39}
!271 = !{ptr @.str.106, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3928, i32 6}
!273 = !{ptr @reset_atmel_card._entry.105, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @reset_atmel_card._entry_ptr.107, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.109, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 3999, i32 4}
!277 = !{ptr @reset_atmel_card._entry.108, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @reset_atmel_card._entry_ptr.110, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.111, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 90, i32 24}
!281 = !{ptr @.str.112, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 90, i32 42}
!283 = !{ptr @.str.113, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 91, i32 25}
!285 = !{ptr @.str.114, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 92, i32 25}
!287 = !{ptr @.str.115, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 93, i32 28}
!289 = !{ptr @.str.116, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 94, i32 24}
!291 = !{ptr @.str.117, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 95, i32 28}
!293 = !{ptr @.str.118, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 96, i32 29}
!295 = !{ptr @.str.119, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 97, i32 24}
!297 = !{ptr @fw_table, !298, !"fw_table", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/atmel/atmel.c", i32 89, i32 3}
!299 = !{!"sp"}
!300 = !{i32 1, !"wchar_size", i32 2}
!301 = !{i32 1, !"min_enum_size", i32 4}
!302 = !{i32 8, !"branch-target-enforcement", i32 0}
!303 = !{i32 8, !"sign-return-address", i32 0}
!304 = !{i32 8, !"sign-return-address-all", i32 0}
!305 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"uwtable", i32 1}
!307 = !{i32 7, !"frame-pointer", i32 2}
!308 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!309 = !{i64 2157274610}
!310 = !{i64 4328124}
!311 = !{i64 2157273177}
!312 = !{i64 4328547}
!313 = !{i64 2157341550}
!314 = !{i64 4328324}
!315 = !{i64 2157342237}
!316 = !{i64 4328942}
!317 = !{i64 2157272783}
!318 = !{i64 2157274180}
!319 = !{i64 2157343635}
!320 = !{i64 2157344323}
!321 = !{!"auto-init"}
!322 = distinct !{!322, !323}
!323 = !{!"llvm.loop.peeled.count", i32 1}
!324 = !{i64 2152816030, i64 2152816055}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 5311585}
!327 = !{i64 5311782}
!328 = !{i64 2152797015}
!329 = !{i64 2157338842}
!330 = !{i64 2157339768}
!331 = !{i64 2157340032}
