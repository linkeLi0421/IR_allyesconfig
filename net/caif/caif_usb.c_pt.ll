; ModuleID = '/llk/IR_all_yes/net/caif/caif_usb.c_pt.bc'
source_filename = "../net/caif/caif_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.caif_dev_common = type { ptr, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.cfusbl = type { %struct.cflayer, [14 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.caif_payload_info = type { ptr, i16, i16 }

@__UNIQUE_ID_file346 = internal constant [32 x i8] c"caif_usb.file=net/caif/caif_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [21 x i8] c"caif_usb.license=GPL\00", section ".modinfo", align 1
@caif_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cfusbl_device_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@caif_usb_type = internal global %struct.packet_type { i16 -30539, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__initcall__kmod_caif_usb__350_211_cfusbl_init6 = internal global ptr @cfusbl_init, section ".initcall6.init", align 4
@__exitcall_cfusbl_exit = internal global ptr @cfusbl_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdc_ncm\00", [24 x i8] zeroinitializer }, align 32
@cfusbl_device_notify.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caif_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfusbl_device_notify\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/caif/caif_usb.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"USB CDC NCM device VID:0x%4x PID:0x%4x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"caif_usb:%s(): USB CDC NCM device VID:0x%4x PID:0x%4x\0A\00", [41 x i8] zeroinitializer }, align 32
@cfusbl_device_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014caif_usb:%s(): USB device uses more than one tx queue\0A\00", [39 x i8] zeroinitializer }, align 32
@cfusbl_device_notify._entry_ptr = internal global ptr @cfusbl_device_notify._entry, section ".printk_index", align 4
@pack_added = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usb%d\00", [26 x i8] zeroinitializer }, align 32
@cfusbl_create.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cfusbl_create\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"caif ethernet TX-header dst:%pM src:%pM type:%02x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"caif_usb:%s(): caif ethernet TX-header dst:%pM src:%pM type:%02x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfusbl_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014caif_usb:%s(): Headroom too small\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfusbl_transmit\00", [16 x i8] zeroinitializer }, align 32
@cfusbl_transmit._entry_ptr = internal global ptr @cfusbl_transmit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"caif_device_notifier\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 195, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 139, i32 46 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 145, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 176, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"pack_added\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 98, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 111, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [23 x i8] c"../net/caif/caif_usb.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 65, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_cfusbl_exit, ptr @__initcall__kmod_caif_usb__350_211_cfusbl_init6, ptr @cfusbl_device_notify._entry, ptr @cfusbl_device_notify._entry_ptr, ptr @cfusbl_exit, ptr @cfusbl_transmit._entry, ptr @cfusbl_transmit._entry_ptr, ptr @caif_device_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pack_added, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfusbl_device_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pack_added to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfusbl_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cfusbl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @caif_device_notifier) #10
  tail call void @dev_remove_pack(ptr noundef nonnull @caif_usb_type) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cfusbl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @caif_device_notifier) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfusbl_device_notify(ptr nocapture noundef readnone %me, i32 noundef %what, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %common = alloca %struct.caif_dev_common, align 4
  %layer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %common) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layer) #10
  %2 = ptrtoint ptr %layer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %layer, align 4, !annotation !47
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(8) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.end, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfusbl_device_notify.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfusbl_device_notify, %do.end)) #10
          to label %if.then16 [label %do.end], !srcloc !48

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 7
  %11 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idVendor, align 8
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 8
  %14 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idProduct, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv18 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfusbl_device_notify.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv18) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %idVendor21 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 7
  %17 = ptrtoint ptr %idVendor21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idVendor21, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13308, i16 %18)
  %cmp23 = icmp eq i16 %18, -13308
  br i1 %cmp23, label %land.lhs.true25, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true25:                                  ; preds = %do.end
  %idProduct27 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 8
  %19 = ptrtoint ptr %idProduct27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idProduct27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3875, i16 %20)
  %cmp29 = icmp eq i16 %20, 3875
  br i1 %cmp29, label %if.end32, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true25
  %21 = zext i32 %what to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %what, label %if.end32.cleanup_crit_edge [
    i32 6, label %if.then35
    i32 5, label %if.end40
  ]

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @module_put(ptr noundef null) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  tail call void @__module_get(ptr noundef null) #10
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %22 = call ptr @memset(ptr %common, i32 0, i32 20)
  %23 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %call41 = tail call fastcc ptr @cfusbl_create(i32 noundef %24, ptr noundef %26, ptr noundef %broadcast)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp45 = icmp ugt i32 %28, 1
  br i1 %cmp45, label %do.end50, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.end44.if.end53_crit_edge
  %call54 = call i32 @caif_enroll_dev(ptr noundef %1, ptr noundef nonnull %common, ptr noundef nonnull %call41, i32 noundef 4, ptr noundef nonnull %layer, ptr noundef getelementptr inbounds (%struct.packet_type, ptr @caif_usb_type, i32 0, i32 4)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %err

if.end57:                                         ; preds = %if.end53
  %.b89 = load i1, ptr @pack_added, align 1
  br i1 %.b89, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_add_pack(ptr noundef nonnull @caif_usb_type) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57.if.end60_crit_edge
  store i1 true, ptr @pack_added, align 1
  %29 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %layer, align 4
  %name61 = getelementptr inbounds %struct.cflayer, ptr %30, i32 0, i32 8
  %call65 = call i32 @strlcpy(ptr noundef %name61, ptr noundef %1, i32 noundef 16) #10
  br label %cleanup

err:                                              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call41) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end60, %if.end40.cleanup_crit_edge, %if.then35, %if.end32.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %err ], [ 0, %if.end60 ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.then35 ], [ -12, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layer) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %common) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cfusbl_create(i32 noundef %phyid, ptr nocapture noundef readonly %ethaddr, ptr nocapture noundef readonly %braddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 68) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = call ptr @memset(ptr %call7.i, i32 0, i32 52)
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfusbl_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfusbl_transmit, ptr %transmit, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %call7.i, i32 0, i32 5
  %4 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cfusbl_ctrlcmd, ptr %ctrlcmd, align 8
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i, i32 0, i32 8
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %phyid)
  %id = getelementptr inbounds %struct.cflayer, ptr %call7.i, i32 0, i32 7
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %phyid, ptr %id, align 8
  %arrayidx = getelementptr %struct.cfusbl, ptr %call7.i, i32 0, i32 1, i32 6
  %add.ptr1.i = getelementptr %struct.cfusbl, ptr %call7.i, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %ethaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ethaddr, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %add.ptr.i48 = getelementptr i8, ptr %ethaddr, i32 4
  %9 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i48, align 2
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  %arrayidx10 = getelementptr %struct.cfusbl, ptr %call7.i, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -75, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.cfusbl, ptr %call7.i, i32 0, i32 1, i32 13
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -120, ptr %arrayidx12, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfusbl_create.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfusbl_create, %cleanup)) #10
          to label %if.then19 [label %cleanup], !srcloc !48

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_eth_hdr = getelementptr inbounds %struct.cfusbl, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 8
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12, align 1
  %conv28 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfusbl_create.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %tx_eth_hdr, ptr noundef %arrayidx, i32 noundef %conv, i32 noundef %conv28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caif_enroll_dev(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfusbl_receive(ptr nocapture noundef readonly %layr, ptr noundef %pkt) #2 align 64 {
entry:
  %hpad = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hpad) #10
  %0 = ptrtoint ptr %hpad to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hpad, align 1, !annotation !47
  %call = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %hpad, i16 noundef zeroext 1) #10
  %1 = ptrtoint ptr %hpad to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hpad, align 1
  %conv = zext i8 %2 to i16
  %call1 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef null, i16 noundef zeroext %conv) #10
  %3 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layr, align 4
  %receive = getelementptr inbounds %struct.cflayer, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %receive, align 4
  %call3 = call i32 %6(ptr noundef %4, ptr noundef %pkt) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hpad) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfusbl_transmit(ptr noundef %layr, ptr noundef %pkt) #2 align 64 {
