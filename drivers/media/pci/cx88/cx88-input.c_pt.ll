; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-input.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx88_ir_start\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_ir_start\09\09\09\09"
module asm "\09.long\09__crc_cx88_ir_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_ir_start:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_ir_start\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_ir_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_ir_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_ir_stop\09\09\09\09"
module asm "\09.long\09__crc_cx88_ir_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_ir_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_ir_stop\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_ir_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx88_IR = type { ptr, ptr, i32, [32 x i8], [32 x i8], i32, i32, %struct.hrtimer, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.153, i8, i8 }
%union.anon.153 = type { i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.IR_i2c = type { ptr, ptr, ptr, i8, i32, %struct.delayed_work, [32 x i8], ptr, ptr, %struct.mutex, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }

@__param_str_ir_samplerate = internal constant [21 x i8] c"cx88xx.ir_samplerate\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ir_samplerate = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_ir_samplerate = internal constant %struct.kernel_param { ptr @__param_str_ir_samplerate, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @ir_samplerate } }, section "__param", align 4
@__UNIQUE_ID_ir_sampleratetype385 = internal constant [35 x i8] c"cx88xx.parmtype=ir_samplerate:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_samplerate386 = internal constant [66 x i8] c"cx88xx.parm=ir_samplerate:IR samplerate in kHz, 1 - 20, default 4\00", section ".modinfo", align 1
@__param_str_ir_debug = internal constant [16 x i8] c"cx88xx.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype387 = internal constant [29 x i8] c"cx88xx.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug388 = internal constant [48 x i8] c"cx88xx.parm=ir_debug:enable debug messages [IR]\00", section ".modinfo", align 1
@__kstrtab_cx88_ir_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_ir_start = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_ir_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_ir_start to i32), ptr @__kstrtab_cx88_ir_start, ptr @__kstrtabns_cx88_ir_start }, section "___ksymtab+cx88_ir_start", align 4
@__kstrtab_cx88_ir_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_ir_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_ir_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_ir_stop to i32), ptr @__kstrtab_cx88_ir_stop, ptr @__kstrtabns_cx88_ir_stop }, section "___ksymtab+cx88_ir_stop", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-dntv-live-dvb-t\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-cinergy-1400\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-winfast\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-iodata-bctv7e\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-pixelview-mk12\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-pixelview-new\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-pixelview\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc-adstech-dvb-t-pci\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-msi-tvanywhere\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-avertv-303\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tbs-nec\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-tevii-nec\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-dntv-live-dvbt-pro\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-norwood\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-npgtech\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-pinnacle-pctv-hd\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc-powercolor-real-angel\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-twinhan1027\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx88 IR (%s)\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cx88xx\00", [25 x i8] zeroinitializer }, align 32
@cx88_i2c_init_ir.default_addr_list = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 24, i16 107, i16 113, i16 -2], [24 x i8] zeroinitializer }, align 32
@cx88_i2c_init_ir.pvr2000_addr_list = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 24, i16 26, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx88 Leadtek PVR 2000 remote\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_z8f0811_haup\00", [16 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author391 = internal constant [53 x i8] c"cx88xx.author=Gerd Knorr, Pavel Machek, Chris Pascoe\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [71 x i8] c"cx88xx.description=input driver for cx88 GPIO-based IR remote controls\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [42 x i8] c"cx88xx.file=drivers/media/pci/cx88/cx88xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [19 x i8] c"cx88xx.license=GPL\00", section ".modinfo", align 1
@cx88_ir_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s IR: Missed ticks %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx88_ir_work\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/cx88/cx88-input.c\00", [60 x i8] zeroinitializer }, align 32
@cx88_ir_work._entry_ptr = internal global ptr @cx88_ir_work._entry, section ".printk_index", align 4
@cx88_ir_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.28, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s IR: irq gpio=0x%x code=%d | %s%s%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx88_ir_handle_key\00", [45 x i8] zeroinitializer }, align 32
@cx88_ir_handle_key._entry_ptr = internal global ptr @cx88_ir_handle_key._entry, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" down\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" up\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_key_pvr2000._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.28, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017cx88 IR: read error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_key_pvr2000\00", [16 x i8] zeroinitializer }, align 32
@get_key_pvr2000._entry_ptr = internal global ptr @get_key_pvr2000._entry, section ".printk_index", align 4
@get_key_pvr2000._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.28, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_key_pvr2000._entry_ptr.39 = internal global ptr @get_key_pvr2000._entry.38, section ".printk_index", align 4
@get_key_pvr2000._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.28, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx88 IR: IR Key/Flags: (0x%02x/0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@get_key_pvr2000._entry_ptr.42 = internal global ptr @get_key_pvr2000._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [53 x i64] [i64 51, i64 32, i64 1, i64 5, i64 6, i64 7, i64 11, i64 14, i64 16, i64 18, i64 22, i64 23, i64 26, i64 27, i64 29, i64 30, i64 35, i64 36, i64 37, i64 38, i64 40, i64 42, i64 43, i64 47, i64 50, i64 51, i64 53, i64 54, i64 58, i64 61, i64 62, i64 66, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 80, i64 81, i64 82, i64 83, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 35, i64 50, i64 61, i64 81, i64 87, i64 88, i64 89, i64 90]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 11, i64 27, i64 54]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"ir_samplerate\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 48, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 52, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 283, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 290, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 304, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 312, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 330, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 345, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 354, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 361, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 368, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 375, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 383, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 396, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 402, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 406, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 410, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 417, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 423, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 427, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 433, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 459, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 460, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 475, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"default_addr_list\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 588, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"pvr2000_addr_list\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 592, i32 30 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 603, i32 21 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 608, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 611, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 628, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 177, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 115, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 562, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 572, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [39 x i8] c"../drivers/media/pci/cx88/cx88-input.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 576, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_ir_debug388, ptr @__UNIQUE_ID_ir_debugtype387, ptr @__UNIQUE_ID_ir_samplerate386, ptr @__UNIQUE_ID_ir_sampleratetype385, ptr @__UNIQUE_ID_license394, ptr @__ksymtab_cx88_ir_start, ptr @__ksymtab_cx88_ir_stop, ptr @__param_ir_debug, ptr @__param_ir_samplerate, ptr @cx88_ir_handle_key._entry, ptr @cx88_ir_handle_key._entry_ptr, ptr @cx88_ir_work._entry, ptr @cx88_ir_work._entry_ptr, ptr @get_key_pvr2000._entry, ptr @get_key_pvr2000._entry.38, ptr @get_key_pvr2000._entry.40, ptr @get_key_pvr2000._entry_ptr, ptr @get_key_pvr2000._entry_ptr.39, ptr @get_key_pvr2000._entry_ptr.42, ptr @ir_samplerate, ptr @ir_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @cx88_i2c_init_ir.default_addr_list, ptr @cx88_i2c_init_ir.pvr2000_addr_list, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.41], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_samplerate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init_ir.default_addr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init_ir.pvr2000_addr_list to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_ir_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_ir_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pvr2000._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pvr2000._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pvr2000._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_ir_start(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  %users = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @__cx88_ir_start(ptr noundef %core)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cx88_ir_start(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ir1 = getelementptr inbounds %struct.cx88_core, ptr %priv, i32 0, i32 40
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %polling = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 1) #7
  %function = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cx88_ir_work, ptr %function, align 8
  %5 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %polling, align 8
  %mul = mul i32 %6, 1000000
  %conv.i = zext i32 %mul to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %sampling = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %sampling to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sampling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %priv, i32 0, i32 10
  %9 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pci_irqmask, align 8
  %or = or i32 %10, 262144
  store i32 %or, ptr %pci_irqmask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %11 = load i32, ptr @ir_samplerate, align 4
  %mul12 = mul i32 %11, 3404422
  %12 = tail call i32 @llvm.bswap.i32(i32 %mul12)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %priv, i32 0, i32 7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %14, i32 880660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr17 = getelementptr i32, ptr %16, i32 880661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 83886080) #7, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_ir_stop(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  %users = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool.not.i = icmp eq ptr %core, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  %tobool2.not.i = icmp eq ptr %1, null
  %or.cond2 = select i1 %or.cond, i1 true, i1 %tobool2.not.i
  br i1 %or.cond2, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %sampling.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sampling.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sampling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %do.body.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %7, i32 880661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !121
  %pci_irqmask.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 10
  %8 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pci_irqmask.i, align 8
  %and.i = and i32 %9, -262145
  store i32 %and.i, ptr %pci_irqmask.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.body.i, %if.end.i.if.end6.i_crit_edge
  %polling.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %polling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end_crit_edge, label %if.then8.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end6.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_ir_init(ptr noundef %core, ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #10
  %call1 = tail call ptr @rc_allocate_device(i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.err_out_free_crit_edge, label %if.end

entry.err_out_free_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %dev3, align 4
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boardnr, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.err_out_free_crit_edge [
    i32 23, label %if.end.sw.bb_crit_edge
    i32 14, label %if.end.sw.bb_crit_edge241
    i32 43, label %if.end.sw.bb_crit_edge242
    i32 30, label %sw.bb4
    i32 1, label %if.end.sw.bb5_crit_edge
    i32 18, label %if.end.sw.bb5_crit_edge243
    i32 38, label %if.end.sw.bb5_crit_edge244
    i32 37, label %if.end.sw.bb5_crit_edge245
    i32 40, label %if.end.sw.bb5_crit_edge246
    i32 53, label %if.end.sw.bb5_crit_edge247
    i32 68, label %if.end.sw.bb5_crit_edge248
    i32 69, label %if.end.sw.bb5_crit_edge249
    i32 22, label %if.end.sw.bb5_crit_edge250
    i32 47, label %if.end.sw.bb5_crit_edge251
    i32 80, label %if.end.sw.bb5_crit_edge252
    i32 51, label %if.end.sw.bb7_crit_edge
    i32 82, label %if.end.sw.bb7_crit_edge253
    i32 81, label %if.end.sw.bb7_crit_edge254
    i32 88, label %if.end.sw.bb7_crit_edge255
    i32 87, label %if.end.sw.bb7_crit_edge256
    i32 5, label %if.end.sw.bb12_crit_edge
    i32 35, label %if.end.sw.bb12_crit_edge257
    i32 61, label %if.end.sw.bb12_crit_edge258
    i32 89, label %if.end.sw.bb12_crit_edge259
    i32 90, label %if.end.sw.bb12_crit_edge260
    i32 26, label %sw.bb17
    i32 11, label %if.end.land.lhs.true_crit_edge
    i32 27, label %if.end.land.lhs.true_crit_edge261
    i32 66, label %if.end.sw.bb25_crit_edge
    i32 74, label %if.end.sw.bb25_crit_edge262
    i32 16, label %sw.bb30
    i32 29, label %sw.bb35
    i32 7, label %sw.bb40
    i32 36, label %if.end.sw.bb45_crit_edge
    i32 6, label %if.end.sw.bb45_crit_edge263
    i32 71, label %if.end.sw.bb50_crit_edge
    i32 76, label %if.end.sw.bb50_crit_edge264
    i32 72, label %if.end.sw.bb50_crit_edge265
    i32 77, label %if.end.sw.bb50_crit_edge266
    i32 75, label %if.end.sw.bb50_crit_edge267
    i32 83, label %if.end.sw.bb50_crit_edge268
    i32 78, label %if.end.sw.bb50_crit_edge269
    i32 86, label %if.end.sw.bb52_crit_edge
    i32 70, label %if.end.sw.bb52_crit_edge270
    i32 73, label %if.end.sw.bb52_crit_edge271
    i32 42, label %sw.bb54
    i32 54, label %sw.bb56
    i32 50, label %sw.bb61
    i32 58, label %sw.bb65
    i32 62, label %sw.bb67
    i32 85, label %sw.bb71
  ]

if.end.sw.bb52_crit_edge271:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end.sw.bb52_crit_edge270:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end.sw.bb52_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end.sw.bb50_crit_edge269:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge268:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge267:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge266:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge265:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge264:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb45_crit_edge263:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45

if.end.sw.bb45_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45

if.end.sw.bb25_crit_edge262:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

if.end.sw.bb25_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

if.end.land.lhs.true_crit_edge261:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.sw.bb12_crit_edge260:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge259:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge258:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge257:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb7_crit_edge256:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge255:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge254:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge253:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb5_crit_edge252:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge251:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge250:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge249:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge248:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge247:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge246:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge245:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge244:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge243:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb_crit_edge242:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge241:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.err_out_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge241, %if.end.sw.bb_crit_edge242
  %gpio_addr = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %gpio_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3473428, ptr %gpio_addr, align 8
  %mask_keycode = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %mask_keycode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %mask_keycode, align 8
  %mask_keyup = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %mask_keyup to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 96, ptr %mask_keyup, align 8
  %polling = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %polling to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %polling, align 8
  br label %if.end81

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sampling = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %sampling to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 60164, ptr %sampling, align 4
  br label %if.end81

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge243, %if.end.sw.bb5_crit_edge244, %if.end.sw.bb5_crit_edge245, %if.end.sw.bb5_crit_edge246, %if.end.sw.bb5_crit_edge247, %if.end.sw.bb5_crit_edge248, %if.end.sw.bb5_crit_edge249, %if.end.sw.bb5_crit_edge250, %if.end.sw.bb5_crit_edge251, %if.end.sw.bb5_crit_edge252
  %sampling6 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %sampling6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %sampling6, align 4
  br label %if.end81

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge253, %if.end.sw.bb7_crit_edge254, %if.end.sw.bb7_crit_edge255, %if.end.sw.bb7_crit_edge256
  %gpio_addr8 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %gpio_addr8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3473424, ptr %gpio_addr8, align 8
  %mask_keycode9 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %mask_keycode9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2296, ptr %mask_keycode9, align 8
  %mask_keyup10 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %mask_keyup10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %mask_keyup10, align 8
  %polling11 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %polling11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50, ptr %polling11, align 8
  br label %if.end81

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge257, %if.end.sw.bb12_crit_edge258, %if.end.sw.bb12_crit_edge259, %if.end.sw.bb12_crit_edge260
  %gpio_addr13 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %gpio_addr13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3473424, ptr %gpio_addr13, align 8
  %mask_keycode14 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %mask_keycode14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2296, ptr %mask_keycode14, align 8
  %mask_keyup15 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %mask_keyup15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %mask_keyup15, align 8
  %polling16 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %polling16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %polling16, align 8
  br label %if.end81

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr18 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %gpio_addr18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3473424, ptr %gpio_addr18, align 8
  %mask_keycode19 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %mask_keycode19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 253, ptr %mask_keycode19, align 8
  %mask_keydown = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %mask_keydown to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %mask_keydown, align 4
  %polling20 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %polling20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %polling20, align 8
  br label %if.end81

sw.bb25:                                          ; preds = %if.end.sw.bb25_crit_edge, %if.end.sw.bb25_crit_edge262
  %gpio_addr26 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %gpio_addr26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3473428, ptr %gpio_addr26, align 8
  %mask_keycode27 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %mask_keycode27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 63, ptr %mask_keycode27, align 8
  %mask_keyup28 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %mask_keyup28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %mask_keyup28, align 8
  %polling29 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %polling29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %polling29, align 8
  br label %if.end81

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr31 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %gpio_addr31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3473428, ptr %gpio_addr31, align 8
  %mask_keycode32 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %mask_keycode32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 31, ptr %mask_keycode32, align 8
  %mask_keyup33 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %mask_keyup33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 96, ptr %mask_keyup33, align 8
  %polling34 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %polling34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %polling34, align 8
  br label %if.end81

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr36 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %gpio_addr36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3473428, ptr %gpio_addr36, align 8
  %mask_keycode37 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %mask_keycode37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 191, ptr %mask_keycode37, align 8
  %mask_keyup38 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %mask_keyup38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %mask_keyup38, align 8
  %polling39 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %polling39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 50, ptr %polling39, align 8
  br label %if.end81

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr41 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %gpio_addr41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3473428, ptr %gpio_addr41, align 8
  %mask_keycode42 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %mask_keycode42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 31, ptr %mask_keycode42, align 8
  %mask_keyup43 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %37 = ptrtoint ptr %mask_keyup43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 64, ptr %mask_keyup43, align 8
  %polling44 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %polling44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %polling44, align 8
  br label %if.end81

sw.bb45:                                          ; preds = %if.end.sw.bb45_crit_edge, %if.end.sw.bb45_crit_edge263
  %gpio_addr46 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %gpio_addr46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3473432, ptr %gpio_addr46, align 8
  %mask_keycode47 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %mask_keycode47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 251, ptr %mask_keycode47, align 8
  %mask_keydown48 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 11
  %41 = ptrtoint ptr %mask_keydown48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %mask_keydown48, align 4
  %polling49 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %polling49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 50, ptr %polling49, align 8
  br label %if.end81

sw.bb50:                                          ; preds = %if.end.sw.bb50_crit_edge, %if.end.sw.bb50_crit_edge264, %if.end.sw.bb50_crit_edge265, %if.end.sw.bb50_crit_edge266, %if.end.sw.bb50_crit_edge267, %if.end.sw.bb50_crit_edge268, %if.end.sw.bb50_crit_edge269
  %sampling51 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %sampling51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 65280, ptr %sampling51, align 4
  br label %if.end81

sw.bb52:                                          ; preds = %if.end.sw.bb52_crit_edge, %if.end.sw.bb52_crit_edge270, %if.end.sw.bb52_crit_edge271
  %sampling53 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %sampling53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 65280, ptr %sampling53, align 4
  br label %if.end81

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sampling55 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %sampling55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65280, ptr %sampling55, align 4
  br label %if.end81

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr57 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %gpio_addr57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3473428, ptr %gpio_addr57, align 8
  %mask_keycode58 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %mask_keycode58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 14, ptr %mask_keycode58, align 8
  %mask_keyup59 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %mask_keyup59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %mask_keyup59, align 8
  %polling60 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %polling60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 50, ptr %polling60, align 8
  br label %if.end81

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr62 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %gpio_addr62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3473424, ptr %gpio_addr62, align 8
  %mask_keycode63 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %mask_keycode63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 250, ptr %mask_keycode63, align 8
  %polling64 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %polling64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 50, ptr %polling64, align 8
  br label %if.end81

sw.bb65:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sampling66 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %sampling66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %sampling66, align 4
  br label %if.end81

sw.bb67:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_addr68 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %54 = ptrtoint ptr %gpio_addr68 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3473432, ptr %gpio_addr68, align 8
  %mask_keycode69 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %mask_keycode69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 126, ptr %mask_keycode69, align 8
  %polling70 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %polling70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 100, ptr %polling70, align 8
  br label %if.end81

sw.bb71:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sampling72 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %sampling72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 65280, ptr %sampling72, align 4
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge261
  %gpio_addr22 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %gpio_addr22 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3473428, ptr %gpio_addr22, align 8
  %mask_keyup23 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 12
  %59 = ptrtoint ptr %mask_keyup23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %mask_keyup23, align 8
  %polling24 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %polling24 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10, ptr %polling24, align 8
  %mask_keycode77 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %mask_keycode77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask_keycode77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool78.not = icmp eq i32 %62, 0
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %mask_keycode77 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 63, ptr %mask_keycode77, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true.if.end81_crit_edge, %sw.bb71, %sw.bb67, %sw.bb65, %sw.bb61, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb45, %sw.bb40, %sw.bb35, %sw.bb30, %sw.bb25, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb
  %hardware_mask.0.ph240 = phi i32 [ 63, %if.then79 ], [ 63, %land.lhs.true.if.end81_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb4 ], [ 0, %sw.bb5 ], [ 0, %sw.bb7 ], [ 0, %sw.bb12 ], [ 0, %sw.bb17 ], [ 0, %sw.bb25 ], [ 0, %sw.bb30 ], [ 0, %sw.bb35 ], [ 0, %sw.bb40 ], [ 0, %sw.bb45 ], [ 0, %sw.bb50 ], [ 0, %sw.bb52 ], [ 0, %sw.bb54 ], [ 0, %sw.bb56 ], [ 0, %sw.bb61 ], [ 0, %sw.bb65 ], [ 0, %sw.bb67 ], [ 0, %sw.bb71 ]
  %rc_proto.0.ph239 = phi i64 [ 1024, %if.then79 ], [ 1024, %land.lhs.true.if.end81_crit_edge ], [ 2, %sw.bb ], [ 2, %sw.bb4 ], [ 2, %sw.bb5 ], [ 2, %sw.bb7 ], [ 2, %sw.bb12 ], [ 2, %sw.bb17 ], [ 2, %sw.bb25 ], [ 2, %sw.bb30 ], [ 2, %sw.bb35 ], [ 2, %sw.bb40 ], [ 2, %sw.bb45 ], [ 2, %sw.bb50 ], [ 2, %sw.bb52 ], [ 2, %sw.bb54 ], [ 2, %sw.bb56 ], [ 2, %sw.bb61 ], [ 2, %sw.bb65 ], [ 2, %sw.bb67 ], [ 2, %sw.bb71 ]
  %ir_codes.0.ph238 = phi ptr [ @.str.5, %if.then79 ], [ @.str.5, %land.lhs.true.if.end81_crit_edge ], [ @.str, %sw.bb ], [ @.str.1, %sw.bb4 ], [ @.str.2, %sw.bb5 ], [ @.str.3, %sw.bb7 ], [ @.str.3, %sw.bb12 ], [ @.str.4, %sw.bb17 ], [ @.str.6, %sw.bb25 ], [ @.str.7, %sw.bb30 ], [ @.str.8, %sw.bb35 ], [ @.str.9, %sw.bb40 ], [ @.str.10, %sw.bb45 ], [ @.str.11, %sw.bb50 ], [ @.str.12, %sw.bb52 ], [ @.str.13, %sw.bb54 ], [ @.str.14, %sw.bb56 ], [ @.str.15, %sw.bb61 ], [ @.str.16, %sw.bb65 ], [ @.str.17, %sw.bb67 ], [ @.str.18, %sw.bb71 ]
  %name = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 3
  %board = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23
  %64 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %board, align 8
  %call83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %65)
  %phys = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %66 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end81.pci_name.exit_crit_edge

if.end81.pci_name.exit_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end81.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %69, %if.end.i.i ], [ %67, %if.end81.pci_name.exit_crit_edge ]
  %call86 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i)
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 3
  %70 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %name, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 4
  %71 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5
  %72 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %version, align 2
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %74 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool92.not = icmp eq i16 %75, 0
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %vendor, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  br label %if.end102

if.else:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vendor97 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %77 = ptrtoint ptr %vendor97 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vendor97, align 8
  %vendor99 = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %vendor99 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %vendor99, align 2
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then93
  %.sink.in = phi ptr [ %device, %if.else ], [ %subsystem_device, %if.then93 ]
  %80 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %80)
  %.sink = load i16, ptr %.sink.in, align 2
  %81 = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %.sink, ptr %81, align 4
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %83 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dev103, ptr %parent, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 7
  %84 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ir_codes.0.ph238, ptr %map_name, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 6
  %85 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.21, ptr %driver_name, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 24
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %core, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 48
  %87 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @cx88_ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 49
  %88 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @cx88_ir_close, ptr %close, align 4
  %scancode_mask = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 22
  %89 = ptrtoint ptr %scancode_mask to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %hardware_mask.0.ph240, ptr %scancode_mask, align 4
  %sampling105 = getelementptr inbounds %struct.cx88_IR, ptr %call7.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %sampling105 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sampling105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool106.not = icmp eq i32 %91, 0
  br i1 %tobool106.not, label %if.else108, label %if.then107

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 34
  %92 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 10000, ptr %timeout, align 4
  br label %if.end109

if.else108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 13
  %93 = ptrtoint ptr %driver_type to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %driver_type, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 16
  %94 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %rc_proto.0.ph239, ptr %allowed_protocols, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %core, ptr %call7.i.i, align 8
  %ir111 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %96 = ptrtoint ptr %ir111 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %ir111, align 4
  %call112 = tail call i32 @rc_register_device(ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end109.cleanup_crit_edge, label %if.end109.err_out_free_crit_edge

if.end109.err_out_free_crit_edge:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out_free:                                     ; preds = %if.end109.err_out_free_crit_edge, %if.end.err_out_free_crit_edge, %entry.err_out_free_crit_edge
  %err.0 = phi i32 [ %call112, %if.end109.err_out_free_crit_edge ], [ -12, %entry.err_out_free_crit_edge ], [ -19, %if.end.err_out_free_crit_edge ]
  tail call void @rc_free_device(ptr noundef %call1) #7
  %ir116 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %97 = ptrtoint ptr %ir116 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %ir116, align 4
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end109.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out_free ], [ 0, %if.end109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx88_ir_open(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ir = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir, align 4
  %users = getelementptr inbounds %struct.cx88_IR, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %users, align 8
  %call = tail call fastcc i32 @__cx88_ir_start(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx88_ir_close(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ir = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir, align 4
  %users = getelementptr inbounds %struct.cx88_IR, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %users, align 8
  %6 = load ptr, ptr %ir, align 4
  %users2 = getelementptr inbounds %struct.cx88_IR, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %users2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %users2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp ne i32 %8, 0
  %tobool.not.i = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.not.i
  %tobool2.not.i = icmp eq ptr %6, null
  %or.cond5 = select i1 %or.cond, i1 true, i1 %tobool2.not.i
  br i1 %or.cond5, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %sampling.i = getelementptr inbounds %struct.cx88_IR, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %sampling.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sampling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %do.body.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %12, i32 880661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !121
  %pci_irqmask.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pci_irqmask.i, align 8
  %and.i = and i32 %14, -262145
  store i32 %and.i, ptr %pci_irqmask.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.body.i, %if.end.i.if.end6.i_crit_edge
  %polling.i = getelementptr inbounds %struct.cx88_IR, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %polling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end_crit_edge, label %if.then8.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.cx88_IR, ptr %6, i32 0, i32 7
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end6.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_ir_fini(ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %users.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %tobool.not.i.i = icmp eq ptr %core, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.cx88_ir_stop.exit_crit_edge, label %if.end.i.i

if.end.cx88_ir_stop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx88_ir_stop.exit

if.end.i.i:                                       ; preds = %if.end
  %sampling.i.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sampling.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sampling.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %do.body.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 880661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !121
  %pci_irqmask.i.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 10
  %8 = ptrtoint ptr %pci_irqmask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pci_irqmask.i.i, align 8
  %and.i.i = and i32 %9, -262145
  store i32 %and.i.i, ptr %pci_irqmask.i.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.body.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %polling.i.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %polling.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %polling.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cx88_ir_stop.exit_crit_edge, label %if.then8.i.i

if.end6.i.i.cx88_ir_stop.exit_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx88_ir_stop.exit

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i.i = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 7
  %call.i.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i.i) #7
  br label %cx88_ir_stop.exit

cx88_ir_stop.exit:                                ; preds = %if.then8.i.i, %if.end6.i.i.cx88_ir_stop.exit_crit_edge, %if.end.cx88_ir_stop.exit_crit_edge
  %dev = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @rc_unregister_device(ptr noundef %13) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %14 = ptrtoint ptr %ir1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ir1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cx88_ir_stop.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_ir_irq(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 40
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #7
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sampling = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %sampling to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sampling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 880662
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !124
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %7)
  %cmp = icmp eq i32 %7, -16777216
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %dev = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %idle = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %idle, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %ev, i32 0, i32 2
  %dev20 = getelementptr inbounds %struct.cx88_IR, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %samples.044 = phi i32 [ %8, %if.end6 ], [ %shl, %for.body.for.body_crit_edge ]
  %todo.043 = phi i32 [ 32, %if.end6 ], [ %sub22, %for.body.for.body_crit_edge ]
  %samples.0.lobit = lshr i32 %samples.044, 31
  %13 = trunc i32 %samples.0.lobit to i8
  %14 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.value = xor i8 %13, -1
  %bf.shl = shl i8 %bf.value, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %pulse, align 1
  %bf.lshr = and i8 %bf.value, 1
  %sext = add nsw i8 %bf.lshr, -1
  %neg = sext i8 %sext to i32
  %cond12 = xor i32 %samples.044, %neg
  %15 = call i32 @llvm.ctlz.i32(i32 %cond12, i1 false) #7, !range !127
  %16 = call i32 @llvm.umin.i32(i32 %todo.043, i32 %15)
  %mul = mul nuw nsw i32 %16, 1000
  %17 = load i32, ptr @ir_samplerate, align 4
  %div = udiv i32 %mul, %17
  %18 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %ev, align 8
  %19 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev20, align 4
  %call21 = call i32 @ir_raw_event_store_with_filter(ptr noundef %20, ptr noundef nonnull %ev) #7
  %shl = shl i32 %samples.044, %16
  %sub22 = sub i32 %todo.043, %16
  %cmp7.not = icmp eq i32 %sub22, 0
  br i1 %cmp7.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 4
  call void @ir_raw_event_handle(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_i2c_init_ir(ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 15
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.22, i32 noundef 20) #7
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %3 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cond = icmp eq i32 %4, 9
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41
  %name = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.23, ptr %name, align 4
  %type2 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 2
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1, ptr %type2, align 8
  %get_key = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 4
  %7 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @get_key_pvr2000, ptr %get_key, align 4
  %8 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.24, ptr %init_data, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %addr_list.0 = phi ptr [ @cx88_i2c_init_ir.pvr2000_addr_list, %sw.bb ], [ @cx88_i2c_init_ir.default_addr_list, %if.end.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %addr_list.0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr_list.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %10)
  %cmp5.not54 = icmp eq i16 %10, -2
  br i1 %cmp5.not54, label %sw.epilog.cleanup_crit_edge, label %for.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %init_data7 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41
  %board = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23
  %name17 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 1
  %type21 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 2
  %internal_get_key_func = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 41, i32 5
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addrp.055 = phi ptr [ %addr_list.0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %platform_data, align 4
  %12 = call ptr @memset(ptr %init_data7, i32 0, i32 32)
  %13 = ptrtoint ptr %addrp.055 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addrp.055, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 113, i16 %14)
  %cmp9 = icmp eq i16 %14, 113
  br i1 %cmp9, label %if.then11, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.25, i32 noundef 20) #7
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %board, align 8
  %17 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name17, align 4
  %18 = ptrtoint ptr %init_data7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.2, ptr %init_data7, align 8
  %19 = ptrtoint ptr %type21 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 786436, ptr %type21, align 8
  %20 = ptrtoint ptr %internal_get_key_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %internal_get_key_func, align 8
  %21 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init_data7, ptr %platform_data, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then11, %for.body.if.end25_crit_edge
  %22 = ptrtoint ptr %addrp.055 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addrp.055, align 2
  %call26 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adap, i16 noundef zeroext %23, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, -1
  br i1 %cmp27, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %addrp.055 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addrp.055, align 2
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %addr, align 2
  %call31 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end25
  %incdec.ptr = getelementptr i16, ptr %addrp.055, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %incdec.ptr, align 2
  %cmp5.not = icmp eq i16 %28, -2
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then29, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_pvr2000(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %call11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %5 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  br i1 %cmp12, label %do.body14, label %do.body26

do.body14:                                        ; preds = %if.end9
  br i1 %tobool15.not, label %do.body14.cleanup_crit_edge, label %do.end19

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %cleanup

do.body26:                                        ; preds = %if.end9
  %.pre = and i32 %call11, 255
  br i1 %tobool15.not, label %do.body26.do.end38_crit_edge, label %do.end31

do.body26.do.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %and34 = and i32 %call, 255
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %.pre, i32 noundef %and34) #11
  br label %do.end38

do.end38:                                         ; preds = %do.end31, %do.body26.do.end38_crit_edge
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %protocol, align 4
  %7 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.pre, ptr %scancode, align 4
  %8 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end19, %do.body14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end38 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %do.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx88_ir_work(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -88
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio.i, align 4
  %gpio_addr.i = getelementptr i8, ptr %timer, i32 48
  %4 = ptrtoint ptr %gpio_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_addr.i, align 8
  %shr.i = lshr i32 %5, 2
  %add.ptr.i = getelementptr i32, ptr %3, i32 %shr.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !124
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %boardnr.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %boardnr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boardnr.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %9, label %entry.sw.epilog.i_crit_edge [
    i32 50, label %sw.bb.i
    i32 35, label %entry.sw.bb11.i_crit_edge
    i32 81, label %entry.sw.bb11.i_crit_edge15
    i32 88, label %entry.sw.bb11.i_crit_edge16
    i32 87, label %entry.sw.bb11.i_crit_edge17
    i32 61, label %entry.sw.bb11.i_crit_edge18
    i32 89, label %entry.sw.bb11.i_crit_edge19
    i32 90, label %entry.sw.bb11.i_crit_edge20
  ]

entry.sw.bb11.i_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %12, i32 868357
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !124
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %and.i = and i32 %7, 2045
  %and10.i = and i32 %14, 239
  %add.i = add nuw nsw i32 %and10.i, %and.i
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %entry.sw.bb11.i_crit_edge, %entry.sw.bb11.i_crit_edge15, %entry.sw.bb11.i_crit_edge16, %entry.sw.bb11.i_crit_edge17, %entry.sw.bb11.i_crit_edge18, %entry.sw.bb11.i_crit_edge19, %entry.sw.bb11.i_crit_edge20
  %and12.i = and i32 %7, 1791
  %15 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %16, i32 868357
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %18 = lshr i32 %17, 16
  %and20.i = and i32 %18, 2304
  %or.i = or i32 %and20.i, %and12.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %auxgpio.0.i = phi i32 [ %or.i, %sw.bb11.i ], [ %14, %sw.bb.i ], [ %7, %entry.sw.epilog.i_crit_edge ]
  %gpio.0.i = phi i32 [ %or.i, %sw.bb11.i ], [ %add.i, %sw.bb.i ], [ %7, %entry.sw.epilog.i_crit_edge ]
  %polling.i = getelementptr i8, ptr %timer, i32 -8
  %19 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %polling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end23.i_crit_edge, label %if.then.i

sw.epilog.i.if.end23.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then.i:                                        ; preds = %sw.epilog.i
  %last_gpio.i = getelementptr i8, ptr %timer, i32 52
  %21 = ptrtoint ptr %last_gpio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_gpio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %auxgpio.0.i)
  %cmp.i = icmp eq i32 %22, %auxgpio.0.i
  br i1 %cmp.i, label %if.then.i.cx88_ir_handle_key.exit_crit_edge, label %if.end.i

if.then.i.cx88_ir_handle_key.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx88_ir_handle_key.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %last_gpio.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %auxgpio.0.i, ptr %last_gpio.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end.i, %sw.epilog.i.if.end23.i_crit_edge
  %mask_keycode.i = getelementptr i8, ptr %timer, i32 56
  %24 = ptrtoint ptr %mask_keycode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_keycode.i, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end4.i.i.do.body.i.i_crit_edge, %if.end23.i
  %data.addr.0.i.i = phi i32 [ %gpio.0.i, %if.end23.i ], [ %shr.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %mask.addr.0.i.i = phi i32 [ %25, %if.end23.i ], [ %shr5.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %vbit.0.i.i = phi i32 [ 1, %if.end23.i ], [ %vbit.1.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %value.0.i.i = phi i32 [ 0, %if.end23.i ], [ %value.2.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.addr.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %data.addr.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.i.i = select i1 %tobool2.not.i.i, i32 0, i32 %vbit.0.i.i
  %spec.select.i.i = or i32 %value.0.i.i, %or.i.i
  %shl.i.i = shl i32 %vbit.0.i.i, 1
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i, %do.body.i.i.if.end4.i.i_crit_edge
  %vbit.1.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %vbit.0.i.i, %do.body.i.i.if.end4.i.i_crit_edge ]
  %value.2.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %value.0.i.i, %do.body.i.i.if.end4.i.i_crit_edge ]
  %shr.i.i = lshr i32 %data.addr.0.i.i, 1
  %shr5.i.i = lshr i32 %mask.addr.0.i.i, 1
  %tobool6.not.i.i = icmp ult i32 %mask.addr.0.i.i, 2
  br i1 %tobool6.not.i.i, label %ir_extract_bits.exit.i, label %if.end4.i.i.do.body.i.i_crit_edge

if.end4.i.i.do.body.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

ir_extract_bits.exit.i:                           ; preds = %if.end4.i.i
  %26 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not.i = icmp eq i32 %26, 0
  br i1 %tobool25.not.i, label %ir_extract_bits.exit.i.do.end41.i_crit_edge, label %do.end.i

ir_extract_bits.exit.i.do.end41.i_crit_edge:      ; preds = %ir_extract_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41.i

do.end.i:                                         ; preds = %ir_extract_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %name.i = getelementptr inbounds %struct.cx88_core, ptr %28, i32 0, i32 3
  %cond.i = select i1 %tobool.not.i, ptr @.str.32, ptr @.str.31
  %mask_keydown.i = getelementptr i8, ptr %timer, i32 60
  %29 = ptrtoint ptr %mask_keydown.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask_keydown.i, align 4
  %and32.i = and i32 %30, %gpio.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond34.i = select i1 %tobool33.not.i, ptr @.str.34, ptr @.str.33
  %mask_keyup.i = getelementptr i8, ptr %timer, i32 64
  %31 = ptrtoint ptr %mask_keyup.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask_keyup.i, align 8
  %and35.i = and i32 %32, %gpio.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.34, ptr @.str.35
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, i32 noundef %gpio.0.i, i32 noundef %value.2.i.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond34.i, ptr noundef nonnull %cond37.i) #11
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end.i, %ir_extract_bits.exit.i.do.end41.i_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %boardnr43.i = getelementptr inbounds %struct.cx88_core, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %boardnr43.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boardnr43.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %36, label %if.else86.i [
    i32 54, label %if.then45.i
    i32 11, label %do.end41.i.if.then65.i_crit_edge
    i32 27, label %do.end41.i.if.then65.i_crit_edge21
  ]

do.end41.i.if.then65.i_crit_edge21:               ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

do.end41.i.if.then65.i_crit_edge:                 ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

if.then45.i:                                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio.i, align 4
  %add.ptr49.i = getelementptr i32, ptr %39, i32 868356
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %or56.i = tail call i32 @llvm.fshl.i32(i32 %value.2.i.i, i32 %40, i32 4) #7
  %dev.i = getelementptr i8, ptr %timer, i32 -84
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %conv.i = zext i32 %or56.i to i64
  tail call void @rc_keydown(ptr noundef %42, i32 noundef 0, i64 noundef %conv.i, i8 noundef zeroext 0) #7
  br label %cx88_ir_handle_key.exit

if.then65.i:                                      ; preds = %do.end41.i.if.then65.i_crit_edge, %do.end41.i.if.then65.i_crit_edge21
  %mask_keyup76.i = getelementptr i8, ptr %timer, i32 64
  %43 = ptrtoint ptr %mask_keyup76.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask_keyup76.i, align 8
  %and77.i = and i32 %44, %gpio.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %cmp78.i = icmp eq i32 %and77.i, 0
  br i1 %cmp78.i, label %if.then80.i, label %if.else83.i

if.then80.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  %or75.i = and i32 %value.2.i.i, 16777215
  %dev81.i = getelementptr i8, ptr %timer, i32 -84
  %45 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev81.i, align 4
  %conv82.i = zext i32 %or75.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %46, i32 noundef 10, i64 noundef %conv82.i, i8 noundef zeroext 0) #7
  br label %cx88_ir_handle_key.exit

if.else83.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev84.i = getelementptr i8, ptr %timer, i32 -84
  %47 = ptrtoint ptr %dev84.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev84.i, align 4
  tail call void @rc_keyup(ptr noundef %48) #7
  br label %cx88_ir_handle_key.exit

if.else86.i:                                      ; preds = %do.end41.i
  %mask_keydown87.i = getelementptr i8, ptr %timer, i32 60
  %49 = ptrtoint ptr %mask_keydown87.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask_keydown87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool88.not.i = icmp eq i32 %50, 0
  br i1 %tobool88.not.i, label %if.else99.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.else86.i
  %and91.i = and i32 %50, %gpio.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %dev97.i = getelementptr i8, ptr %timer, i32 -84
  %51 = ptrtoint ptr %dev97.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev97.i, align 4
  br i1 %tobool92.not.i, label %if.else96.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv95.i = zext i32 %value.2.i.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %52, i32 noundef 0, i64 noundef %conv95.i, i8 noundef zeroext 0) #7
  br label %cx88_ir_handle_key.exit

if.else96.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rc_keyup(ptr noundef %52) #7
  br label %cx88_ir_handle_key.exit

if.else99.i:                                      ; preds = %if.else86.i
  %mask_keyup100.i = getelementptr i8, ptr %timer, i32 64
  %53 = ptrtoint ptr %mask_keyup100.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask_keyup100.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool101.not.i = icmp eq i32 %54, 0
  br i1 %tobool101.not.i, label %if.else113.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.else99.i
  %and104.i = and i32 %54, %gpio.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %cmp105.i = icmp eq i32 %and104.i, 0
  %dev108.i = getelementptr i8, ptr %timer, i32 -84
  %55 = ptrtoint ptr %dev108.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev108.i, align 4
  br i1 %cmp105.i, label %if.then107.i, label %if.else110.i

if.then107.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv109.i = zext i32 %value.2.i.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %56, i32 noundef 0, i64 noundef %conv109.i, i8 noundef zeroext 0) #7
  br label %cx88_ir_handle_key.exit

if.else110.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rc_keyup(ptr noundef %56) #7
  br label %cx88_ir_handle_key.exit

if.else113.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev114.i = getelementptr i8, ptr %timer, i32 -84
  %57 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev114.i, align 4
  %conv115.i = zext i32 %value.2.i.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %58, i32 noundef 0, i64 noundef %conv115.i, i8 noundef zeroext 0) #7
  %59 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev114.i, align 4
  tail call void @rc_keyup(ptr noundef %60) #7
  br label %cx88_ir_handle_key.exit

cx88_ir_handle_key.exit:                          ; preds = %if.else113.i, %if.else110.i, %if.then107.i, %if.else96.i, %if.then93.i, %if.else83.i, %if.then80.i, %if.then45.i, %if.then.i.cx88_ir_handle_key.exit_crit_edge
  %61 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %polling.i, align 8
  %mul = mul i32 %62, 1000000
  %conv.i14 = zext i32 %mul to i64
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %66() #7
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %conv.i14) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1.i)
  %cmp = icmp ugt i64 %call1.i, 1
  br i1 %cmp, label %do.body, label %cx88_ir_handle_key.exit.if.end9_crit_edge