entry:
  %hpad = alloca i8, align 1
  %zeros = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hpad) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zeros) #10
  %0 = ptrtoint ptr %zeros to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %zeros, align 4
  %call = tail call ptr @cfpkt_tonative(ptr noundef %pkt) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %network_header.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2048, ptr %protocol, align 8
  %call1 = tail call ptr @cfpkt_info(ptr noundef %pkt) #10
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdr_len, align 4
  %9 = trunc i16 %8 to i8
  %10 = add i8 %9, 1
  %conv2 = and i8 %10, 3
  %11 = ptrtoint ptr %hpad to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2, ptr %hpad, align 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i34 = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i35 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i36 = sub i32 %sub.ptr.lhs.cast.i34, %sub.ptr.rhs.cast.i35
  %conv4 = zext i8 %conv2 to i32
  %add5 = add nuw nsw i32 %conv4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i36, i32 %add5)
  %cmp = icmp ult i32 %sub.ptr.sub.i36, %add5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #14
  tail call void @kfree_skb_reason(ptr noundef %call, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memset(ptr %zeros, i32 0, i32 %conv4)
  %conv11 = zext i8 %conv2 to i16
  %call12 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %zeros, i16 noundef zeroext %conv11) #10
  %call13 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %hpad, i16 noundef zeroext 1) #10
  %tx_eth_hdr = getelementptr inbounds %struct.cfusbl, ptr %layr, i32 0, i32 1
  %call15 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef %tx_eth_hdr, i16 noundef zeroext 14) #10
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %17 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transmit, align 4
  %call17 = call i32 %20(ptr noundef %18, ptr noundef %pkt) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call17, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zeros) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hpad) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfusbl_ctrlcmd(ptr nocapture noundef readonly %layr, i32 noundef %ctrl, i32 noundef %phyid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrlcmd, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void %3(ptr noundef nonnull %1, i32 noundef %ctrl, i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_tonative(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_file346, !1, !"__UNIQUE_ID_file346", i1 false, i1 false}
!1 = !{!"../net/caif/caif_usb.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_license347, !1, !"__UNIQUE_ID_license347", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_caif_usb__350_211_cfusbl_init6, !4, !"__initcall__kmod_caif_usb__350_211_cfusbl_init6", i1 false, i1 false}
!4 = !{!"../net/caif/caif_usb.c", i32 211, i32 1}
!5 = !{ptr @__exitcall_cfusbl_exit, !6, !"__exitcall_cfusbl_exit", i1 false, i1 false}
!6 = !{!"../net/caif/caif_usb.c", i32 212, i32 1}
!7 = !{ptr @caif_device_notifier, !8, !"caif_device_notifier", i1 false, i1 false}
!8 = !{!"../net/caif/caif_usb.c", i32 195, i32 30}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/caif/caif_usb.c", i32 139, i32 46}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/caif/caif_usb.c", i32 145, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cfusbl_device_notify.__UNIQUE_ID_ddebug349, !12, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!17 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/caif/caif_usb.c", i32 176, i32 3}
!20 = !{ptr @cfusbl_device_notify._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cfusbl_device_notify._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/caif/caif_usb.c", i32 98, i32 49}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/caif/caif_usb.c", i32 111, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cfusbl_create.__UNIQUE_ID_ddebug348, !25, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/caif/caif_usb.c", i32 65, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cfusbl_transmit._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cfusbl_transmit._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"pack_added", i1 false, i1 false}
!35 = !{!"../net/caif/caif_usb.c", i32 36, i32 13}
!36 = !{ptr @caif_usb_type, !37, !"caif_usb_type", i1 false, i1 false}
!37 = !{!"../net/caif/caif_usb.c", i32 123, i32 27}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i64 2148956945, i64 2148956950, i64 2148956963, i64 2148957007, i64 2148957041, i64 2148957062}