cx88_ir_handle_key.exit.if.end9_crit_edge:        ; preds = %cx88_ir_handle_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %cx88_ir_handle_key.exit
  %67 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %do.body.if.end9_crit_edge, label %do.end

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.cx88_core, ptr %69, i32 0, i32 3
  %sub = add i64 %call1.i, -1
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, i64 noundef %sub) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %cx88_ir_handle_key.exit.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown_notimeout(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_ir_samplerate, !1, !"__param_ir_samplerate", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_sampleratetype385, !1, !"__UNIQUE_ID_ir_sampleratetype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ir_samplerate386, !4, !"__UNIQUE_ID_ir_samplerate386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 50, i32 1}
!5 = !{ptr @__param_ir_debug, !6, !"__param_ir_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_ir_debugtype387, !6, !"__UNIQUE_ID_ir_debugtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ir_debug388, !9, !"__UNIQUE_ID_ir_debug388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 54, i32 1}
!10 = !{ptr @__ksymtab_cx88_ir_start, !11, !"__ksymtab_cx88_ir_start", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 232, i32 1}
!12 = !{ptr @__ksymtab_cx88_ir_stop, !13, !"__ksymtab_cx88_ir_stop", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 239, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 283, i32 14}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 290, i32 14}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 304, i32 14}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 312, i32 14}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 330, i32 14}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 345, i32 14}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 354, i32 14}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 361, i32 14}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 368, i32 14}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 375, i32 14}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 383, i32 22}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 396, i32 14}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 402, i32 14}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 406, i32 22}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 410, i32 22}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 417, i32 22}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 423, i32 22}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 427, i32 22}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 433, i32 22}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 459, i32 39}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 460, i32 39}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 475, i32 21}
!58 = !{ptr @cx88_i2c_init_ir.default_addr_list, !59, !"default_addr_list", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 588, i32 30}
!60 = !{ptr @cx88_i2c_init_ir.pvr2000_addr_list, !61, !"pvr2000_addr_list", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 592, i32 30}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 603, i32 21}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 608, i32 26}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 611, i32 30}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 628, i32 23}
!70 = !{ptr @__UNIQUE_ID_author391, !71, !"__UNIQUE_ID_author391", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 649, i32 1}
!72 = !{ptr @__UNIQUE_ID_description392, !73, !"__UNIQUE_ID_description392", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 650, i32 1}
!74 = !{ptr @__UNIQUE_ID_file393, !75, !"__UNIQUE_ID_file393", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 651, i32 1}
!76 = !{ptr @__UNIQUE_ID_license394, !75, !"__UNIQUE_ID_license394", i1 false, i1 false}
!77 = !{ptr @ir_debug, !78, !"ir_debug", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 52, i32 12}
!79 = !{ptr @__param_str_ir_samplerate, !1, !"__param_str_ir_samplerate", i1 false, i1 false}
!80 = !{ptr @ir_samplerate, !81, !"ir_samplerate", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 48, i32 21}
!82 = !{ptr @__param_str_ir_debug, !6, !"__param_str_ir_debug", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 177, i32 3}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cx88_ir_work._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx88_ir_work._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 115, i32 2}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cx88_ir_handle_key._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cx88_ir_handle_key._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 562, i32 3}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @get_key_pvr2000._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @get_key_pvr2000._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @get_key_pvr2000._entry.38, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 572, i32 3}
!106 = !{ptr @get_key_pvr2000._entry_ptr.39, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx88/cx88-input.c", i32 576, i32 2}
!109 = !{ptr @get_key_pvr2000._entry.40, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @get_key_pvr2000._entry_ptr.42, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2158632586}
!121 = !{i64 5017337}
!122 = !{i64 2158633152}
!123 = !{i64 2158633655}
!124 = !{i64 5017755}
!125 = !{i64 2158638291}
!126 = !{i8 0, i8 2}
!127 = !{i32 0, i32 33}
!128 = !{i64 2158625456}
!129 = !{i64 2158626061}
!130 = !{i64 2158626684}
!131 = !{i64 2158629398}
