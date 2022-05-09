; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-cards.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx88_tuner_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_tuner_callback\09\09\09\09"
module asm "\09.long\09__crc_cx88_tuner_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_tuner_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx88_setup_xc3028\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_setup_xc3028\09\09\09\09"
module asm "\09.long\09__crc_cx88_setup_xc3028\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_setup_xc3028:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_setup_xc3028\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_setup_xc3028:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cx88_subid = type { i16, i16, i32 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.153 = type { i32, i32, ptr }
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
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.tea5767_ctrl = type { i8, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@__param_str_tuner = internal constant [13 x i8] c"cx88xx.tuner\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_tuner = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @tuner }, align 4
@__param_tuner = internal constant %struct.kernel_param { ptr @__param_str_tuner, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_tuner } }, section "__param", align 4
@__UNIQUE_ID_tunertype385 = internal constant [35 x i8] c"cx88xx.parmtype=tuner:array of int\00", section ".modinfo", align 1
@__param_str_radio = internal constant [13 x i8] c"cx88xx.radio\00", align 1
@__param_arr_radio = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @radio }, align 4
@__param_radio = internal constant %struct.kernel_param { ptr @__param_str_radio, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_radio } }, section "__param", align 4
@__UNIQUE_ID_radiotype386 = internal constant [35 x i8] c"cx88xx.parmtype=radio:array of int\00", section ".modinfo", align 1
@__param_str_card = internal constant [12 x i8] c"cx88xx.card\00", align 1
@__param_arr_card = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype387 = internal constant [34 x i8] c"cx88xx.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner388 = internal constant [29 x i8] c"cx88xx.parm=tuner:tuner type\00", section ".modinfo", align 1
@__UNIQUE_ID_radio389 = internal constant [35 x i8] c"cx88xx.parm=radio:radio tuner type\00", section ".modinfo", align 1
@__UNIQUE_ID_card390 = internal constant [27 x i8] c"cx88xx.parm=card:card type\00", section ".modinfo", align 1
@__param_str_latency = internal constant [15 x i8] c"cx88xx.latency\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@latency = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_latency = internal constant %struct.kernel_param { ptr @__param_str_latency, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @latency } }, section "__param", align 4
@__UNIQUE_ID_latencytype391 = internal constant [28 x i8] c"cx88xx.parmtype=latency:int\00", section ".modinfo", align 1
@__UNIQUE_ID_latency392 = internal constant [38 x i8] c"cx88xx.parm=latency:pci latency timer\00", section ".modinfo", align 1
@__param_str_disable_ir = internal constant [18 x i8] c"cx88xx.disable_ir\00", align 1
@disable_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_ir = internal constant %struct.kernel_param { ptr @__param_str_disable_ir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @disable_ir } }, section "__param", align 4
@__UNIQUE_ID_disable_irtype393 = internal constant [31 x i8] c"cx88xx.parmtype=disable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ir394 = internal constant [42 x i8] c"cx88xx.parm=disable_ir:Disable IR support\00", section ".modinfo", align 1
@cx88_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx88xx: Error - i2c private data undefined.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx88_tuner_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/cx88/cx88-cards.c\00", [60 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr = internal global ptr @cx88_tuner_callback._entry, section ".printk_index", align 4
@cx88_tuner_callback._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 3268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx88xx: Error - device struct undefined.\0A\00", [52 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr.5 = internal global ptr @cx88_tuner_callback._entry.3, section ".printk_index", align 4
@cx88_core_debug = external dso_local local_unnamed_addr global i32, align 4
@cx88_tuner_callback._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 3277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017cx88xx: %s: core:Calling XC2028/3028 callback\0A\00", [47 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr.8 = internal global ptr @cx88_tuner_callback._entry.6, section ".printk_index", align 4
@cx88_tuner_callback._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 3280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx88xx: %s: core:Calling XC4000 callback\0A\00", [52 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr.11 = internal global ptr @cx88_tuner_callback._entry.9, section ".printk_index", align 4
@cx88_tuner_callback._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 3283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx88xx: %s: core:Calling XC5000 callback\0A\00", [52 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr.14 = internal global ptr @cx88_tuner_callback._entry.12, section ".printk_index", align 4
@cx88_tuner_callback._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 3287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx88xx: Error: Calling callback for tuner %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cx88_tuner_callback._entry_ptr.17 = internal global ptr @cx88_tuner_callback._entry.15, section ".printk_index", align 4
@__kstrtab_cx88_tuner_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_tuner_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_tuner_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_tuner_callback to i32), ptr @__kstrtab_cx88_tuner_callback, ptr @__kstrtabns_cx88_tuner_callback }, section "___ksymtab+cx88_tuner_callback", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc3028L-v36.fw\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_cx88_setup_xc3028 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_setup_xc3028 = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_setup_xc3028 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_setup_xc3028 to i32), ptr @__kstrtab_cx88_setup_xc3028, ptr @__kstrtabns_cx88_setup_xc3028 }, section "___ksymtab_gpl+cx88_setup_xc3028", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@cx88_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 3690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013cx88xx: func %d: Can't get MMIO memory @ 0x%llx, subsystem: %04x:%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx88_get_resources\00", [45 x i8] zeroinitializer }, align 32
@cx88_get_resources._entry_ptr = internal global ptr @cx88_get_resources._entry, section ".printk_index", align 4
@cx88_core_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&core->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cx88[%d]\00", [23 x i8] zeroinitializer }, align 32
@cx88_core_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cx88_cards:3736:(&core->video_hdl)->_lock\00", [54 x i8] zeroinitializer }, align 32
@cx88_core_create._key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cx88_cards:3742:(&core->audio_hdl)->_lock\00", [54 x i8] zeroinitializer }, align 32
@card = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx88_subids = internal constant { [121 x %struct.cx88_subid], [248 x i8] } { [121 x %struct.cx88_subid] [%struct.cx88_subid { i16 112, i16 13312, i32 1 }, %struct.cx88_subid { i16 112, i16 13313, i32 1 }, %struct.cx88_subid { i16 5319, i16 262, i32 2 }, %struct.cx88_subid { i16 5319, i16 263, i32 2 }, %struct.cx88_subid { i16 4098, i16 248, i32 4 }, %struct.cx88_subid { i16 4098, i16 249, i32 4 }, %struct.cx88_subid { i16 4221, i16 26129, i32 5 }, %struct.cx88_subid { i16 4221, i16 26131, i32 5 }, %struct.cx88_subid { i16 4221, i16 26144, i32 8 }, %struct.cx88_subid { i16 4221, i16 26171, i32 9 }, %struct.cx88_subid { i16 4221, i16 26172, i32 9 }, %struct.cx88_subid { i16 5217, i16 11, i32 6 }, %struct.cx88_subid { i16 5218, i16 -31226, i32 7 }, %struct.cx88_subid { i16 4348, i16 -12285, i32 10 }, %struct.cx88_subid { i16 4163, i16 18467, i32 12 }, %struct.cx88_subid { i16 6110, i16 2214, i32 14 }, %struct.cx88_subid { i16 6316, i16 -10224, i32 17 }, %struct.cx88_subid { i16 6316, i16 -10208, i32 28 }, %struct.cx88_subid { i16 6316, i16 -9472, i32 15 }, %struct.cx88_subid { i16 112, i16 -28670, i32 18 }, %struct.cx88_subid { i16 5361, i16 391, i32 19 }, %struct.cx88_subid { i16 5440, i16 9600, i32 20 }, %struct.cx88_subid { i16 6316, i16 -9456, i32 21 }, %struct.cx88_subid { i16 5460, i16 18449, i32 3 }, %struct.cx88_subid { i16 28771, i16 12288, i32 22 }, %struct.cx88_subid { i16 6110, i16 -22362, i32 23 }, %struct.cx88_subid { i16 112, i16 10241, i32 24 }, %struct.cx88_subid { i16 5361, i16 834, i32 25 }, %struct.cx88_subid { i16 4348, i16 -12235, i32 26 }, %struct.cx88_subid { i16 5153, i16 820, i32 29 }, %struct.cx88_subid { i16 5435, i16 4454, i32 30 }, %struct.cx88_subid { i16 6316, i16 -11008, i32 31 }, %struct.cx88_subid { i16 5217, i16 -32751, i32 32 }, %struct.cx88_subid { i16 4098, i16 -24319, i32 34 }, %struct.cx88_subid { i16 4221, i16 26207, i32 35 }, %struct.cx88_subid { i16 5217, i16 10, i32 36 }, %struct.cx88_subid { i16 112, i16 -28160, i32 38 }, %struct.cx88_subid { i16 112, i16 -28159, i32 37 }, %struct.cx88_subid { i16 112, i16 -28158, i32 37 }, %struct.cx88_subid { i16 6110, i16 2226, i32 39 }, %struct.cx88_subid { i16 112, i16 -27648, i32 40 }, %struct.cx88_subid { i16 112, i16 -27646, i32 40 }, %struct.cx88_subid { i16 112, i16 -26624, i32 41 }, %struct.cx88_subid { i16 112, i16 -26622, i32 41 }, %struct.cx88_subid { i16 112, i16 -28671, i32 18 }, %struct.cx88_subid { i16 6178, i16 37, i32 42 }, %struct.cx88_subid { i16 6110, i16 2209, i32 43 }, %struct.cx88_subid { i16 6316, i16 -9392, i32 44 }, %struct.cx88_subid { i16 6316, i16 -9388, i32 44 }, %struct.cx88_subid { i16 6316, i16 -9455, i32 21 }, %struct.cx88_subid { i16 6316, i16 -9424, i32 64 }, %struct.cx88_subid { i16 6110, i16 2112, i32 45 }, %struct.cx88_subid { i16 5153, i16 773, i32 45 }, %struct.cx88_subid { i16 6316, i16 -9408, i32 46 }, %struct.cx88_subid { i16 6316, i16 -9404, i32 46 }, %struct.cx88_subid { i16 28771, i16 21760, i32 47 }, %struct.cx88_subid { i16 6110, i16 2113, i32 48 }, %struct.cx88_subid { i16 6178, i16 25, i32 42 }, %struct.cx88_subid { i16 5460, i16 18451, i32 49 }, %struct.cx88_subid { i16 5361, i16 2114, i32 50 }, %struct.cx88_subid { i16 4221, i16 26206, i32 51 }, %struct.cx88_subid { i16 4221, i16 28459, i32 82 }, %struct.cx88_subid { i16 6316, i16 -10240, i32 17 }, %struct.cx88_subid { i16 5361, i16 132, i32 52 }, %struct.cx88_subid { i16 112, i16 5124, i32 53 }, %struct.cx88_subid { i16 6316, i16 -9216, i32 84 }, %struct.cx88_subid { i16 6316, i16 -9011, i32 84 }, %struct.cx88_subid { i16 5217, i16 -16111, i32 12 }, %struct.cx88_subid { i16 -16000, i16 -13952, i32 55 }, %struct.cx88_subid { i16 112, i16 -27136, i32 56 }, %struct.cx88_subid { i16 112, i16 -27135, i32 56 }, %struct.cx88_subid { i16 112, i16 -27134, i32 56 }, %struct.cx88_subid { i16 4221, i16 26162, i32 9 }, %struct.cx88_subid { i16 4779, i16 8960, i32 43 }, %struct.cx88_subid { i16 112, i16 -28672, i32 18 }, %struct.cx88_subid { i16 112, i16 5120, i32 53 }, %struct.cx88_subid { i16 112, i16 5121, i32 53 }, %struct.cx88_subid { i16 112, i16 5122, i32 53 }, %struct.cx88_subid { i16 5153, i16 833, i32 39 }, %struct.cx88_subid { i16 5153, i16 912, i32 57 }, %struct.cx88_subid { i16 4541, i16 81, i32 58 }, %struct.cx88_subid { i16 6316, i16 -10960, i32 59 }, %struct.cx88_subid { i16 4779, i16 6024, i32 60 }, %struct.cx88_subid { i16 5361, i16 -5571, i32 62 }, %struct.cx88_subid { i16 4221, i16 28440, i32 61 }, %struct.cx88_subid { i16 5361, i16 -30638, i32 63 }, %struct.cx88_subid { i16 6316, i16 -10736, i32 65 }, %struct.cx88_subid { i16 5460, i16 18741, i32 66 }, %struct.cx88_subid { i16 5460, i16 18806, i32 74 }, %struct.cx88_subid { i16 6110, i16 2241, i32 67 }, %struct.cx88_subid { i16 112, i16 26880, i32 68 }, %struct.cx88_subid { i16 112, i16 26884, i32 68 }, %struct.cx88_subid { i16 112, i16 26882, i32 68 }, %struct.cx88_subid { i16 112, i16 26885, i32 69 }, %struct.cx88_subid { i16 112, i16 26886, i32 69 }, %struct.cx88_subid { i16 -11232, i16 -28638, i32 73 }, %struct.cx88_subid { i16 -11168, i16 -28638, i32 70 }, %struct.cx88_subid { i16 -11164, i16 -28638, i32 86 }, %struct.cx88_subid { i16 -24508, i16 8209, i32 71 }, %struct.cx88_subid { i16 -30448, i16 -30584, i32 77 }, %struct.cx88_subid { i16 -30432, i16 -30584, i32 72 }, %struct.cx88_subid { i16 -20446, i16 12322, i32 78 }, %struct.cx88_subid { i16 -20429, i16 12339, i32 75 }, %struct.cx88_subid { i16 -19968, i16 16896, i32 76 }, %struct.cx88_subid { i16 5435, i16 4471, i32 79 }, %struct.cx88_subid { i16 112, i16 -28016, i32 80 }, %struct.cx88_subid { i16 4221, i16 26196, i32 81 }, %struct.cx88_subid { i16 4221, i16 28472, i32 88 }, %struct.cx88_subid { i16 4221, i16 28482, i32 87 }, %struct.cx88_subid { i16 4221, i16 26160, i32 9 }, %struct.cx88_subid { i16 4221, i16 26168, i32 9 }, %struct.cx88_subid { i16 4221, i16 26161, i32 9 }, %struct.cx88_subid { i16 4221, i16 26167, i32 9 }, %struct.cx88_subid { i16 4221, i16 26173, i32 9 }, %struct.cx88_subid { i16 4221, i16 26145, i32 8 }, %struct.cx88_subid { i16 4221, i16 26136, i32 61 }, %struct.cx88_subid { i16 4221, i16 26137, i32 61 }, %struct.cx88_subid { i16 4221, i16 28470, i32 89 }, %struct.cx88_subid { i16 4221, i16 28483, i32 90 }, %struct.cx88_subid { i16 -20428, i16 12340, i32 83 }, %struct.cx88_subid { i16 6178, i16 35, i32 85 }], [248 x i8] zeroinitializer }, align 32
@cx88_boards = internal constant { [92 x %struct.cx88_board], [5808 x i8] } { [92 x %struct.cx88_board] [%struct.cx88_board { ptr @.str.90, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 2, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 3, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input { i32 4, i32 0, i32 0, i32 0, i32 0, i8 -64 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.91, i32 -1, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 65280, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 9, i32 65281, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 65282, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 65282, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 65281, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.92, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.93, i32 5, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 65280, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 65296, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.94, i32 44, i32 -1, i8 -1, i8 -1, i32 17, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1023, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1022, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1022, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.95, i32 44, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 16115456, i32 12292, i32 16115456, i32 33554432, i8 0 }, %struct.cx88_input { i32 1, i32 16107264, i32 12292, i32 16107264, i32 33554432, i8 64 }, %struct.cx88_input { i32 5, i32 16107264, i32 12292, i32 16107264, i32 33554432, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 16111360, i32 12292, i32 16111360, i32 33554432, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.96, i32 38, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 57503, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 57439, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 57439, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 0, i32 57567, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.97, i32 33, i32 -1, i8 -1, i8 -1, i32 129, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 16575, i32 32960, i32 65344, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 16575, i32 32960, i32 65344, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 16575, i32 32960, i32 65344, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 16575, i32 32960, i32 65312, i32 0, i8 -64 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.98, i32 38, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 3532544, i32 12292, i32 3532544, i32 33554432, i8 0 }, %struct.cx88_input { i32 1, i32 3524352, i32 12292, i32 3524352, i32 33554432, i8 64 }, %struct.cx88_input { i32 5, i32 3524352, i32 3524352, i32 33554432, i32 33554432, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 3528448, i32 28676, i32 3528448, i32 33554432, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.99, i32 38, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 48610, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 1, i32 48614, i32 0, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 48614, i32 0, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 48482, i32 0, i32 0, i32 0, i8 4 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.100, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 2, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.101, i32 43, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 49136, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 49139, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 49139, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 49136, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.102, i32 43, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 64998, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 5, i32 64998, i32 0, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 64994, i32 0, i32 0, i32 0, i8 0 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.103, i32 33, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 4031, i32 0, i32 64520, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 4031, i32 0, i32 64616, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 4031, i32 0, i32 64616, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.104, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 1792, i32 0, i32 257, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1792, i32 0, i32 257, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.105, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 10207, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 10207, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.106, i32 48, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 2040, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 9, i32 2041, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 2042, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 2042, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 2040, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.107, i32 49, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 3853, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 7, i32 3845, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 3840, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 3840, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.108, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.109, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.110, i32 24, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.111, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 10207, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 10207, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.112, i32 60, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 33924, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 33792, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 33792, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 33796, i32 0, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.113, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 1792, i32 0, i32 257, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1792, i32 0, i32 257, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.114, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 60698, i32 0, i32 255, i32 0, i8 0 }, %struct.cx88_input { i32 9, i32 65281, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 65282, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 60818, i32 0, i32 255, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 60822, i32 0, i32 255, i32 0, i8 0 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.115, i32 38, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 40320, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 1, i32 40310, i32 0, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 40310, i32 0, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 40192, i32 0, i32 0, i32 0, i8 4 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.116, i32 53, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 57407, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 1, i32 0, i32 57471, i32 0, i32 0, i8 -128 }, %struct.cx88_input { i32 5, i32 0, i32 57471, i32 0, i32 0, i8 -64 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.117, i32 38, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 48993, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 48995, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 48995, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 48992, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 2, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.118, i32 60, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 38893, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 38889, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 38889, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.119, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 1792, i32 0, i32 257, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1792, i32 0, i32 257, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.120, i32 -1, i32 0, i8 0, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.121, i32 64, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 34813, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 34809, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 34809, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.122, i32 43, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 52595, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 5, i32 52595, i32 0, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 6, i32 52659, i32 0, i32 0, i32 0, i8 -60 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 52723, i32 0, i32 0, i32 0, i8 -124 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.123, i32 -1, i32 0, i8 0, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 50331648, i32 16777216, i32 33554432, i32 1048576, i8 64 }, %struct.cx88_input { i32 5, i32 50331648, i32 16777216, i32 33554432, i32 1048576, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.124, i32 68, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 4087, i32 255, i32 1, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 4094, i32 255, i32 1, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 4094, i32 255, i32 1, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.125, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.126, i32 38, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 255, i32 57503, i32 16, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 255, i32 57439, i32 16, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 255, i32 57439, i32 16, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.127, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 8 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 72 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -120 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 1, i32 0, i32 2 }, %struct.cx88_board { ptr @.str.128, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.129, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 8 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 72 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -120 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 1, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.130, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.131, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.132, i32 63, i32 -1, i8 -1, i8 -1, i32 97, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 16254984, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 16254984, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 16254984, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 16254984, i32 0, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.133, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 1792, i32 0, i32 257, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1792, i32 0, i32 257, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.134, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 26591, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 26591, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.135, i32 54, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 15842, i32 0, i32 255, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 15846, i32 0, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 15846, i32 0, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 15846, i32 0, i32 255, i32 0, i8 0 }, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.136, i32 72, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 42847, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 42843, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 42843, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.137, i32 64, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 34813, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 34809, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 34809, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.138, i32 61, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 48614, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.139, i32 38, i32 -1, i8 -1, i8 -1, i32 97, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 23974, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 2, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.140, i32 69, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1928, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1931, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1931, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1866, i32 0, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.141, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 94980, i32 33283, i32 94980, i32 33554432, i8 0 }, %struct.cx88_input { i32 1, i32 120577, i32 45575, i32 120577, i32 33554432, i8 64 }, %struct.cx88_input { i32 2, i32 120067, i32 45575, i32 120067, i32 33554432, i8 -128 }, %struct.cx88_input { i32 5, i32 120577, i32 45575, i32 120577, i32 33554432, i8 -64 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 87810, i32 61959, i32 87810, i32 33554432, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.142, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.143, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 33983, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 1, i32 33983, i32 0, i32 0, i32 0, i8 72 }, %struct.cx88_input { i32 5, i32 33983, i32 0, i32 0, i32 0, i8 -120 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 33983, i32 0, i32 0, i32 0, i8 32 }, i32 1, i32 1, i32 2, i32 0 }, %struct.cx88_board { ptr @.str.144, i32 69, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1801, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1803, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1803, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.145, i32 37, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 4194303, i32 14680064, i32 4194303, i32 33554432, i8 0 }, %struct.cx88_input { i32 1, i32 4194303, i32 14680064, i32 4194303, i32 33554432, i8 64 }, %struct.cx88_input { i32 5, i32 4194303, i32 14680064, i32 4194303, i32 33554432, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.146, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 61320, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 1, i32 61320, i32 0, i32 0, i32 0, i8 72 }, %struct.cx88_input { i32 5, i32 61320, i32 0, i32 0, i32 0, i8 -120 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 61320, i32 0, i32 0, i32 0, i8 32 }, i32 3, i32 1, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.147, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 9, i32 1279, i32 0, i32 0, i32 0, i8 -64 }, %struct.cx88_input { i32 1, i32 2042, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 2042, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.148, i32 76, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1275, i32 4351, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1275, i32 4335, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 1275, i32 4335, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.149, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 10207, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 10207, i32 0, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 10207, i32 0, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.150, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1279, i32 4351, i32 1, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1275, i32 4335, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 1275, i32 4335, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1279, i32 4351, i32 255, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.151, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1024, i32 0, i32 3076, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1024, i32 0, i32 3084, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1024, i32 0, i32 3084, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1024, i32 0, i32 3072, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.152, i32 71, i32 0, i8 97, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 9, i32 255, i32 62365, i32 0, i32 0, i8 -64 }, %struct.cx88_input { i32 6, i32 255, i32 62301, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 255, i32 62333, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 255, i32 62333, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 255, i32 62301, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.153, i32 71, i32 0, i8 97, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 14934849, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 14934881, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 14934881, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 0, i32 14934849, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.154, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 1, i32 26591, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 26591, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.155, i32 76, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 4319, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 5849, i32 0, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 5849, i32 0, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.156, i32 71, i32 0, i8 97, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 255, i32 0, i32 3323, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 0, i32 3323, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 0, i32 3323, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 0, i32 0, i32 3323, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.157, i32 71, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 255, i32 62301, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 255, i32 62334, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 255, i32 62334, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 255, i32 62301, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.158, i32 63, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 50367, i32 0, i32 0, i32 0, i8 4 }, %struct.cx88_input { i32 1, i32 50367, i32 0, i32 0, i32 0, i8 72 }, %struct.cx88_input { i32 5, i32 50367, i32 0, i32 0, i32 0, i8 -120 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 50367, i32 0, i32 0, i32 0, i8 32 }, i32 1, i32 1, i32 2, i32 0 }, %struct.cx88_board { ptr @.str.159, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.160, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.161, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.162, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 32896, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.163, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.164, i32 71, i32 0, i8 97, i8 0, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1275, i32 16512, i32 3319, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1275, i32 16512, i32 3323, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1275, i32 16512, i32 3323, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1279, i32 16512, i32 3319, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.165, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.166, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.167, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.168, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.169, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1279, i32 4351, i32 1, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1275, i32 4335, i32 0, i32 0, i8 68 }, %struct.cx88_input { i32 5, i32 1275, i32 4335, i32 0, i32 0, i8 -124 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1279, i32 4351, i32 255, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.170, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] zeroinitializer, %struct.cx88_input zeroinitializer, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.171, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1024, i32 24640, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1024, i32 24672, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1024, i32 24672, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1024, i32 24576, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.172, i32 78, i32 -1, i8 -1, i8 -1, i32 1, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 94976, i32 33287, i32 0, i32 33554432, i8 0 }, %struct.cx88_input { i32 6, i32 99072, i32 61959, i32 94980, i32 33554432, i8 0 }, %struct.cx88_input { i32 1, i32 99073, i32 61959, i32 94980, i32 33554432, i8 64 }, %struct.cx88_input { i32 5, i32 99073, i32 61959, i32 94980, i32 33554432, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 87810, i32 61959, i32 87810, i32 33554432, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.173, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.174, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.175, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.176, i32 -1, i32 -1, i8 -1, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 8, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input zeroinitializer, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.177, i32 87, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1027, i32 61655, i32 257, i32 0, i8 0 }, %struct.cx88_input { i32 7, i32 1027, i32 61655, i32 256, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1027, i32 61687, i32 257, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1027, i32 61687, i32 257, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1027, i32 61591, i32 256, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.178, i32 87, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1024, i32 24640, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1024, i32 24672, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1024, i32 24672, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1024, i32 24576, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.179, i32 87, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1024, i32 0, i32 3076, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1024, i32 0, i32 3084, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1024, i32 0, i32 3084, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1024, i32 0, i32 3072, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.180, i32 87, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 1024, i32 24640, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 1024, i32 24672, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 1024, i32 24672, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 1024, i32 24576, i32 0, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0 }, %struct.cx88_board { ptr @.str.181, i32 71, i32 -1, i8 97, i8 -1, i32 0, [8 x %struct.cx88_input] [%struct.cx88_input { i32 6, i32 0, i32 41281, i32 0, i32 0, i8 0 }, %struct.cx88_input { i32 1, i32 0, i32 41313, i32 0, i32 0, i8 64 }, %struct.cx88_input { i32 5, i32 0, i32 41313, i32 0, i32 0, i8 -128 }, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer, %struct.cx88_input zeroinitializer], %struct.cx88_input { i32 10, i32 0, i32 41281, i32 0, i32 0, i8 0 }, i32 1, i32 0, i32 0, i32 0 }], [5808 x i8] zeroinitializer }, align 32
@cx88_core_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 3795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016cx88xx: subsystem: %04x:%04x, board: %s [card=%d,%s], frontend(s): %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx88_core_create\00", [47 x i8] zeroinitializer }, align 32
@cx88_core_create._entry_ptr = internal global ptr @cx88_core_create._entry, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insmod option\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"autodetected\00", [19 x i8] zeroinitializer }, align 32
@tuner = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@radio = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx88_core_create._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.2, i32 3803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017cx88xx: %s: core:TV tuner type %d, Radio tuner type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cx88_core_create._entry_ptr.33 = internal global ptr @cx88_core_create._entry.31, section ".printk_index", align 4
@cx88_core_create.tv_addrs = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 66, i16 67, i16 74, i16 75, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 108, i16 109, i16 110, i16 -2], [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@cx88_xc2028_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 3170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx88xx: %s: core:setting GPIO to radio!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx88_xc2028_tuner_callback\00", [37 x i8] zeroinitializer }, align 32
@cx88_xc2028_tuner_callback._entry_ptr = internal global ptr @cx88_xc2028_tuner_callback._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx88_xc2028_tuner_callback._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 3178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017cx88xx: %s: core:setting GPIO to TV!\0A\00", [56 x i8] zeroinitializer }, align 32
@cx88_xc2028_tuner_callback._entry_ptr.39 = internal global ptr @cx88_xc2028_tuner_callback._entry.37, section ".printk_index", align 4
@cx88_xc5000_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 3239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017cx88xx: %s: core:xc5000: unknown tuner callback command.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx88_xc5000_tuner_callback\00", [37 x i8] zeroinitializer }, align 32
@cx88_xc5000_tuner_callback._entry_ptr = internal global ptr @cx88_xc5000_tuner_callback._entry, section ".printk_index", align 4
@cx88_xc5000_tuner_callback._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 3249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx88_xc5000_tuner_callback._entry_ptr.43 = internal global ptr @cx88_xc5000_tuner_callback._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pci_pci_problems = external dso_local local_unnamed_addr global i32, align 4
@cx88_pci_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 3642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx88xx: quirk: PCIPCI_TRITON -- set TBFX\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx88_pci_quirks\00", [16 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr = internal global ptr @cx88_pci_quirks._entry, section ".printk_index", align 4
@cx88_pci_quirks._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 3646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx88xx: quirk: PCIPCI_NATOMA -- set TBFX\0A\00", [52 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr.48 = internal global ptr @cx88_pci_quirks._entry.46, section ".printk_index", align 4
@cx88_pci_quirks._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 3650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cx88xx: quirk: PCIPCI_VIAETBF -- set TBFX\0A\00", [51 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr.51 = internal global ptr @cx88_pci_quirks._entry.49, section ".printk_index", align 4
@cx88_pci_quirks._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 3654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx88xx: quirk: PCIPCI_VSFX -- set VSFX\0A\00", [54 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr.54 = internal global ptr @cx88_pci_quirks._entry.52, section ".printk_index", align 4
@cx88_pci_quirks._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 3659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cx88xx: quirk: PCIPCI_ALIMAGIK -- latency fixup\0A\00", [45 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr.57 = internal global ptr @cx88_pci_quirks._entry.55, section ".printk_index", align 4
@cx88_pci_quirks._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.2, i32 3675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx88xx: setting pci latency timer to %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cx88_pci_quirks._entry_ptr.60 = internal global ptr @cx88_pci_quirks._entry.58, section ".printk_index", align 4
@cx88_card_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 3299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cx88xx: Your board has no valid PCI Subsystem ID and thus can't\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx88_card_list\00", [17 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr = internal global ptr @cx88_card_list._entry, section ".printk_index", align 4
@cx88_card_list._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 3300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cx88xx: be autodetected.  Please pass card=<n> insmod option to\0A\00", [61 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.65 = internal global ptr @cx88_card_list._entry.63, section ".printk_index", align 4
@cx88_card_list._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 3301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013cx88xx: workaround that.  Redirect complaints to the vendor of\0A\00", [62 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.68 = internal global ptr @cx88_card_list._entry.66, section ".printk_index", align 4
@cx88_card_list._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 3302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013cx88xx: the TV card\0A\00", [41 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.71 = internal global ptr @cx88_card_list._entry.69, section ".printk_index", align 4
@cx88_card_list._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.2, i32 3304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013cx88xx: Your board isn't known (yet) to the driver.  You can\0A\00", [32 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.74 = internal global ptr @cx88_card_list._entry.72, section ".printk_index", align 4
@cx88_card_list._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.2, i32 3305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013cx88xx: try to pick one of the existing card configs via\0A\00", [36 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.77 = internal global ptr @cx88_card_list._entry.75, section ".printk_index", align 4
@cx88_card_list._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.2, i32 3306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013cx88xx: card=<n> insmod option.  Updating to the latest\0A\00", [37 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.80 = internal global ptr @cx88_card_list._entry.78, section ".printk_index", align 4
@cx88_card_list._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.62, ptr @.str.2, i32 3307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx88xx: version might help as well.\0A\00", [57 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.83 = internal global ptr @cx88_card_list._entry.81, section ".printk_index", align 4
@cx88_card_list._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.62, ptr @.str.2, i32 3309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013cx88xx: Here is a list of valid choices for the card=<n> insmod option:\0A\00", [53 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.86 = internal global ptr @cx88_card_list._entry.84, section ".printk_index", align 4
@cx88_card_list._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.62, ptr @.str.2, i32 3311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013cx88xx:     card=%d -> %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cx88_card_list._entry_ptr.89 = internal global ptr @cx88_card_list._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN/GENERIC\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hauppauge WinTV 34xxx models\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GDI Black Gold\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PixelView\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ATI TV Wonder Pro\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Leadtek Winfast 2000XP Expert\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AverTV Studio 303 (M126)\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MSI TV-@nywhere Master\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Leadtek Winfast DV2000\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Leadtek PVR 2000\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IODATA GV-VCP3/PCI\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Prolink PlayTV PVR\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASUS PVR-416\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSI TV-@nywhere\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"KWorld/VStream XPert DVB-T\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DViCO FusionHDTV DVB-T1\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"KWorld LTV883RF\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DViCO FusionHDTV 3 Gold-Q\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hauppauge Nova-T DVB-T\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Conexant DVB-T reference design\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Provideo PV259\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DViCO FusionHDTV DVB-T Plus\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcHDTV HD3000 HDTV\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"digitalnow DNTV Live! DVB-T\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hauppauge WinTV 28xxx (Roslyn) models\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Digital-Logic MICROSPACE Entertainment Center (MEC)\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IODATA GV/BCTV7E\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PixelView PlayTV Ultra Pro (Stereo)\00", [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DViCO FusionHDTV 3 Gold-T\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ADS Tech Instant TV DVB-T PCI\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TerraTec Cinergy 1400 DVB-T\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DViCO FusionHDTV 5 Gold\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AverMedia UltraTV Media Center PCI 550\00", [57 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Kworld V-Stream Xpert DVD\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ATI HDTV Wonder\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WinFast DTV1000-T\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AVerTV 303 (M126)\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hauppauge Nova-S-Plus DVB-S\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hauppauge Nova-SE2 DVB-S\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"KWorld DVB-S 100\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Hauppauge WinTV-HVR1100 DVB-T/Hybrid\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Hauppauge WinTV-HVR1100 DVB-T/Hybrid (Low Profile)\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"digitalnow DNTV Live! DVB-T Pro\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"KWorld/VStream XPert DVB-T with cx22702\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DViCO FusionHDTV DVB-T Dual Digital\00", [60 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"KWorld HardwareMpegTV XPert\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DViCO FusionHDTV DVB-T Hybrid\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcHDTV HD5500 HDTV\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Kworld MCE 200 Deluxe\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PixelView PlayTV P7000\00", [41 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NPG Tech Real TV FM Top 10\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WinFast DTV2000 H\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Geniatech DVB-S\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Hauppauge WinTV-HVR3000 TriMode Analog/DVB-S/DVB-T\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Norwood Micro TV Tuner\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Shenzhen Tungsten Ages Tech TE-DTV-250 / Swann OEM\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Hauppauge WinTV-HVR1300 DVB-T/Hybrid MPEG Encoder\00", [46 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADS Tech Instant Video PCI\00", [37 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pinnacle PCTV HD 800i\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DViCO FusionHDTV 5 PCI nano\00", [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pinnacle Hybrid PCTV\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Leadtek TV2000 XP Global\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PowerColor RA330\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Geniatech X8000-MT DVBT\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DViCO FusionHDTV DVB-T PRO\00", [37 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DViCO FusionHDTV 7 Gold\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Prolink Pixelview MPEG 8000GT\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Kworld PlusTV HD PCI 120 (ATSC 120)\00", [60 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Hauppauge WinTV-HVR4000 DVB-S/S2/T/Hybrid\00", [54 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Hauppauge WinTV-HVR4000(Lite) DVB-S/S2\00", [57 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TeVii S460 DVB-S/S2\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Omicom SS4 DVB-S/S2 PCI\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TBS 8920 DVB-S/S2\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TeVii S420 DVB-S\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prolink Pixelview Global Extreme\00", [63 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PROF 7300 DVB-S/S2\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SATTRADE ST4200 DVB-S/S2\00", [39 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TBS 8910 DVB-S\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Prof 6200 DVB-S\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Terratec Cinergy HT PCI MKII\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-IR Only\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Leadtek WinFast DTV1800 Hybrid\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WinFast DTV2000 H rev. J\00", [39 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Prof 7301 DVB-S/S2\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Samsung SMT 7020 DVB-S\00", [41 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Twinhan VP-1027 DVB-S\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TeVii S464 DVB-S/S2\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Leadtek WinFast DTV2000 H PLUS\00", [33 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Leadtek WinFast DTV1800 H (XC4000)\00", [61 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Leadtek TV2000 XP Global (SC4100)\00", [62 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Leadtek TV2000 XP Global (XC4100)\00", [62 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NotOnlyTV LV3H\00", [17 x i8] zeroinitializer }, align 32
@cx88_card_setup.eeprom = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@cx88_card_setup.buffer = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c"\10\12", [2 x i8] c"\13\04", [2 x i8] c"\16\00", [2 x i8] c"\14\04", [2 x i8] c"\17\00"], [22 x i8] zeroinitializer }, align 32
@cx88_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 3544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cx88xx: Unable to enable tuner(%i).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx88_card_setup\00", [16 x i8] zeroinitializer }, align 32
@cx88_card_setup._entry_ptr = internal global ptr @cx88_card_setup._entry, section ".printk_index", align 4
@cx88_card_setup._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.183, ptr @.str.2, i32 3626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx88xx: %s: core:Asking xc2028/3028 to load firmware %s\0A\00", [37 x i8] zeroinitializer }, align 32
@cx88_card_setup._entry_ptr.187 = internal global ptr @cx88_card_setup._entry.185, section ".printk_index", align 4
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 2932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014cx88xx: warning: unknown hauppauge model #%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.2, i32 2936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cx88xx: hauppauge eeprom: model=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.192 = internal global ptr @hauppauge_eeprom._entry.190, section ".printk_index", align 4
@gdi_tuner = internal constant { [36 x %struct.anon.153], [112 x i8] } { [36 x %struct.anon.153] [%struct.anon.153 zeroinitializer, %struct.anon.153 { i32 -1, i32 0, ptr @.str.196 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.197 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.198 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.199 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.200 }, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 { i32 -1, i32 1, ptr @.str.201 }, %struct.anon.153 { i32 36, i32 0, ptr @.str.202 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.203 }, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 zeroinitializer, %struct.anon.153 { i32 24, i32 1, ptr @.str.204 }, %struct.anon.153 { i32 -1, i32 1, ptr @.str.205 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.206 }, %struct.anon.153 { i32 -1, i32 0, ptr @.str.207 }], [112 x i8] zeroinitializer }, align 32
@gdi_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 2983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016cx88xx: GDI: tuner=%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gdi_eeprom\00", [21 x i8] zeroinitializer }, align 32
@gdi_eeprom._entry_ptr = internal global ptr @gdi_eeprom._entry, section ".printk_index", align 4
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC_M\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL_B\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL_I\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL_D\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TEMIC_4049\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TEMIC_4136\00", [21 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TEMIC_4146\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHILIPS_FQ1216_MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHILIPS_FQ1236_MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHILIPS_FI1236_MK3\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHILIPS_FI1216_MK3\00", [45 x i8] zeroinitializer }, align 32
@leadtek_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 2858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014cx88xx: Leadtek eeprom invalid.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"leadtek_eeprom\00", [17 x i8] zeroinitializer }, align 32
@leadtek_eeprom._entry_ptr = internal global ptr @leadtek_eeprom._entry, section ".printk_index", align 4
@leadtek_eeprom._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.2, i32 2877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016cx88xx: Leadtek Winfast 2000XP Expert config: tuner=%d, eeprom[0]=0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@leadtek_eeprom._entry_ptr.212 = internal global ptr @leadtek_eeprom._entry.210, section ".printk_index", align 4
@dvico_fusionhdtv_hybrid_init.init_bufs = internal global { [13 x [5 x i8]], [63 x i8] } { [13 x [5 x i8]] [[5 x i8] c"\10\00 \01\03", [5 x i8] c"\10\10\01\00!", [5 x i8] c"\10\10\10\00\CA", [5 x i8] c"\10\10\12\00\08", [5 x i8] c"\10\10\13\00\0A", [5 x i8] c"\10\10\16\01\C0", [5 x i8] c"\10\10\22\01=", [5 x i8] c"\10\10s\01.", [5 x i8] c"\10\10r\00\C5", [5 x i8] c"\10\10q\01\97", [5 x i8] c"\10\10p\00\0F", [5 x i8] c"\10\10\B0\00\01", [5 x i8] c"\03\0C\00\00\00"], [63 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_hybrid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 3138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014cx88xx: dvico_fusionhdtv_hybrid_init buf %d failed (err = %d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvico_fusionhdtv_hybrid_init\00", [35 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_hybrid_init._entry_ptr = internal global ptr @dvico_fusionhdtv_hybrid_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 71, i64 76, i64 87]
@__sancov_gen_cov_switch_values.215 = internal global [12 x i64] [i64 10, i64 32, i64 59, i64 61, i64 62, i64 63, i64 64, i64 66, i64 67, i64 74, i64 81, i64 91]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 58, i64 65]
@__sancov_gen_cov_switch_values.218 = internal global [14 x i64] [i64 12, i64 32, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 66, i64 67, i64 74, i64 79, i64 81, i64 91]
@__sancov_gen_cov_switch_values.219 = internal global [17 x i64] [i64 15, i64 32, i64 53, i64 56, i64 61, i64 65, i64 66, i64 68, i64 74, i64 81, i64 82, i64 85, i64 87, i64 88, i64 89, i64 90, i64 91]
@__sancov_gen_cov_switch_values.220 = internal global [39 x i64] [i64 37, i64 32, i64 1, i64 2, i64 5, i64 7, i64 8, i64 9, i64 14, i64 15, i64 18, i64 21, i64 23, i64 24, i64 34, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 44, i64 46, i64 53, i64 56, i64 64, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 75, i64 76, i64 77, i64 78, i64 80, i64 83, i64 86]
@__sancov_gen_cov_switch_values.221 = internal global [7 x i64] [i64 5, i64 8, i64 19, i64 33, i64 49, i64 55, i64 61]
@__sancov_gen_cov_switch_values.222 = internal global [14 x i64] [i64 12, i64 32, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 66, i64 67, i64 74, i64 79, i64 81, i64 91]
@__sancov_gen_cov_switch_values.223 = internal global [35 x i64] [i64 33, i64 32, i64 84, i64 14009, i64 14019, i64 14029, i64 14109, i64 14129, i64 14559, i64 14569, i64 14659, i64 14669, i64 28552, i64 34519, i64 69009, i64 69100, i64 69500, i64 69559, i64 69569, i64 90002, i64 90003, i64 90500, i64 90501, i64 92000, i64 92001, i64 92002, i64 92900, i64 94009, i64 94501, i64 96009, i64 96019, i64 96559, i64 96569, i64 96659, i64 98559]
@___asan_gen_.224 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 31, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant [11 x i8] c"disable_ir\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 35, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3261, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3268, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3277, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3280, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3283, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3286, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3392, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3421, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3687, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3713, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3716, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3736, i32 6 }
@___asan_gen_.302 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3742, i32 6 }
@___asan_gen_.308 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 21, i32 21 }
@___asan_gen_.311 = private unnamed_addr constant [12 x i8] c"cx88_subids\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2347, i32 32 }
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"cx88_boards\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 51, i32 32 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3791, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 19, i32 21 }
@___asan_gen_.335 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 20, i32 21 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3802, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [9 x i8] c"tv_addrs\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3817, i32 31 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3832, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3170, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3178, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3239, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3249, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3642, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3646, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3650, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3654, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3659, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3675, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3299, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3300, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3301, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3302, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3304, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3305, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3306, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3307, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3309, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3311, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 53, i32 12 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 73, i32 12 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 102, i32 12 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 116, i32 21 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 138, i32 21 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 159, i32 21 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 196, i32 21 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 223, i32 21 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 257, i32 21 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 295, i32 21 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 325, i32 12 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 342, i32 21 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 367, i32 12 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 390, i32 21 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 414, i32 21 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 433, i32 21 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 450, i32 21 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 478, i32 12 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 520, i32 21 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 532, i32 21 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 544, i32 12 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 557, i32 21 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 593, i32 21 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 574, i32 12 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 633, i32 21 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 665, i32 21 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 695, i32 21 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 716, i32 21 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 746, i32 21 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 768, i32 21 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 787, i32 21 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 802, i32 21 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 824, i32 21 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 856, i32 22 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 875, i32 21 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 905, i32 21 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 923, i32 21 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 953, i32 12 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 979, i32 12 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 991, i32 12 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1016, i32 12 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1036, i32 12 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1053, i32 21 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1083, i32 21 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1102, i32 21 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1119, i32 21 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1148, i32 21 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1169, i32 21 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1195, i32 21 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1210, i32 21 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1225, i32 21 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1249, i32 21 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1339, i32 20 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1354, i32 21 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1390, i32 21 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1410, i32 21 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1439, i32 12 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1489, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1509, i32 21 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1535, i32 21 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1559, i32 21 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1597, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1706, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1750, i32 21 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1820, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1837, i32 21 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1858, i32 21 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1918, i32 21 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1951, i32 21 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2024, i32 21 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2048, i32 21 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2072, i32 21 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2096, i32 21 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2036, i32 21 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1881, i32 21 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2121, i32 21 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2133, i32 21 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2084, i32 21 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2109, i32 21 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2145, i32 21 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2178, i32 21 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2185, i32 21 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1294, i32 21 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2319, i32 21 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1477, i32 12 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2331, i32 12 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2060, i32 21 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2267, i32 12 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2226, i32 12 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1633, i32 21 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1669, i32 21 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1785, i32 21 }
@___asan_gen_.755 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3445, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3531, i32 20 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3543, i32 6 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3625, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2932, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2936, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [10 x i8] c"gdi_tuner\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2947, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2983, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2949, i32 14 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2951, i32 14 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2953, i32 14 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2955, i32 14 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2957, i32 14 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2961, i32 14 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2963, i32 14 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2965, i32 14 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2969, i32 14 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2971, i32 14 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2973, i32 14 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2975, i32 14 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2858, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 2876, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [10 x i8] c"init_bufs\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3116, i32 12 }
@___asan_gen_.860 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.867 = private constant [39 x i8] c"../drivers/media/pci/cx88/cx88-cards.c\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 3137, i32 4 }
@llvm.compiler.used = appending global [269 x ptr] [ptr @__UNIQUE_ID_card390, ptr @__UNIQUE_ID_cardtype387, ptr @__UNIQUE_ID_disable_ir394, ptr @__UNIQUE_ID_disable_irtype393, ptr @__UNIQUE_ID_latency392, ptr @__UNIQUE_ID_latencytype391, ptr @__UNIQUE_ID_radio389, ptr @__UNIQUE_ID_radiotype386, ptr @__UNIQUE_ID_tuner388, ptr @__UNIQUE_ID_tunertype385, ptr @__ksymtab_cx88_setup_xc3028, ptr @__ksymtab_cx88_tuner_callback, ptr @__param_card, ptr @__param_disable_ir, ptr @__param_latency, ptr @__param_radio, ptr @__param_tuner, ptr @cx88_card_list._entry, ptr @cx88_card_list._entry.63, ptr @cx88_card_list._entry.66, ptr @cx88_card_list._entry.69, ptr @cx88_card_list._entry.72, ptr @cx88_card_list._entry.75, ptr @cx88_card_list._entry.78, ptr @cx88_card_list._entry.81, ptr @cx88_card_list._entry.84, ptr @cx88_card_list._entry.87, ptr @cx88_card_list._entry_ptr, ptr @cx88_card_list._entry_ptr.65, ptr @cx88_card_list._entry_ptr.68, ptr @cx88_card_list._entry_ptr.71, ptr @cx88_card_list._entry_ptr.74, ptr @cx88_card_list._entry_ptr.77, ptr @cx88_card_list._entry_ptr.80, ptr @cx88_card_list._entry_ptr.83, ptr @cx88_card_list._entry_ptr.86, ptr @cx88_card_list._entry_ptr.89, ptr @cx88_card_setup._entry, ptr @cx88_card_setup._entry.185, ptr @cx88_card_setup._entry_ptr, ptr @cx88_card_setup._entry_ptr.187, ptr @cx88_core_create._entry, ptr @cx88_core_create._entry.31, ptr @cx88_core_create._entry_ptr, ptr @cx88_core_create._entry_ptr.33, ptr @cx88_get_resources._entry, ptr @cx88_get_resources._entry_ptr, ptr @cx88_pci_quirks._entry, ptr @cx88_pci_quirks._entry.46, ptr @cx88_pci_quirks._entry.49, ptr @cx88_pci_quirks._entry.52, ptr @cx88_pci_quirks._entry.55, ptr @cx88_pci_quirks._entry.58, ptr @cx88_pci_quirks._entry_ptr, ptr @cx88_pci_quirks._entry_ptr.48, ptr @cx88_pci_quirks._entry_ptr.51, ptr @cx88_pci_quirks._entry_ptr.54, ptr @cx88_pci_quirks._entry_ptr.57, ptr @cx88_pci_quirks._entry_ptr.60, ptr @cx88_tuner_callback._entry, ptr @cx88_tuner_callback._entry.12, ptr @cx88_tuner_callback._entry.15, ptr @cx88_tuner_callback._entry.3, ptr @cx88_tuner_callback._entry.6, ptr @cx88_tuner_callback._entry.9, ptr @cx88_tuner_callback._entry_ptr, ptr @cx88_tuner_callback._entry_ptr.11, ptr @cx88_tuner_callback._entry_ptr.14, ptr @cx88_tuner_callback._entry_ptr.17, ptr @cx88_tuner_callback._entry_ptr.5, ptr @cx88_tuner_callback._entry_ptr.8, ptr @cx88_xc2028_tuner_callback._entry, ptr @cx88_xc2028_tuner_callback._entry.37, ptr @cx88_xc2028_tuner_callback._entry_ptr, ptr @cx88_xc2028_tuner_callback._entry_ptr.39, ptr @cx88_xc5000_tuner_callback._entry, ptr @cx88_xc5000_tuner_callback._entry.42, ptr @cx88_xc5000_tuner_callback._entry_ptr, ptr @cx88_xc5000_tuner_callback._entry_ptr.43, ptr @dvico_fusionhdtv_hybrid_init._entry, ptr @dvico_fusionhdtv_hybrid_init._entry_ptr, ptr @gdi_eeprom._entry, ptr @gdi_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.190, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.192, ptr @leadtek_eeprom._entry, ptr @leadtek_eeprom._entry.210, ptr @leadtek_eeprom._entry_ptr, ptr @leadtek_eeprom._entry_ptr.212, ptr @latency, ptr @disable_ir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @cx88_core_create.__key, ptr @.str.22, ptr @.str.23, ptr @cx88_core_create._key, ptr @.str.24, ptr @cx88_core_create._key.25, ptr @.str.26, ptr @card, ptr @cx88_subids, ptr @cx88_boards, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @tuner, ptr @radio, ptr @.str.32, ptr @cx88_core_create.tv_addrs, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @cx88_card_setup.eeprom, ptr @cx88_card_setup.buffer, ptr @.str.182, ptr @.str.183, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @gdi_tuner, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @dvico_fusionhdtv_hybrid_init.init_bufs, ptr @.str.213, ptr @.str.214], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_tuner_callback._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create._key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_subids to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_boards to i32), i32 23184, i32 28992, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_core_create.tv_addrs to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_xc2028_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_xc2028_tuner_callback._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_xc5000_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_xc5000_tuner_callback._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pci_quirks._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_list._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_setup.eeprom to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_setup.buffer to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_card_setup._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdi_tuner to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdi_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leadtek_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leadtek_eeprom._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_hybrid_init.init_bufs to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_hybrid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_tuner_callback(ptr noundef readonly %priv, i32 noundef %component, i32 noundef %command, i32 %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %component)
  %cmp.not = icmp eq i32 %component, 0
  br i1 %cmp.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end51 [
    i32 71, label %do.body11
    i32 87, label %do.body24
    i32 76, label %do.body37
  ]

do.body11:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %5 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not = icmp eq i32 %5, 0
  br i1 %cmp12.not, label %do.body11.do.end21_crit_edge, label %do.end16

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body11.do.end21_crit_edge
  %boardnr.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %boardnr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %boardnr.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %7, label %sw.epilog.i [
    i32 62, label %do.end21.sw.bb.i_crit_edge
    i32 63, label %do.end21.sw.bb.i_crit_edge88
    i32 67, label %do.end21.sw.bb.i_crit_edge89
    i32 66, label %do.end21.sw.bb1.i_crit_edge
    i32 74, label %do.end21.sw.bb1.i_crit_edge90
    i32 64, label %do.end21.sw.bb3.i_crit_edge
    i32 59, label %do.end21.sw.bb3.i_crit_edge91
    i32 91, label %do.end21.sw.bb5.i_crit_edge
    i32 61, label %do.end21.sw.bb5.i_crit_edge92
    i32 81, label %do.end21.sw.bb5.i_crit_edge93
  ]

do.end21.sw.bb5.i_crit_edge93:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end21.sw.bb5.i_crit_edge92:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end21.sw.bb5.i_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

do.end21.sw.bb3.i_crit_edge91:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

do.end21.sw.bb3.i_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

do.end21.sw.bb1.i_crit_edge90:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end21.sw.bb1.i_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end21.sw.bb.i_crit_edge89:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end21.sw.bb.i_crit_edge88:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end21.sw.bb.i_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end21.sw.bb.i_crit_edge, %do.end21.sw.bb.i_crit_edge88, %do.end21.sw.bb.i_crit_edge89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i.i = icmp eq i32 %command, 0
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %input1.i.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input1.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.cx88_core, ptr %1, i32 0, i32 23, i32 6, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %12, label %do.body3.i.i [
    i32 10, label %sw.bb.i.i.do.body13.i.i_crit_edge
    i32 8, label %do.body.i.i
  ]

sw.bb.i.i.do.body13.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i.i

do.body.i.i:                                      ; preds = %sw.bb.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  tail call void @arm_heavy_mb() #8
  %lmmio.i.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %15, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33751808) #8, !srcloc !459
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.body.i.i
  %__ms.02.i.i = phi i32 [ 50, %do.body.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.02.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.do.body13.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.do.body13.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i.i

do.body3.i.i:                                     ; preds = %sw.bb.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  tail call void @arm_heavy_mb() #8
  %lmmio5.i.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %lmmio5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio5.i.i, align 4
  %add.ptr6.i.i = getelementptr i32, ptr %18, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 16974592) #8, !srcloc !459
  br label %while.body11.i.i

while.body11.i.i:                                 ; preds = %while.body11.i.i.while.body11.i.i_crit_edge, %do.body3.i.i
  %__ms7.03.i.i = phi i32 [ 50, %do.body3.i.i ], [ %dec9.i.i, %while.body11.i.i.while.body11.i.i_crit_edge ]
  %dec9.i.i = add nsw i32 %__ms7.03.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  %tobool10.not.i.i = icmp eq i32 %dec9.i.i, 0
  br i1 %tobool10.not.i.i, label %while.body11.i.i.do.body13.i.i_crit_edge, label %while.body11.i.i.while.body11.i.i_crit_edge

while.body11.i.i.while.body11.i.i_crit_edge:      ; preds = %while.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body11.i.i

while.body11.i.i.do.body13.i.i_crit_edge:         ; preds = %while.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %while.body11.i.i.do.body13.i.i_crit_edge, %while.body.i.i.do.body13.i.i_crit_edge, %sw.bb.i.i.do.body13.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  tail call void @arm_heavy_mb() #8
  %lmmio15.i.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %lmmio15.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio15.i.i, align 4
  %add.ptr16.i.i = getelementptr i32, ptr %21, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 269488128) #8, !srcloc !459
  br label %while.body21.i.i

while.body21.i.i:                                 ; preds = %while.body21.i.i.while.body21.i.i_crit_edge, %do.body13.i.i
  %__ms17.04.i.i = phi i32 [ 50, %do.body13.i.i ], [ %dec19.i.i, %while.body21.i.i.while.body21.i.i_crit_edge ]
  %dec19.i.i = add nsw i32 %__ms17.04.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  %tobool20.not.i.i = icmp eq i32 %dec19.i.i, 0
  br i1 %tobool20.not.i.i, label %while.end22.i.i, label %while.body21.i.i.while.body21.i.i_crit_edge

while.body21.i.i.while.body21.i.i_crit_edge:      ; preds = %while.body21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body21.i.i

while.end22.i.i:                                  ; preds = %while.body21.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %lmmio15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio15.i.i, align 4
  %add.ptr26.i.i = getelementptr i32, ptr %24, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 1052672) #8, !srcloc !459
  br label %while.body31.i.i

while.body31.i.i:                                 ; preds = %while.body31.i.i.while.body31.i.i_crit_edge, %while.end22.i.i
  %__ms27.05.i.i = phi i32 [ 50, %while.end22.i.i ], [ %dec29.i.i, %while.body31.i.i.while.body31.i.i_crit_edge ]
  %dec29.i.i = add nsw i32 %__ms27.05.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  %tobool30.not.i.i = icmp eq i32 %dec29.i.i, 0
  br i1 %tobool30.not.i.i, label %while.end32.i.i, label %while.body31.i.i.while.body31.i.i_crit_edge

while.body31.i.i.while.body31.i.i_crit_edge:      ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body31.i.i

while.end32.i.i:                                  ; preds = %while.body31.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %lmmio15.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio15.i.i, align 4
  %add.ptr36.i.i = getelementptr i32, ptr %27, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 269488128) #8, !srcloc !459
  br label %while.body41.i.i

while.body41.i.i:                                 ; preds = %while.body41.i.i.while.body41.i.i_crit_edge, %while.end32.i.i
  %__ms37.06.i.i = phi i32 [ 50, %while.end32.i.i ], [ %dec39.i.i, %while.body41.i.i.while.body41.i.i_crit_edge ]
  %dec39.i.i = add nsw i32 %__ms37.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  %tobool40.not.i.i = icmp eq i32 %dec39.i.i, 0
  br i1 %tobool40.not.i.i, label %while.body41.i.i.cleanup_crit_edge, label %while.body41.i.i.while.body41.i.i_crit_edge

while.body41.i.i.while.body41.i.i_crit_edge:      ; preds = %while.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body41.i.i

while.body41.i.i.cleanup_crit_edge:               ; preds = %while.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i:                                         ; preds = %do.end21.sw.bb1.i_crit_edge, %do.end21.sw.bb1.i_crit_edge90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i1.i = icmp eq i32 %command, 0
  br i1 %cond.i1.i, label %do.body.i4.i, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i4.i:                                     ; preds = %sw.bb1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  %lmmio.i2.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %lmmio.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio.i2.i, align 4
  %add.ptr.i3.i = getelementptr i32, ptr %30, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -150208512) #8, !srcloc !459
  br label %while.body.i7.i

while.body.i7.i:                                  ; preds = %while.body.i7.i.while.body.i7.i_crit_edge, %do.body.i4.i
  %__ms.01.i.i = phi i32 [ 50, %do.body.i4.i ], [ %dec.i5.i, %while.body.i7.i.while.body.i7.i_crit_edge ]
  %dec.i5.i = add nsw i32 %__ms.01.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #8
  %tobool.not.i6.i = icmp eq i32 %dec.i5.i, 0
  br i1 %tobool.not.i6.i, label %while.end.i.i, label %while.body.i7.i.while.body.i7.i_crit_edge

while.body.i7.i.while.body.i7.i_crit_edge:        ; preds = %while.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i7.i

while.end.i.i:                                    ; preds = %while.body.i7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !465
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %lmmio.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio.i2.i, align 4
  %add.ptr4.i.i = getelementptr i32, ptr %33, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 -183631872) #8, !srcloc !459
  br label %while.body9.i.i

while.body9.i.i:                                  ; preds = %while.body9.i.i.while.body9.i.i_crit_edge, %while.end.i.i
  %__ms5.02.i.i = phi i32 [ 50, %while.end.i.i ], [ %dec7.i.i, %while.body9.i.i.while.body9.i.i_crit_edge ]
  %dec7.i.i = add nsw i32 %__ms5.02.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  %tobool8.not.i.i = icmp eq i32 %dec7.i.i, 0
  br i1 %tobool8.not.i.i, label %while.end10.i.i, label %while.body9.i.i.while.body9.i.i_crit_edge

while.body9.i.i.while.body9.i.i_crit_edge:        ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body9.i.i

while.end10.i.i:                                  ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !466
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %lmmio.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i2.i, align 4
  %add.ptr14.i.i = getelementptr i32, ptr %36, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 -150208512) #8, !srcloc !459
  br label %cleanup

sw.bb3.i:                                         ; preds = %do.end21.sw.bb3.i_crit_edge, %do.end21.sw.bb3.i_crit_edge91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i9.i = icmp eq i32 %command, 0
  br i1 %cond.i9.i, label %sw.bb.i12.i, label %sw.bb3.i.cleanup_crit_edge

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i12.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %7)
  %cond50.i.i = icmp eq i32 %7, 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %lmmio.i10.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr.i11.i = getelementptr i32, ptr %38, i32 868356
  br i1 %cond50.i.i, label %do.body.i14.i, label %do.body31.i.i

do.body.i14.i:                                    ; preds = %sw.bb.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !468
  %40 = or i32 %39, 1048576
  %41 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr4.i13.i = getelementptr i32, ptr %42, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i13.i, i32 %40) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !469
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr10.i.i = getelementptr i32, ptr %44, i32 868356
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !470
  %46 = and i32 %45, -268435457
  %47 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr17.i.i = getelementptr i32, ptr %48, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %46) #8, !srcloc !459
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !471
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr23.i.i = getelementptr i32, ptr %50, i32 868356
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !472
  %52 = or i32 %51, 268435456
  %53 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr30.i.i = getelementptr i32, ptr %54, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %52) #8, !srcloc !459
  tail call void @msleep(i32 noundef 100) #8
  br label %cleanup

do.body31.i.i:                                    ; preds = %sw.bb.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 1052672) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !473
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr40.i.i = getelementptr i32, ptr %61, i32 868356
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !474
  %63 = or i32 %62, 269488128
  %64 = ptrtoint ptr %lmmio.i10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio.i10.i, align 4
  %add.ptr47.i.i = getelementptr i32, ptr %65, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %63) #8, !srcloc !459
  br label %cleanup

sw.bb5.i:                                         ; preds = %do.end21.sw.bb5.i_crit_edge, %do.end21.sw.bb5.i_crit_edge92, %do.end21.sw.bb5.i_crit_edge93
  %call6.i = tail call fastcc i32 @cx88_xc3028_winfast1800h_callback(ptr noundef nonnull %1, i32 noundef %command) #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i = icmp eq i32 %command, 0
  br i1 %cond.i, label %sw.bb7.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.epilog.i
  %input8.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 35
  %66 = ptrtoint ptr %input8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %input8.i, align 8
  %arrayidx.i = getelementptr %struct.cx88_core, ptr %1, i32 0, i32 23, i32 6, i32 %67
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %69)
  %cond67.i = icmp eq i32 %69, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %70 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.not.i = icmp eq i32 %70, 0
  br i1 %cond67.i, label %do.body.i, label %do.body26.i

do.body.i:                                        ; preds = %sw.bb7.i
  br i1 %cmp.not.i, label %do.body.i.do.body13.i_crit_edge, label %do.end.i

do.body.i.do.body13.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #11
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.end.i, %do.body.i.do.body13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !475
  tail call void @arm_heavy_mb() #8
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %71 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %72, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16515072) #8, !srcloc !459
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body13.i
  %__ms.018.i = phi i32 [ 250, %do.body13.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.018.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !476
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %75, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 -16777216) #8, !srcloc !459
  br label %while.body23.i

while.body23.i:                                   ; preds = %while.body23.i.while.body23.i_crit_edge, %while.end.i
  %__ms19.019.i = phi i32 [ 250, %while.end.i ], [ %dec21.i, %while.body23.i.while.body23.i_crit_edge ]
  %dec21.i = add nsw i32 %__ms19.019.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #8
  %tobool22.not.i = icmp eq i32 %dec21.i, 0
  br i1 %tobool22.not.i, label %while.body23.i.do.body36.i_crit_edge, label %while.body23.i.while.body23.i_crit_edge

while.body23.i.while.body23.i_crit_edge:          ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body23.i

while.body23.i.do.body36.i_crit_edge:             ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.i

do.body26.i:                                      ; preds = %sw.bb7.i
  br i1 %cmp.not.i, label %do.body26.i.do.body36.i_crit_edge, label %do.end30.i

do.body26.i.do.body36.i_crit_edge:                ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.i

do.end30.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #11
  br label %do.body36.i

do.body36.i:                                      ; preds = %do.end30.i, %do.body26.i.do.body36.i_crit_edge, %while.body23.i.do.body36.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !477
  tail call void @arm_heavy_mb() #8
  %lmmio38.i = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %lmmio38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lmmio38.i, align 4
  %add.ptr39.i = getelementptr i32, ptr %78, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 269488128) #8, !srcloc !459
  br label %while.body44.i

while.body44.i:                                   ; preds = %while.body44.i.while.body44.i_crit_edge, %do.body36.i
  %__ms40.020.i = phi i32 [ 250, %do.body36.i ], [ %dec42.i, %while.body44.i.while.body44.i_crit_edge ]
  %dec42.i = add nsw i32 %__ms40.020.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #8
  %tobool43.not.i = icmp eq i32 %dec42.i, 0
  br i1 %tobool43.not.i, label %while.end45.i, label %while.body44.i.while.body44.i_crit_edge

while.body44.i.while.body44.i_crit_edge:          ; preds = %while.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body44.i

while.end45.i:                                    ; preds = %while.body44.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !478
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %lmmio38.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lmmio38.i, align 4
  %add.ptr49.i = getelementptr i32, ptr %81, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 1052672) #8, !srcloc !459
  br label %while.body54.i

while.body54.i:                                   ; preds = %while.body54.i.while.body54.i_crit_edge, %while.end45.i
  %__ms50.021.i = phi i32 [ 250, %while.end45.i ], [ %dec52.i, %while.body54.i.while.body54.i_crit_edge ]
  %dec52.i = add nsw i32 %__ms50.021.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #8
  %tobool53.not.i = icmp eq i32 %dec52.i, 0
  br i1 %tobool53.not.i, label %while.end55.i, label %while.body54.i.while.body54.i_crit_edge

while.body54.i.while.body54.i_crit_edge:          ; preds = %while.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body54.i

while.end55.i:                                    ; preds = %while.body54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !479
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %lmmio38.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lmmio38.i, align 4
  %add.ptr59.i = getelementptr i32, ptr %84, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 269488128) #8, !srcloc !459
  br label %while.body64.i

while.body64.i:                                   ; preds = %while.body64.i.while.body64.i_crit_edge, %while.end55.i
  %__ms60.022.i = phi i32 [ 250, %while.end55.i ], [ %dec62.i, %while.body64.i.while.body64.i_crit_edge ]
  %dec62.i = add nsw i32 %__ms60.022.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #8
  %tobool63.not.i = icmp eq i32 %dec62.i, 0
  br i1 %tobool63.not.i, label %while.body64.i.cleanup_crit_edge, label %while.body64.i.while.body64.i_crit_edge

while.body64.i.while.body64.i_crit_edge:          ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body64.i

while.body64.i.cleanup_crit_edge:                 ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body24:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %86 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp25.not = icmp eq i32 %86, 0
  br i1 %cmp25.not, label %do.body24.do.end34_crit_edge, label %do.end29

do.body24.do.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #11
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body24.do.end34_crit_edge
  %boardnr.i67 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %87 = ptrtoint ptr %boardnr.i67 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %boardnr.i67, align 4
  %.off.i = add i32 %88, -87
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %sw.bb.i68, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i68:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @cx88_xc4000_winfast2000h_plus_callback(ptr noundef nonnull %1, i32 noundef %command) #8
  br label %cleanup

do.body37:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %89 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp38.not = icmp eq i32 %89, 0
  br i1 %cmp38.not, label %do.body37.do.end47_crit_edge, label %do.end42

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #11
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body37.do.end47_crit_edge
  %boardnr.i70 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %90 = ptrtoint ptr %boardnr.i70 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %boardnr.i70, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %91, label %do.end47.cleanup_crit_edge [
    i32 58, label %sw.bb.i71
    i32 65, label %sw.bb6.i
  ]

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i71:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp.i = icmp eq i32 %command, 0
  br i1 %cmp.i, label %sw.bb.i71.cleanup_crit_edge, label %do.body.i72

sw.bb.i71.cleanup_crit_edge:                      ; preds = %sw.bb.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i72:                                      ; preds = %sw.bb.i71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %93 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp1.not.i = icmp eq i32 %93, 0
  br i1 %cmp1.not.i, label %do.body.i72.cleanup_crit_edge, label %do.end.i74

do.body.i72.cleanup_crit_edge:                    ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i74:                                       ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #10
  %call.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #11
  br label %cleanup

sw.bb6.i:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp7.i = icmp eq i32 %command, 0
  br i1 %cmp7.i, label %do.body9.i, label %do.body30.i

do.body9.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !480
  tail call void @arm_heavy_mb() #8
  %lmmio.i75 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %lmmio.i75 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lmmio.i75, align 4
  %add.ptr.i76 = getelementptr i32, ptr %95, i32 868356
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !481
  %97 = and i32 %96, -268435457
  %98 = ptrtoint ptr %lmmio.i75 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lmmio.i75, align 4
  %add.ptr15.i = getelementptr i32, ptr %99, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %97) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !482
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %lmmio.i75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio.i75, align 4
  %add.ptr21.i = getelementptr i32, ptr %101, i32 868356
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  %103 = or i32 %102, 268435456
  %104 = ptrtoint ptr %lmmio.i75 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lmmio.i75, align 4
  %add.ptr28.i = getelementptr i32, ptr %105, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %103) #8, !srcloc !459
  br label %cleanup

do.body30.i:                                      ; preds = %sw.bb6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %106 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp31.not.i = icmp eq i32 %106, 0
  br i1 %cmp31.not.i, label %do.body30.i.cleanup_crit_edge, label %do.end34.i

do.body30.i.cleanup_crit_edge:                    ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end34.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #11
  br label %cleanup

do.end51:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.end34.i, %do.body30.i.cleanup_crit_edge, %do.body9.i, %do.end.i74, %do.body.i72.cleanup_crit_edge, %sw.bb.i71.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %sw.bb.i68, %do.end34.cleanup_crit_edge, %while.body64.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %sw.bb5.i, %do.body31.i.i, %do.body.i14.i, %sw.bb3.i.cleanup_crit_edge, %while.end10.i.i, %sw.bb1.i.cleanup_crit_edge, %while.body41.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end51 ], [ -22, %do.end5 ], [ -22, %do.end ], [ -22, %if.end8.cleanup_crit_edge ], [ %call6.i, %sw.bb5.i ], [ -22, %sw.epilog.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ 0, %while.end10.i.i ], [ -22, %sw.bb1.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ 0, %do.body.i14.i ], [ 0, %do.body31.i.i ], [ %call.i, %sw.bb.i68 ], [ -22, %do.end34.cleanup_crit_edge ], [ 0, %do.body9.i ], [ 0, %sw.bb.i71.cleanup_crit_edge ], [ -22, %do.body.i72.cleanup_crit_edge ], [ -22, %do.end.i74 ], [ -22, %do.body30.i.cleanup_crit_edge ], [ -22, %do.end34.i ], [ 0, %do.end47.cleanup_crit_edge ], [ 0, %while.body64.i.cleanup_crit_edge ], [ 0, %while.body41.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cx88_setup_xc3028(ptr nocapture noundef %core, ptr nocapture noundef %ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ctl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.18, ptr %ctl, align 4
  %max_len = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 1
  %3 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %max_len, align 4
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %4 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardnr, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %5, label %sw.default [
    i32 62, label %sw.bb
    i32 64, label %entry.sw.bb3_crit_edge
    i32 81, label %entry.sw.bb3_crit_edge38
    i32 67, label %entry.sw.bb4_crit_edge
    i32 59, label %entry.sw.bb4_crit_edge39
    i32 63, label %sw.bb6
    i32 91, label %sw.bb7
    i32 61, label %entry.sw.epilog_crit_edge
    i32 74, label %entry.sw.epilog_crit_edge40
    i32 66, label %entry.sw.epilog_crit_edge41
    i32 60, label %entry.sw.bb14_crit_edge
    i32 79, label %entry.sw.bb14_crit_edge42
  ]

entry.sw.bb14_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb4_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb3_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  %udelay = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 12, i32 7
  %7 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %udelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp = icmp slt i32 %8, 16
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %udelay, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge38
  %demod = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %10 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4560, ptr %demod, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge39
  %demod5 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %11 = ptrtoint ptr %demod5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5380, ptr %demod5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %disable_power_mgmt = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 4
  %12 = ptrtoint ptr %disable_power_mgmt to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %disable_power_mgmt, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %disable_power_mgmt, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demod8 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %13 = ptrtoint ptr %demod8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4560, ptr %demod8, align 4
  %14 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.19, ptr %ctl, align 4
  %read_not_reliable = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 4
  %15 = ptrtoint ptr %read_not_reliable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load10 = load i8, ptr %read_not_reliable, align 4
  %bf.set12 = or i8 %bf.load10, 4
  store i8 %bf.set12, ptr %read_not_reliable, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge42
  %demod15 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %16 = ptrtoint ptr %demod15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4560, ptr %demod15, align 4
  %mts = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 4
  %17 = ptrtoint ptr %mts to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load16 = load i8, ptr %mts, align 4
  %bf.set18 = or i8 %bf.load16, -128
  store i8 %bf.set18, ptr %mts, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demod19 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %18 = ptrtoint ptr %demod19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5380, ptr %demod19, align 4
  %mts20 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 4
  %19 = ptrtoint ptr %mts20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load21 = load i8, ptr %mts20, align 4
  %bf.set23 = or i8 %bf.load21, -128
  store i8 %bf.set23, ptr %mts20, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge40, %entry.sw.epilog_crit_edge41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_get_resources(ptr noundef %core, ptr nocapture noundef readonly %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %name = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 3
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %cond, ptr noundef %name, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %and = and i32 %5, 7
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %conv = zext i32 %7 to i64
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %8 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_vendor, align 4
  %conv12 = zext i16 %9 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %10 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_device, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and, i64 noundef %conv, i32 noundef %conv12, i32 noundef %conv13) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx88_core_create(ptr noundef %pci, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3472) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %conv = zext i8 %5 to i32
  %pci_bus = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %pci_bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %pci_bus, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 6
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %8, 3
  %and = and i32 %shr, 31
  %pci_slot = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %pci_slot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %pci_slot, align 8
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64512, ptr %pci_irqmask, align 8
  %lock = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 43
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @cx88_core_create.__key) #8
  %nr1 = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %nr1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nr, ptr %nr1, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 3
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.23, i32 noundef %nr)
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 28
  %12 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %tvnorm, align 8
  %width = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 29
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 320, ptr %width, align 8
  %height = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 30
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 240, ptr %height, align 4
  %field = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 31
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field, align 8
  %v4l2_dev = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 16
  %name4 = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 16, i32 4
  %call8 = tail call i32 @strscpy(ptr noundef %name4, ptr noundef %name, i32 noundef 36) #8
  %call10 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %video_hdl = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 17
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %video_hdl, i32 noundef 13, ptr noundef nonnull @cx88_core_create._key, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %audio_hdl = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 19
  %call20 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %audio_hdl, i32 noundef 13, ptr noundef nonnull @cx88_core_create._key.25, ptr noundef nonnull @.str.26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %video_hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %cond.i, ptr noundef %name, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devfn, align 4
  %and.i = and i32 %21, 7
  %22 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource.i, align 8
  %conv.i = zext i32 %23 to i64
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %24 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_vendor.i, align 4
  %conv12.i = zext i16 %25 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %26 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_device.i, align 2
  %conv13.i = zext i16 %27 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.i, i64 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv13.i) #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %video_hdl) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %audio_hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  tail call fastcc void @cx88_pci_quirks(ptr noundef %pci)
  %28 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource.i, align 8
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp38 = icmp eq i32 %31, 0
  %sub = sub i32 1, %29
  %add = add i32 %sub, %31
  %cond = select i1 %cmp38, i32 0, i32 %add
  %call46 = tail call ptr @ioremap(i32 noundef %29, i32 noundef %cond) #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call46, ptr %lmmio, align 4
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %bmmio to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call46, ptr %bmmio, align 8
  %tobool49.not = icmp eq ptr %call46, null
  br i1 %tobool49.not, label %if.then50, label %if.end74

if.then50:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource.i, align 8
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp57 = icmp eq i32 %37, 0
  %sub67 = sub i32 1, %35
  %add68 = add i32 %sub67, %37
  %cond70 = select i1 %cmp57, i32 0, i32 %add68
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %35, i32 noundef %cond70) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %video_hdl) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %audio_hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end32
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 22
  %38 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr1, align 4
  %arrayidx76 = getelementptr [8 x i32], ptr @card, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %41)
  %cmp77 = icmp ult i32 %41, 92
  %spec.store.select = select i1 %cmp77, i32 %41, i32 -1
  %42 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp85330 = icmp eq i32 %spec.store.select, -1
  br i1 %cmp85330, label %for.body.lr.ph, label %if.end74.if.end108_crit_edge

if.end74.if.end108_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

for.body.lr.ph:                                   ; preds = %if.end74
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %43 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %45 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %45)
  %boardnr.promoted = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %44)
  %cmp92.peel = icmp eq i16 %44, 112
  br i1 %cmp92.peel, label %land.lhs.true.peel, label %for.body.lr.ph.for.inc.peel_crit_edge

for.body.lr.ph.for.inc.peel_crit_edge:            ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.peel

land.lhs.true.peel:                               ; preds = %for.body.lr.ph
  %46 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13312, i16 %47)
  %cmp97.peel = icmp eq i16 %47, 13312
  br i1 %cmp97.peel, label %if.then99.peel, label %land.lhs.true.peel.for.inc.peel_crit_edge

land.lhs.true.peel.for.inc.peel_crit_edge:        ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.peel

if.then99.peel:                                   ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %boardnr, align 4
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then99.peel, %land.lhs.true.peel.for.inc.peel_crit_edge, %for.body.lr.ph.for.inc.peel_crit_edge
  %.pr334.peel = phi i32 [ %boardnr.promoted, %for.body.lr.ph.for.inc.peel_crit_edge ], [ %boardnr.promoted, %land.lhs.true.peel.for.inc.peel_crit_edge ], [ 1, %if.then99.peel ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr334.peel)
  %cmp85.peel = icmp eq i32 %.pr334.peel, -1
  br i1 %cmp85.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %i.0331 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.inc.peel.for.body_crit_edge ]
  %arrayidx90 = getelementptr [121 x %struct.cx88_subid], ptr @cx88_subids, i32 0, i32 %i.0331
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %50)
  %cmp92 = icmp eq i16 %44, %50
  br i1 %cmp92, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %51 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %subsystem_device, align 2
  %subdevice = getelementptr [121 x %struct.cx88_subid], ptr @cx88_subids, i32 0, i32 %i.0331, i32 1
  %53 = ptrtoint ptr %subdevice to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %subdevice, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp97 = icmp eq i16 %52, %54
  br i1 %cmp97, label %if.then99, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then99:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr [121 x %struct.cx88_subid], ptr @cx88_subids, i32 0, i32 %i.0331, i32 2
  %55 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %card, align 4
  %57 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %boardnr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then99, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.pr334 = phi i32 [ -1, %for.body.for.inc_crit_edge ], [ -1, %land.lhs.true.for.inc_crit_edge ], [ %56, %if.then99 ]
  %inc = add nuw nsw i32 %i.0331, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr334)
  %cmp85 = icmp eq i32 %.pr334, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %i.0331)
  %cmp87 = icmp ult i32 %i.0331, 120
  %or.cond = select i1 %cmp85, i1 %cmp87, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !484

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge
  %cmp85.lcssa = phi i1 [ %cmp85.peel, %for.inc.peel.for.end_crit_edge ], [ %cmp85, %for.inc.for.end_crit_edge ]
  br i1 %cmp85.lcssa, label %if.then106, label %for.end.if.end108_crit_edge

for.end.if.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then106:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %boardnr, align 4
  tail call fastcc void @cx88_card_list(ptr noundef %pci)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %for.end.if.end108_crit_edge, %if.end74.if.end108_crit_edge
  %board = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23
  %59 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %boardnr, align 4
  %arrayidx110 = getelementptr [92 x %struct.cx88_board], ptr @cx88_boards, i32 0, i32 %60
  %61 = call ptr @memcpy(ptr %board, ptr %arrayidx110, i32 252)
  %num_frontends = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 10
  %62 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool112.not = icmp eq i32 %63, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %if.end108.do.end123_crit_edge

if.end108.do.end123_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end123

land.lhs.true113:                                 ; preds = %if.end108
  %mpeg = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 8
  %64 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mpeg, align 4
  %and115 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %land.lhs.true113.do.end123_crit_edge, label %if.then117

land.lhs.true113.do.end123_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end123

if.then117:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %num_frontends to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %num_frontends, align 4
  br label %do.end123

do.end123:                                        ; preds = %if.then117, %land.lhs.true113.do.end123_crit_edge, %if.end108.do.end123_crit_edge
  %subsystem_vendor125 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %67 = ptrtoint ptr %subsystem_vendor125 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %subsystem_vendor125, align 4
  %conv126 = zext i16 %68 to i32
  %subsystem_device127 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %69 = ptrtoint ptr %subsystem_device127 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %subsystem_device127, align 2
  %conv128 = zext i16 %70 to i32
  %71 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %board, align 8
  %73 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %boardnr, align 4
  %75 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr1, align 4
  %arrayidx133 = getelementptr [8 x i32], ptr @card, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %74)
  %cmp135 = icmp eq i32 %78, %74
  %cond137 = select i1 %cmp135, ptr @.str.29, ptr @.str.30
  %79 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_frontends, align 4
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv126, i32 noundef %conv128, ptr noundef %72, i32 noundef %74, ptr noundef nonnull %cond137, i32 noundef %80) #11
  %81 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr1, align 4
  %arrayidx142 = getelementptr [8 x i32], ptr @tuner, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp143.not = icmp eq i32 %84, -1
  br i1 %cmp143.not, label %do.end123.if.end149_crit_edge, label %if.then145

do.end123.if.end149_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then145:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 1
  %85 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tuner_type, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %do.end123.if.end149_crit_edge
  %86 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr1, align 4
  %arrayidx151 = getelementptr [8 x i32], ptr @radio, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp152.not = icmp eq i32 %89, -1
  br i1 %cmp152.not, label %if.end149.do.body159_crit_edge, label %if.then154

if.end149.do.body159_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body159

if.then154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %radio_type = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 2
  %90 = ptrtoint ptr %radio_type to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %radio_type, align 8
  br label %do.body159

do.body159:                                       ; preds = %if.then154, %if.end149.do.body159_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %91 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp160.not = icmp eq i32 %91, 0
  br i1 %cmp160.not, label %do.body159.do.end174_crit_edge, label %do.end165

do.body159.do.end174_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end174

do.end165:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  %tuner_type168 = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 1
  %92 = ptrtoint ptr %tuner_type168 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tuner_type168, align 4
  %radio_type170 = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 2
  %94 = ptrtoint ptr %radio_type170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %radio_type170, align 8
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %93, i32 noundef %95) #11
  br label %do.end174

do.end174:                                        ; preds = %do.end165, %do.body159.do.end174_crit_edge
  %call175 = tail call i32 @cx88_reset(ptr noundef nonnull %call7.i.i) #8
  tail call fastcc void @cx88_card_setup_pre_i2c(ptr noundef nonnull %call7.i.i)
  %call176 = tail call i32 @cx88_i2c_init(ptr noundef nonnull %call7.i.i, ptr noundef %pci) #8
  %tuner_type178 = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 1
  %96 = ptrtoint ptr %tuner_type178 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tuner_type178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp179.not = icmp eq i32 %97, -1
  br i1 %cmp179.not, label %do.end174.if.end210_crit_edge, label %if.then181

do.end174.if.end210_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then181:                                       ; preds = %do.end174
  %tda9887_conf = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 5
  %98 = ptrtoint ptr %tda9887_conf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tda9887_conf, align 8
  %and183 = and i32 %99, 1
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 11
  %call185 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 0) #8
  %call186 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.34, i8 noundef zeroext 0, ptr noundef %call185) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool187.not = icmp eq i32 %and183, 0
  br i1 %tobool187.not, label %if.then181.if.end193_crit_edge, label %if.then188

if.then181.if.end193_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then188:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  %call191 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 1) #8
  %call192 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.34, i8 noundef zeroext 0, ptr noundef %call191) #8
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.then181.if.end193_crit_edge
  %tuner_addr = getelementptr inbounds %struct.cx88_core, ptr %call7.i.i, i32 0, i32 23, i32 3
  %100 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tuner_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp196 = icmp eq i8 %101, -1
  br i1 %cmp196, label %if.then198, label %if.else

if.then198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  %cond202 = select i1 %tobool187.not, ptr @cx88_core_create.tv_addrs, ptr getelementptr inbounds ([19 x i16], ptr @cx88_core_create.tv_addrs, i32 0, i32 4)
  %call203 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.34, i8 noundef zeroext 0, ptr noundef %cond202) #8
  br label %if.end210

if.else:                                          ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  %call208 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.34, i8 noundef zeroext %101, ptr noundef null) #8
  br label %if.end210

if.end210:                                        ; preds = %if.else, %if.then198, %do.end174.if.end210_crit_edge
  tail call fastcc void @cx88_card_setup(ptr noundef nonnull %call7.i.i)
  %102 = load i32, ptr @disable_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool211.not = icmp eq i32 %102, 0
  br i1 %tobool211.not, label %if.then212, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cx88_i2c_init_ir(ptr noundef nonnull %call7.i.i) #8
  %call213 = tail call i32 @cx88_ir_init(ptr noundef nonnull %call7.i.i, ptr noundef %pci) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then212, %if.end210.cleanup_crit_edge, %if.then50, %if.then28, %if.then22, %if.then16, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ null, %if.then16 ], [ null, %if.then22 ], [ null, %if.then28 ], [ null, %if.then50 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then212 ], [ %call7.i.i, %if.end210.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx88_pci_quirks(ptr noundef %pci) unnamed_addr #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !486
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %1 = load i32, ptr @pci_pci_problems, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ctrl.0 = phi i8 [ 2, %do.end ], [ 0, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %2 = load i32, ptr @pci_pci_problems, align 4
  %and2 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %do.end7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end7, %if.end.if.end13_crit_edge
  %ctrl.1 = phi i8 [ 2, %do.end7 ], [ %ctrl.0, %if.end.if.end13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %3 = load i32, ptr @pci_pci_problems, align 4
  %and14 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %do.end19

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %if.end13.if.end25_crit_edge
  %ctrl.2 = phi i8 [ 2, %do.end19 ], [ %ctrl.1, %if.end13.if.end25_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %4 = load i32, ptr @pci_pci_problems, align 4
  %and26 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end37_crit_edge, label %do.end31

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #11
  %5 = or i8 %ctrl.2, 4
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %if.end25.if.end37_crit_edge
  %ctrl.3 = phi i8 [ %5, %do.end31 ], [ %ctrl.2, %if.end25.if.end37_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %6 = load i32, ptr @pci_pci_problems, align 4
  %and38 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end46_crit_edge, label %do.end43

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end37.if.end46_crit_edge
  %lat.0 = phi i32 [ 10, %do.end43 ], [ -1, %if.end37.if.end46_crit_edge ]
  %7 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not = icmp eq i32 %7, -1
  %spec.select = select i1 %cmp.not, i32 %lat.0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl.3)
  %tobool50.not = icmp eq i8 %ctrl.3, 0
  br i1 %tobool50.not, label %if.end46.if.end58_crit_edge, label %if.then51

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 64, ptr noundef nonnull %value) #8
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value, align 1
  %or551 = or i8 %9, %ctrl.3
  store i8 %or551, ptr %value, align 1
  %call57 = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 64, i8 noundef zeroext %or551) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end46.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp59.not = icmp eq i32 %spec.select, -1
  br i1 %cmp59.not, label %if.end58.if.end69_crit_edge, label %do.end64

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @latency, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %10) #11
  %11 = load i32, ptr @latency, align 4
  %conv67 = trunc i32 %11 to i8
  %call68 = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 13, i8 noundef zeroext %conv67) #8
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %if.end58.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx88_card_list(ptr nocapture noundef readonly %pci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %0 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end19_crit_edge

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.do.end39_crit_edge, label %land.lhs.true.do.end19_crit_edge

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end19:                                         ; preds = %land.lhs.true.do.end19_crit_edge, %entry.do.end19_crit_edge
  br label %do.end39

do.end39:                                         ; preds = %do.end19, %land.lhs.true.do.end39_crit_edge
  %.str.61.sink = phi ptr [ @.str.73, %do.end19 ], [ @.str.61, %land.lhs.true.do.end39_crit_edge ]
  %.str.64.sink = phi ptr [ @.str.76, %do.end19 ], [ @.str.64, %land.lhs.true.do.end39_crit_edge ]
  %.str.67.sink = phi ptr [ @.str.79, %do.end19 ], [ @.str.67, %land.lhs.true.do.end39_crit_edge ]
  %.str.70.sink = phi ptr [ @.str.82, %do.end19 ], [ @.str.70, %land.lhs.true.do.end39_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.61.sink) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink) #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.67.sink) #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.70.sink) #11
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #11
  br label %do.end44

do.end44:                                         ; preds = %do.end44.do.end44_crit_edge, %do.end39
  %i.01 = phi i32 [ 0, %do.end39 ], [ %inc, %do.end44.do.end44_crit_edge ]
  %arrayidx = getelementptr [92 x %struct.cx88_board], ptr @cx88_boards, i32 0, i32 %i.01
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %i.01, ptr noundef %5) #11
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 92
  br i1 %exitcond.not, label %for.end, label %do.end44.do.end44_crit_edge

do.end44.do.end44_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

for.end:                                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx88_card_setup_pre_i2c(ptr nocapture noundef readonly %core) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 56, label %do.body
    i32 74, label %entry.do.body22_crit_edge
    i32 66, label %entry.do.body22_crit_edge117
    i32 65, label %do.body35
    i32 82, label %entry.do.body49_crit_edge
    i32 53, label %entry.do.body49_crit_edge118
    i32 68, label %entry.do.body49_crit_edge119
    i32 91, label %entry.sw.bb79_crit_edge
    i32 61, label %entry.sw.bb79_crit_edge120
    i32 81, label %entry.sw.bb79_crit_edge121
    i32 88, label %entry.sw.bb81_crit_edge
    i32 87, label %entry.sw.bb81_crit_edge122
    i32 89, label %entry.sw.bb81_crit_edge123
    i32 90, label %entry.sw.bb81_crit_edge124
    i32 85, label %do.body84
  ]

entry.sw.bb81_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

entry.sw.bb81_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

entry.sw.bb81_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

entry.sw.bb81_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

entry.sw.bb79_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79

entry.sw.bb79_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79

entry.sw.bb79_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79

entry.do.body49_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

entry.do.body49_crit_edge118:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

entry.do.body49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

entry.do.body22_crit_edge117:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %4, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1997602816) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !488
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %7, i32 868356
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !489
  %9 = and i32 %8, 2013265919
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %11, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !490
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr13 = getelementptr i32, ptr %14, i32 868356
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !491
  %16 = or i32 %15, -2013265920
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %18, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  br label %sw.epilog

do.body22:                                        ; preds = %entry.do.body22_crit_edge, %entry.do.body22_crit_edge117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !492
  tail call void @arm_heavy_mb() #8
  %lmmio24 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %20 = ptrtoint ptr %lmmio24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio24, align 4
  %add.ptr25 = getelementptr i32, ptr %21, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -150208512) #8, !srcloc !459
  tail call void @msleep(i32 noundef 50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !493
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %lmmio24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio24, align 4
  %add.ptr29 = getelementptr i32, ptr %23, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -183631872) #8, !srcloc !459
  tail call void @msleep(i32 noundef 50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !494
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %lmmio24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio24, align 4
  %add.ptr33 = getelementptr i32, ptr %25, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -150208512) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  br label %sw.epilog

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !495
  tail call void @arm_heavy_mb() #8
  %lmmio39 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %26 = ptrtoint ptr %lmmio39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio39, align 4
  %add.ptr40 = getelementptr i32, ptr %27, i32 868356
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !496
  %29 = or i32 %28, 269484032
  %30 = ptrtoint ptr %lmmio39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio39, align 4
  %add.ptr47 = getelementptr i32, ptr %31, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %29) #8, !srcloc !459
  br label %sw.epilog

do.body49:                                        ; preds = %entry.do.body49_crit_edge, %entry.do.body49_crit_edge118, %entry.do.body49_crit_edge119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !497
  tail call void @arm_heavy_mb() #8
  %gpio0 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio0, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %lmmio51 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %35 = ptrtoint ptr %lmmio51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio51, align 4
  %add.ptr52 = getelementptr i32, ptr %36, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %34) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !498
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %lmmio51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio51, align 4
  %add.ptr58 = getelementptr i32, ptr %39, i32 868356
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !499
  %41 = and i32 %40, 2147483647
  %42 = ptrtoint ptr %lmmio51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio51, align 4
  %add.ptr65 = getelementptr i32, ptr %43, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %41) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !500
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %lmmio51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio51, align 4
  %add.ptr71 = getelementptr i32, ptr %46, i32 868356
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !501
  %48 = or i32 %47, -2147483648
  %49 = ptrtoint ptr %lmmio51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio51, align 4
  %add.ptr78 = getelementptr i32, ptr %50, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %48) #8, !srcloc !459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #8
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry.sw.bb79_crit_edge, %entry.sw.bb79_crit_edge120, %entry.sw.bb79_crit_edge121
  %52 = tail call fastcc i32 @cx88_xc3028_winfast1800h_callback(ptr noundef %core, i32 noundef 0)
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry.sw.bb81_crit_edge, %entry.sw.bb81_crit_edge122, %entry.sw.bb81_crit_edge123, %entry.sw.bb81_crit_edge124
  %53 = tail call fastcc i32 @cx88_xc4000_winfast2000h_plus_callback(ptr noundef %core, i32 noundef 0)
  br label %sw.epilog

do.body84:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !502
  tail call void @arm_heavy_mb() #8
  %lmmio86 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %54 = ptrtoint ptr %lmmio86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio86, align 4
  %add.ptr87 = getelementptr i32, ptr %55, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 808583168) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !503
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %lmmio86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio86, align 4
  %add.ptr91 = getelementptr i32, ptr %57, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 271712256) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !504
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %lmmio86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio86, align 4
  %add.ptr95 = getelementptr i32, ptr %59, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 806486016) #8, !srcloc !459
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body84, %sw.bb81, %sw.bb79, %do.body49, %do.body35, %do.body22, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_i2c_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx88_card_setup(ptr noundef %core) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 8
  %tun_setup = alloca %struct.tuner_setup, align 4
  %tea5767_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %ctl = alloca %struct.tea5767_ctrl, align 8
  %tda9887_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %xc2028_cfg = alloca %struct.v4l2_priv_tun_config, align 8
  %ctl506 = alloca %struct.xc2028_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #8
  %0 = call ptr @memset(ptr %tun_setup, i32 0, i32 20)
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 15
  %1 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c_client = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13
  %addr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 80, ptr %addr, align 2
  %call = tail call i32 @tveeprom_read(ptr noundef %i2c_client, ptr noundef nonnull @cx88_card_setup.eeprom, i32 noundef 256) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %4 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardnr, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 24, label %if.end.sw.bb_crit_edge861
    i32 2, label %sw.bb6
    i32 9, label %if.end.sw.bb11_crit_edge
    i32 8, label %if.end.sw.bb11_crit_edge862
    i32 5, label %if.end.sw.bb11_crit_edge863
    i32 37, label %if.end.sw.bb16_crit_edge
    i32 38, label %if.end.sw.bb16_crit_edge864
    i32 18, label %if.end.sw.bb16_crit_edge865
    i32 40, label %if.end.sw.bb16_crit_edge866
    i32 41, label %if.end.sw.bb16_crit_edge867
    i32 53, label %if.end.sw.bb16_crit_edge868
    i32 56, label %if.end.sw.bb16_crit_edge869
    i32 68, label %if.end.sw.bb16_crit_edge870
    i32 69, label %if.end.sw.bb16_crit_edge871
    i32 80, label %if.end.sw.bb16_crit_edge872
    i32 39, label %do.body
    i32 64, label %do.body28
    i32 44, label %do.body39
    i32 15, label %if.end.do.body77_crit_edge
    i32 21, label %if.end.do.body77_crit_edge873
    i32 46, label %if.end.do.body77_crit_edge874
    i32 14, label %if.end.do.body125_crit_edge
    i32 23, label %if.end.do.body125_crit_edge875
    i32 42, label %do.body196
    i32 34, label %sw.bb201
    i32 7, label %sw.bb219
    i32 73, label %if.end.do.body275_crit_edge
    i32 70, label %if.end.do.body275_crit_edge876
    i32 86, label %if.end.do.body275_crit_edge877
    i32 71, label %if.end.do.body275_crit_edge878
    i32 77, label %if.end.do.body275_crit_edge879
    i32 72, label %if.end.do.body275_crit_edge880
    i32 78, label %if.end.do.body275_crit_edge881
    i32 75, label %if.end.do.body275_crit_edge882
    i32 83, label %if.end.do.body275_crit_edge883
    i32 76, label %if.end.do.body275_crit_edge884
  ]

if.end.do.body275_crit_edge884:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge883:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge882:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge881:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge880:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge879:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge878:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge877:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge876:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body275_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body275

if.end.do.body125_crit_edge875:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end.do.body125_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.end.do.body77_crit_edge874:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end.do.body77_crit_edge873:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end.do.body77_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end.sw.bb16_crit_edge872:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge871:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge870:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge869:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge868:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge867:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge866:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge865:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge864:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end.sw.bb11_crit_edge863:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

if.end.sw.bb11_crit_edge862:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

if.end.sw.bb_crit_edge861:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge861
  %7 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.then4, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hauppauge_eeprom(ptr noundef %core, ptr noundef getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 8))
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %9 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then9, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gdi_eeprom(ptr noundef %core)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge862, %if.end.sw.bb11_crit_edge863
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.then14, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb11
  %13 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %13)
  %cmp.not.i = icmp eq i8 %13, 125
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then14.do.end.i_crit_edge

if.then14.do.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then14
  %14 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp4.not.i = icmp eq i8 %14, 16
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %15 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %15)
  %cmp9.not.i = icmp eq i8 %15, 102
  br i1 %cmp9.not.i, label %if.end.i, label %lor.lhs.false6.i.do.end.i_crit_edge

lor.lhs.false6.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false6.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.then14.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %16 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 6), align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %16, label %sw.default.i [
    i8 19, label %if.end.i.do.end16.i_crit_edge
    i8 33, label %if.end.i.do.end16.i_crit_edge885
    i8 49, label %if.end.i.do.end16.i_crit_edge886
    i8 55, label %if.end.i.do.end16.i_crit_edge887
    i8 61, label %if.end.i.do.end16.i_crit_edge888
  ]

if.end.i.do.end16.i_crit_edge888:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

if.end.i.do.end16.i_crit_edge887:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

if.end.i.do.end16.i_crit_edge886:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

if.end.i.do.end16.i_crit_edge885:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

if.end.i.do.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %sw.default.i, %if.end.i.do.end16.i_crit_edge, %if.end.i.do.end16.i_crit_edge885, %if.end.i.do.end16.i_crit_edge886, %if.end.i.do.end16.i_crit_edge887, %if.end.i.do.end16.i_crit_edge888
  %.sink.i = phi i32 [ 38, %sw.default.i ], [ 43, %if.end.i.do.end16.i_crit_edge ], [ 43, %if.end.i.do.end16.i_crit_edge885 ], [ 43, %if.end.i.do.end16.i_crit_edge886 ], [ 43, %if.end.i.do.end16.i_crit_edge887 ], [ 43, %if.end.i.do.end16.i_crit_edge888 ]
  %tuner_type14.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %18 = ptrtoint ptr %tuner_type14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i, ptr %tuner_type14.i, align 4
  %19 = load i8, ptr @cx88_card_setup.eeprom, align 1
  %conv21.i = zext i8 %19 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %.sink.i, i32 noundef %conv21.i) #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge864, %if.end.sw.bb16_crit_edge865, %if.end.sw.bb16_crit_edge866, %if.end.sw.bb16_crit_edge867, %if.end.sw.bb16_crit_edge868, %if.end.sw.bb16_crit_edge869, %if.end.sw.bb16_crit_edge870, %if.end.sw.bb16_crit_edge871, %if.end.sw.bb16_crit_edge872
  %20 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  br i1 %tobool18.not, label %if.then19, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hauppauge_eeprom(ptr noundef %core, ptr noundef nonnull @cx88_card_setup.eeprom)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !505
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %23, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -133758976) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !506
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %25, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 16777216) #8, !srcloc !459
  br label %sw.epilog

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !507
  tail call void @arm_heavy_mb() #8
  %lmmio31 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %26 = ptrtoint ptr %lmmio31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio31, align 4
  %add.ptr32 = getelementptr i32, ptr %27, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1118464) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !508
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %lmmio31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio31, align 4
  %add.ptr37 = getelementptr i32, ptr %29, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 286331136) #8, !srcloc !459
  br label %sw.epilog

do.body39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !509
  tail call void @arm_heavy_mb() #8
  %lmmio42 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %30 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio42, align 4
  %add.ptr43 = getelementptr i32, ptr %31, i32 868356
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !510
  %33 = or i32 %32, 1077936128
  %34 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio42, align 4
  %add.ptr47 = getelementptr i32, ptr %35, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %33) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !511
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio42, align 4
  %add.ptr54 = getelementptr i32, ptr %37, i32 868356
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !512
  %39 = and i32 %38, -1073741825
  %40 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio42, align 4
  %add.ptr61 = getelementptr i32, ptr %41, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %39) #8, !srcloc !459
  tail call void @msleep(i32 noundef 1000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !513
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio42, align 4
  %add.ptr68 = getelementptr i32, ptr %43, i32 868356
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !514
  %45 = or i32 %44, 1077936128
  %46 = ptrtoint ptr %lmmio42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio42, align 4
  %add.ptr75 = getelementptr i32, ptr %47, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %45) #8, !srcloc !459
  br label %do.body77

do.body77:                                        ; preds = %do.body39, %if.end.do.body77_crit_edge, %if.end.do.body77_crit_edge873, %if.end.do.body77_crit_edge874
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !515
  tail call void @arm_heavy_mb() #8
  %lmmio82 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %48 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio82, align 4
  %add.ptr83 = getelementptr i32, ptr %49, i32 868356
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !516
  %51 = or i32 %50, 16842752
  %52 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio82, align 4
  %add.ptr90 = getelementptr i32, ptr %53, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %51) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !517
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio82, align 4
  %add.ptr97 = getelementptr i32, ptr %55, i32 868356
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !518
  %57 = and i32 %56, -16777217
  %58 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio82, align 4
  %add.ptr104 = getelementptr i32, ptr %59, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %57) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !519
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio82, align 4
  %add.ptr111 = getelementptr i32, ptr %61, i32 868356
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !520
  %63 = or i32 %62, 16842752
  %64 = ptrtoint ptr %lmmio82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio82, align 4
  %add.ptr118 = getelementptr i32, ptr %65, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %63) #8, !srcloc !459
  %66 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool120.not = icmp eq i32 %67, 0
  br i1 %tobool120.not, label %land.lhs.true, label %do.body77.sw.epilog_crit_edge

do.body77.sw.epilog_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %do.body77
  %68 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %69)
  %cmp = icmp eq i32 %69, 46
  br i1 %cmp, label %if.then122, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then122:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %70 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 19421773393035264, ptr %msg.i, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 2
  %i2c_adap.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then122
  %i.013.i = phi i32 [ 0, %if.then122 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [13 x [5 x i8]], ptr @dvico_fusionhdtv_hybrid_init.init_bufs, i32 0, i32 %i.013.i
  %71 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx.i, ptr %buf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.013.i)
  %cmp1.not.i = icmp eq i32 %i.013.i, 12
  %conv.i = select i1 %cmp1.not.i, i16 2, i16 5
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i, ptr %len.i, align 4
  %call.i813 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i813)
  %cmp2.not.i = icmp eq i32 %call.i813, 1
  br i1 %cmp2.not.i, label %for.inc.i, label %do.end.i814

do.end.i814:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %i.013.i, i32 noundef %call.i813) #11
  br label %dvico_fusionhdtv_hybrid_init.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.dvico_fusionhdtv_hybrid_init.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.dvico_fusionhdtv_hybrid_init.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvico_fusionhdtv_hybrid_init.exit

dvico_fusionhdtv_hybrid_init.exit:                ; preds = %for.inc.i.dvico_fusionhdtv_hybrid_init.exit_crit_edge, %do.end.i814
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  br label %sw.epilog

do.body125:                                       ; preds = %if.end.do.body125_crit_edge, %if.end.do.body125_crit_edge875
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !521
  tail call void @arm_heavy_mb() #8
  %lmmio130 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %73 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio130, align 4
  %add.ptr131 = getelementptr i32, ptr %74, i32 868356
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !522
  %76 = or i32 %75, 117899264
  %77 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lmmio130, align 4
  %add.ptr138 = getelementptr i32, ptr %78, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %76) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !523
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio130, align 4
  %add.ptr145 = getelementptr i32, ptr %80, i32 868358
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !524
  %82 = or i32 %81, 16842752
  %83 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lmmio130, align 4
  %add.ptr152 = getelementptr i32, ptr %84, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %82) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !525
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio130, align 4
  %add.ptr159 = getelementptr i32, ptr %86, i32 868358
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !526
  %88 = and i32 %87, -16777217
  %89 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lmmio130, align 4
  %add.ptr166 = getelementptr i32, ptr %90, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %88) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !527
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio130, align 4
  %add.ptr173 = getelementptr i32, ptr %92, i32 868356
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !528
  %94 = and i32 %93, -117440513
  %95 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lmmio130, align 4
  %add.ptr180 = getelementptr i32, ptr %96, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %94) #8, !srcloc !459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !529
  tail call void @arm_heavy_mb() #8
  %97 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio130, align 4
  %add.ptr187 = getelementptr i32, ptr %98, i32 868358
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !530
  %100 = or i32 %99, 16842752
  %101 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lmmio130, align 4
  %add.ptr194 = getelementptr i32, ptr %102, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 %100) #8, !srcloc !459
  br label %sw.epilog

do.body196:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !531
  tail call void @arm_heavy_mb() #8
  %lmmio199 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %103 = ptrtoint ptr %lmmio199 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio199, align 4
  %add.ptr200 = getelementptr i32, ptr %104, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 134744064) #8, !srcloc !459
  br label %sw.epilog

sw.bb201:                                         ; preds = %if.end
  %105 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool203.not = icmp eq i32 %106, 0
  br i1 %tobool203.not, label %if.then204, label %sw.bb201.sw.epilog_crit_edge

sw.bb201.sw.epilog_crit_edge:                     ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then204:                                       ; preds = %sw.bb201
  %i2c_client205 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13
  %addr206 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13, i32 1
  %107 = ptrtoint ptr %addr206 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 10, ptr %addr206, align 2
  %call.i815 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client205, ptr noundef nonnull @cx88_card_setup.buffer, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i815)
  %cmp210.not = icmp eq i32 %call.i815, 2
  br i1 %cmp210.not, label %if.then204.for.inc_crit_edge, label %do.end214

if.then204.for.inc_crit_edge:                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end214:                                        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end214, %if.then204.for.inc_crit_edge
  %call.i815.1 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client205, ptr noundef getelementptr inbounds ([5 x [2 x i8]], ptr @cx88_card_setup.buffer, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i815.1)
  %cmp210.not.1 = icmp eq i32 %call.i815.1, 2
  br i1 %cmp210.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end214.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.end214.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %call216.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end214.1, %for.inc.for.inc.1_crit_edge
  %call.i815.2 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client205, ptr noundef getelementptr inbounds ([5 x [2 x i8]], ptr @cx88_card_setup.buffer, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i815.2)
  %cmp210.not.2 = icmp eq i32 %call.i815.2, 2
  br i1 %cmp210.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end214.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

do.end214.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %call216.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end214.2, %for.inc.1.for.inc.2_crit_edge
  %call.i815.3 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client205, ptr noundef getelementptr inbounds ([5 x [2 x i8]], ptr @cx88_card_setup.buffer, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i815.3)
  %cmp210.not.3 = icmp eq i32 %call.i815.3, 2
  br i1 %cmp210.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end214.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

do.end214.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %call216.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 3) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end214.3, %for.inc.2.for.inc.3_crit_edge
  %call.i815.4 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client205, ptr noundef getelementptr inbounds ([5 x [2 x i8]], ptr @cx88_card_setup.buffer, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i815.4)
  %cmp210.not.4 = icmp eq i32 %call.i815.4, 2
  br i1 %cmp210.not.4, label %for.inc.3.sw.epilog_crit_edge, label %do.end214.4

for.inc.3.sw.epilog_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end214.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %call216.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 4) #11
  br label %sw.epilog

sw.bb219:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tea5767_cfg) #8
  %108 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tea5767_cfg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctl) #8
  %109 = ptrtoint ptr %ctl to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 3602879701896396803, ptr %ctl, align 8
  %110 = ptrtoint ptr %tea5767_cfg to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 62, ptr %tea5767_cfg, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %ctl, ptr %108, align 4
  %112 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool228.not = icmp eq i32 %113, 0
  br i1 %tobool228.not, label %if.then229, label %sw.bb219.do.end273_crit_edge

sw.bb219.do.end273_crit_edge:                     ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end273

if.then229:                                       ; preds = %sw.bb219
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %114 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %gate_ctrl, align 4
  %tobool230.not = icmp eq ptr %115, null
  br i1 %tobool230.not, label %if.then229.do.body234_crit_edge, label %if.then231

if.then229.do.body234_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body234

if.then231:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #10
  call void %115(ptr noundef %core, i32 noundef 1) #8
  br label %do.body234

do.body234:                                       ; preds = %if.then231, %if.then229.do.body234_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %116 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn812819 = load ptr, ptr %subdevs, align 4
  %cmp241.not821 = icmp eq ptr %.pn812819, %subdevs
  br i1 %cmp241.not821, label %do.body234.do.end263_crit_edge, label %do.body234.for.body242_crit_edge

do.body234.for.body242_crit_edge:                 ; preds = %do.body234
  br label %for.body242

do.body234.do.end263_crit_edge:                   ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end263

for.body242:                                      ; preds = %for.inc255.for.body242_crit_edge, %do.body234.for.body242_crit_edge
  %.pn812822 = phi ptr [ %.pn812, %for.inc255.for.body242_crit_edge ], [ %.pn812819, %do.body234.for.body242_crit_edge ]
  %__sd.0823 = getelementptr i8, ptr %.pn812822, i32 -80
  %ops = getelementptr i8, ptr %.pn812822, i32 24
  %117 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops, align 4
  %tuner243 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %tuner243 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tuner243, align 4
  %tobool244.not = icmp eq ptr %120, null
  br i1 %tobool244.not, label %for.body242.for.inc255_crit_edge, label %land.lhs.true245

for.body242.for.inc255_crit_edge:                 ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc255

land.lhs.true245:                                 ; preds = %for.body242
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %120, i32 0, i32 10
  %121 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_config, align 4
  %tobool248.not = icmp eq ptr %122, null
  br i1 %tobool248.not, label %land.lhs.true245.for.inc255_crit_edge, label %if.then249

land.lhs.true245.for.inc255_crit_edge:            ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc255

if.then249:                                       ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #10
  %call253 = call i32 %122(ptr noundef %__sd.0823, ptr noundef nonnull %tea5767_cfg) #8
  br label %for.inc255

for.inc255:                                       ; preds = %if.then249, %land.lhs.true245.for.inc255_crit_edge, %for.body242.for.inc255_crit_edge
  %123 = ptrtoint ptr %.pn812822 to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pn812 = load ptr, ptr %.pn812822, align 4
  %cmp241.not = icmp eq ptr %.pn812, %subdevs
  br i1 %cmp241.not, label %for.inc255.do.end263_crit_edge, label %for.inc255.for.body242_crit_edge

for.inc255.for.body242_crit_edge:                 ; preds = %for.inc255
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body242

for.inc255.do.end263_crit_edge:                   ; preds = %for.inc255
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end263

do.end263:                                        ; preds = %for.inc255.do.end263_crit_edge, %do.body234.do.end263_crit_edge
  %124 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %gate_ctrl, align 4
  %tobool267.not = icmp eq ptr %125, null
  br i1 %tobool267.not, label %do.end263.do.end273_crit_edge, label %if.then268

do.end263.do.end273_crit_edge:                    ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end273

if.then268:                                       ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #10
  call void %125(ptr noundef %core, i32 noundef 0) #8
  br label %do.end273

do.end273:                                        ; preds = %if.then268, %do.end263.do.end273_crit_edge, %sw.bb219.do.end273_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tea5767_cfg) #8
  br label %sw.epilog

do.body275:                                       ; preds = %if.end.do.body275_crit_edge, %if.end.do.body275_crit_edge876, %if.end.do.body275_crit_edge877, %if.end.do.body275_crit_edge878, %if.end.do.body275_crit_edge879, %if.end.do.body275_crit_edge880, %if.end.do.body275_crit_edge881, %if.end.do.body275_crit_edge882, %if.end.do.body275_crit_edge883, %if.end.do.body275_crit_edge884
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !532
  tail call void @arm_heavy_mb() #8
  %lmmio278 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %126 = ptrtoint ptr %lmmio278 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lmmio278, align 4
  %add.ptr279 = getelementptr i32, ptr %127, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 8388608) #8, !srcloc !459
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !533
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %lmmio278 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lmmio278, align 4
  %add.ptr284 = getelementptr i32, ptr %129, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284, i32 0) #8, !srcloc !459
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !534
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %lmmio278 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lmmio278, align 4
  %add.ptr289 = getelementptr i32, ptr %131, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 -2139095040) #8, !srcloc !459
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !535
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %lmmio278 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lmmio278, align 4
  %add.ptr294 = getelementptr i32, ptr %133, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 16777216) #8, !srcloc !459
  tail call void @msleep(i32 noundef 100) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body275, %do.end273, %do.end214.4, %for.inc.3.sw.epilog_crit_edge, %sw.bb201.sw.epilog_crit_edge, %do.body196, %do.body125, %dvico_fusionhdtv_hybrid_init.exit, %land.lhs.true.sw.epilog_crit_edge, %do.body77.sw.epilog_crit_edge, %do.body28, %do.body, %if.then19, %sw.bb16.sw.epilog_crit_edge, %do.end16.i, %do.end.i, %sw.bb11.sw.epilog_crit_edge, %if.then9, %sw.bb6.sw.epilog_crit_edge, %if.then4, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %radio_type = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 2
  %134 = ptrtoint ptr %radio_type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %radio_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp295.not = icmp eq i32 %135, -1
  br i1 %cmp295.not, label %sw.epilog.if.end361_crit_edge, label %if.then296

sw.epilog.if.end361_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.then296:                                       ; preds = %sw.epilog
  %mode_mask297 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %136 = ptrtoint ptr %mode_mask297 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %mode_mask297, align 4
  %type = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %137 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %135, ptr %type, align 4
  %radio_addr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 4
  %138 = ptrtoint ptr %radio_addr to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %radio_addr, align 1
  %conv = zext i8 %139 to i16
  %140 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv, ptr %tun_setup, align 4
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %141 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @cx88_tuner_callback, ptr %tuner_callback, align 4
  %142 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool304.not = icmp eq i32 %143, 0
  br i1 %tobool304.not, label %if.then305, label %if.then296.if.end361_crit_edge

if.then296.if.end361_crit_edge:                   ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.then305:                                       ; preds = %if.then296
  %gate_ctrl306 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %144 = ptrtoint ptr %gate_ctrl306 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %gate_ctrl306, align 4
  %tobool307.not = icmp eq ptr %145, null
  br i1 %tobool307.not, label %if.then305.do.body311_crit_edge, label %if.then308

if.then305.do.body311_crit_edge:                  ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body311

if.then308:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  call void %145(ptr noundef %core, i32 noundef 1) #8
  br label %do.body311

do.body311:                                       ; preds = %if.then308, %if.then305.do.body311_crit_edge
  %subdevs316 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %146 = ptrtoint ptr %subdevs316 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pn811826 = load ptr, ptr %subdevs316, align 4
  %cmp324.not828 = icmp eq ptr %.pn811826, %subdevs316
  br i1 %cmp324.not828, label %do.body311.do.end349_crit_edge, label %do.body311.for.body327_crit_edge

do.body311.for.body327_crit_edge:                 ; preds = %do.body311
  br label %for.body327

do.body311.do.end349_crit_edge:                   ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end349

for.body327:                                      ; preds = %for.inc341.for.body327_crit_edge, %do.body311.for.body327_crit_edge
  %.pn811829 = phi ptr [ %.pn811, %for.inc341.for.body327_crit_edge ], [ %.pn811826, %do.body311.for.body327_crit_edge ]
  %__sd312.0830 = getelementptr i8, ptr %.pn811829, i32 -80
  %ops328 = getelementptr i8, ptr %.pn811829, i32 24
  %147 = ptrtoint ptr %ops328 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops328, align 4
  %tuner329 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %tuner329 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tuner329, align 4
  %tobool330.not = icmp eq ptr %150, null
  br i1 %tobool330.not, label %for.body327.for.inc341_crit_edge, label %land.lhs.true331

for.body327.for.inc341_crit_edge:                 ; preds = %for.body327
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc341

land.lhs.true331:                                 ; preds = %for.body327
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %150, i32 0, i32 9
  %151 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_type_addr, align 4
  %tobool334.not = icmp eq ptr %152, null
  br i1 %tobool334.not, label %land.lhs.true331.for.inc341_crit_edge, label %if.then335

land.lhs.true331.for.inc341_crit_edge:            ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc341

if.then335:                                       ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #10
  %call339 = call i32 %152(ptr noundef %__sd312.0830, ptr noundef nonnull %tun_setup) #8
  br label %for.inc341

for.inc341:                                       ; preds = %if.then335, %land.lhs.true331.for.inc341_crit_edge, %for.body327.for.inc341_crit_edge
  %153 = ptrtoint ptr %.pn811829 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn811 = load ptr, ptr %.pn811829, align 4
  %cmp324.not = icmp eq ptr %.pn811, %subdevs316
  br i1 %cmp324.not, label %for.inc341.do.end349_crit_edge, label %for.inc341.for.body327_crit_edge

for.inc341.for.body327_crit_edge:                 ; preds = %for.inc341
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body327

for.inc341.do.end349_crit_edge:                   ; preds = %for.inc341
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end349

do.end349:                                        ; preds = %for.inc341.do.end349_crit_edge, %do.body311.do.end349_crit_edge
  %154 = ptrtoint ptr %gate_ctrl306 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %gate_ctrl306, align 4
  %tobool353.not = icmp eq ptr %155, null
  br i1 %tobool353.not, label %do.end349.if.end361_crit_edge, label %if.then354

do.end349.if.end361_crit_edge:                    ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end361

if.then354:                                       ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #10
  call void %155(ptr noundef %core, i32 noundef 0) #8
  br label %if.end361

if.end361:                                        ; preds = %if.then354, %do.end349.if.end361_crit_edge, %if.then296.if.end361_crit_edge, %sw.epilog.if.end361_crit_edge
  %mode_mask.0 = phi i32 [ 6, %sw.epilog.if.end361_crit_edge ], [ 4, %do.end349.if.end361_crit_edge ], [ 4, %if.then354 ], [ 4, %if.then296.if.end361_crit_edge ]
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %156 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp363.not = icmp eq i32 %157, -1
  br i1 %cmp363.not, label %if.end361.if.end433_crit_edge, label %if.then365

if.end361.if.end433_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

if.then365:                                       ; preds = %if.end361
  %mode_mask366 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %158 = ptrtoint ptr %mode_mask366 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %mode_mask.0, ptr %mode_mask366, align 4
  %type369 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %159 = ptrtoint ptr %type369 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %157, ptr %type369, align 4
  %tuner_addr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 3
  %160 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tuner_addr, align 4
  %conv371 = zext i8 %161 to i16
  %162 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv371, ptr %tun_setup, align 4
  %tuner_callback373 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %163 = ptrtoint ptr %tuner_callback373 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @cx88_tuner_callback, ptr %tuner_callback373, align 4
  %164 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool376.not = icmp eq i32 %165, 0
  br i1 %tobool376.not, label %if.then377, label %if.then365.if.end433_crit_edge

if.then365.if.end433_crit_edge:                   ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

if.then377:                                       ; preds = %if.then365
  %gate_ctrl378 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %166 = ptrtoint ptr %gate_ctrl378 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %gate_ctrl378, align 4
  %tobool379.not = icmp eq ptr %167, null
  br i1 %tobool379.not, label %if.then377.do.body383_crit_edge, label %if.then380

if.then377.do.body383_crit_edge:                  ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body383

if.then380:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #10
  call void %167(ptr noundef %core, i32 noundef 1) #8
  br label %do.body383

do.body383:                                       ; preds = %if.then380, %if.then377.do.body383_crit_edge
  %subdevs388 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %168 = ptrtoint ptr %subdevs388 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pn810831 = load ptr, ptr %subdevs388, align 4
  %cmp396.not833 = icmp eq ptr %.pn810831, %subdevs388
  br i1 %cmp396.not833, label %do.body383.do.end422_crit_edge, label %do.body383.for.body399_crit_edge

do.body383.for.body399_crit_edge:                 ; preds = %do.body383
  br label %for.body399

do.body383.do.end422_crit_edge:                   ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end422

for.body399:                                      ; preds = %for.inc414.for.body399_crit_edge, %do.body383.for.body399_crit_edge
  %.pn810834 = phi ptr [ %.pn810, %for.inc414.for.body399_crit_edge ], [ %.pn810831, %do.body383.for.body399_crit_edge ]
  %__sd384.0835 = getelementptr i8, ptr %.pn810834, i32 -80
  %ops400 = getelementptr i8, ptr %.pn810834, i32 24
  %169 = ptrtoint ptr %ops400 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops400, align 4
  %tuner401 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %tuner401 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tuner401, align 4
  %tobool402.not = icmp eq ptr %172, null
  br i1 %tobool402.not, label %for.body399.for.inc414_crit_edge, label %land.lhs.true403

for.body399.for.inc414_crit_edge:                 ; preds = %for.body399
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc414

land.lhs.true403:                                 ; preds = %for.body399
  %s_type_addr406 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %172, i32 0, i32 9
  %173 = ptrtoint ptr %s_type_addr406 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %s_type_addr406, align 4
  %tobool407.not = icmp eq ptr %174, null
  br i1 %tobool407.not, label %land.lhs.true403.for.inc414_crit_edge, label %if.then408

land.lhs.true403.for.inc414_crit_edge:            ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc414

if.then408:                                       ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #10
  %call412 = call i32 %174(ptr noundef %__sd384.0835, ptr noundef nonnull %tun_setup) #8
  br label %for.inc414

for.inc414:                                       ; preds = %if.then408, %land.lhs.true403.for.inc414_crit_edge, %for.body399.for.inc414_crit_edge
  %175 = ptrtoint ptr %.pn810834 to i32
  call void @__asan_load4_noabort(i32 %175)
  %.pn810 = load ptr, ptr %.pn810834, align 4
  %cmp396.not = icmp eq ptr %.pn810, %subdevs388
  br i1 %cmp396.not, label %for.inc414.do.end422_crit_edge, label %for.inc414.for.body399_crit_edge

for.inc414.for.body399_crit_edge:                 ; preds = %for.inc414
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body399

for.inc414.do.end422_crit_edge:                   ; preds = %for.inc414
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end422

do.end422:                                        ; preds = %for.inc414.do.end422_crit_edge, %do.body383.do.end422_crit_edge
  %176 = ptrtoint ptr %gate_ctrl378 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %gate_ctrl378, align 4
  %tobool426.not = icmp eq ptr %177, null
  br i1 %tobool426.not, label %do.end422.if.end433_crit_edge, label %if.then427

do.end422.if.end433_crit_edge:                    ; preds = %do.end422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

if.then427:                                       ; preds = %do.end422
  call void @__sanitizer_cov_trace_pc() #10
  call void %177(ptr noundef %core, i32 noundef 0) #8
  br label %if.end433

if.end433:                                        ; preds = %if.then427, %do.end422.if.end433_crit_edge, %if.then365.if.end433_crit_edge, %if.end361.if.end433_crit_edge
  %tda9887_conf = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 5
  %178 = ptrtoint ptr %tda9887_conf to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tda9887_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool435.not = icmp eq i32 %179, 0
  br i1 %tobool435.not, label %if.end433.if.end500_crit_edge, label %if.then436

if.end433.if.end500_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end500

if.then436:                                       ; preds = %if.end433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg) #8
  %180 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg, i32 0, i32 1
  %181 = ptrtoint ptr %tda9887_cfg to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 74, ptr %tda9887_cfg, align 4
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %tda9887_conf, ptr %180, align 4
  %183 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool443.not = icmp eq i32 %184, 0
  br i1 %tobool443.not, label %if.then444, label %if.then436.do.end499_crit_edge

if.then436.do.end499_crit_edge:                   ; preds = %if.then436
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end499

if.then444:                                       ; preds = %if.then436
  %gate_ctrl445 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %185 = ptrtoint ptr %gate_ctrl445 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %gate_ctrl445, align 4
  %tobool446.not = icmp eq ptr %186, null
  br i1 %tobool446.not, label %if.then444.do.body450_crit_edge, label %if.then447

if.then444.do.body450_crit_edge:                  ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body450

if.then447:                                       ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #10
  call void %186(ptr noundef %core, i32 noundef 1) #8
  br label %do.body450

do.body450:                                       ; preds = %if.then447, %if.then444.do.body450_crit_edge
  %subdevs455 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %187 = ptrtoint ptr %subdevs455 to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pn809836 = load ptr, ptr %subdevs455, align 4
  %cmp463.not838 = icmp eq ptr %.pn809836, %subdevs455
  br i1 %cmp463.not838, label %do.body450.do.end489_crit_edge, label %do.body450.for.body466_crit_edge

do.body450.for.body466_crit_edge:                 ; preds = %do.body450
  br label %for.body466

do.body450.do.end489_crit_edge:                   ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end489

for.body466:                                      ; preds = %for.inc481.for.body466_crit_edge, %do.body450.for.body466_crit_edge
  %.pn809839 = phi ptr [ %.pn809, %for.inc481.for.body466_crit_edge ], [ %.pn809836, %do.body450.for.body466_crit_edge ]
  %__sd451.0840 = getelementptr i8, ptr %.pn809839, i32 -80
  %ops467 = getelementptr i8, ptr %.pn809839, i32 24
  %188 = ptrtoint ptr %ops467 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops467, align 4
  %tuner468 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %tuner468 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tuner468, align 4
  %tobool469.not = icmp eq ptr %191, null
  br i1 %tobool469.not, label %for.body466.for.inc481_crit_edge, label %land.lhs.true470

for.body466.for.inc481_crit_edge:                 ; preds = %for.body466
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc481

land.lhs.true470:                                 ; preds = %for.body466
  %s_config473 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %191, i32 0, i32 10
  %192 = ptrtoint ptr %s_config473 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_config473, align 4
  %tobool474.not = icmp eq ptr %193, null
  br i1 %tobool474.not, label %land.lhs.true470.for.inc481_crit_edge, label %if.then475

land.lhs.true470.for.inc481_crit_edge:            ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc481

if.then475:                                       ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #10
  %call479 = call i32 %193(ptr noundef %__sd451.0840, ptr noundef nonnull %tda9887_cfg) #8
  br label %for.inc481

for.inc481:                                       ; preds = %if.then475, %land.lhs.true470.for.inc481_crit_edge, %for.body466.for.inc481_crit_edge
  %194 = ptrtoint ptr %.pn809839 to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pn809 = load ptr, ptr %.pn809839, align 4
  %cmp463.not = icmp eq ptr %.pn809, %subdevs455
  br i1 %cmp463.not, label %for.inc481.do.end489_crit_edge, label %for.inc481.for.body466_crit_edge

for.inc481.for.body466_crit_edge:                 ; preds = %for.inc481
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body466

for.inc481.do.end489_crit_edge:                   ; preds = %for.inc481
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end489

do.end489:                                        ; preds = %for.inc481.do.end489_crit_edge, %do.body450.do.end489_crit_edge
  %195 = ptrtoint ptr %gate_ctrl445 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %gate_ctrl445, align 4
  %tobool493.not = icmp eq ptr %196, null
  br i1 %tobool493.not, label %do.end489.do.end499_crit_edge, label %if.then494

do.end489.do.end499_crit_edge:                    ; preds = %do.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end499

if.then494:                                       ; preds = %do.end489
  call void @__sanitizer_cov_trace_pc() #10
  call void %196(ptr noundef %core, i32 noundef 0) #8
  br label %do.end499

do.end499:                                        ; preds = %if.then494, %do.end489.do.end499_crit_edge, %if.then436.do.end499_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg) #8
  br label %if.end500

if.end500:                                        ; preds = %do.end499, %if.end433.if.end500_crit_edge
  %197 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %198)
  %cmp503 = icmp eq i32 %198, 71
  br i1 %cmp503, label %if.then505, label %if.end500.do.body581_crit_edge

if.end500.do.body581_crit_edge:                   ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body581

if.then505:                                       ; preds = %if.end500
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc2028_cfg) #8
  %199 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %xc2028_cfg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl506) #8
  %200 = getelementptr inbounds i8, ptr %ctl506, i32 8
  %201 = call ptr @memset(ptr %200, i32 0, i32 20)
  %202 = ptrtoint ptr %ctl506 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.18, ptr %ctl506, align 4
  %max_len.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 1
  %203 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 64, ptr %max_len.i, align 4
  %204 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %boardnr, align 4
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %205, label %sw.default.i816 [
    i32 62, label %sw.bb.i
    i32 64, label %if.then505.sw.bb3.i_crit_edge
    i32 81, label %if.then505.sw.bb3.i_crit_edge889
    i32 67, label %if.then505.sw.bb4.i_crit_edge
    i32 59, label %if.then505.sw.bb4.i_crit_edge890
    i32 63, label %sw.bb6.i
    i32 91, label %sw.bb7.i
    i32 61, label %if.then505.cx88_setup_xc3028.exit_crit_edge
    i32 74, label %if.then505.cx88_setup_xc3028.exit_crit_edge891
    i32 66, label %if.then505.cx88_setup_xc3028.exit_crit_edge892
    i32 60, label %if.then505.sw.bb14.i_crit_edge
    i32 79, label %if.then505.sw.bb14.i_crit_edge893
  ]

if.then505.sw.bb14.i_crit_edge893:                ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i

if.then505.sw.bb14.i_crit_edge:                   ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i

if.then505.cx88_setup_xc3028.exit_crit_edge892:   ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx88_setup_xc3028.exit

if.then505.cx88_setup_xc3028.exit_crit_edge891:   ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx88_setup_xc3028.exit

if.then505.cx88_setup_xc3028.exit_crit_edge:      ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx88_setup_xc3028.exit

if.then505.sw.bb4.i_crit_edge890:                 ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.then505.sw.bb4.i_crit_edge:                    ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.then505.sw.bb3.i_crit_edge889:                 ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

if.then505.sw.bb3.i_crit_edge:                    ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.then505
  %udelay.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 12, i32 7
  %207 = ptrtoint ptr %udelay.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %udelay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %208)
  %cmp.i = icmp slt i32 %208, 16
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.cx88_setup_xc3028.exit_crit_edge

sw.bb.i.cx88_setup_xc3028.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx88_setup_xc3028.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %udelay.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 16, ptr %udelay.i, align 4
  br label %cx88_setup_xc3028.exit

sw.bb3.i:                                         ; preds = %if.then505.sw.bb3.i_crit_edge, %if.then505.sw.bb3.i_crit_edge889
  %demod.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 5
  %210 = ptrtoint ptr %demod.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 4560, ptr %demod.i, align 4
  br label %cx88_setup_xc3028.exit

sw.bb4.i:                                         ; preds = %if.then505.sw.bb4.i_crit_edge, %if.then505.sw.bb4.i_crit_edge890
  %demod5.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 5
  %211 = ptrtoint ptr %demod5.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 5380, ptr %demod5.i, align 4
  br label %cx88_setup_xc3028.exit

sw.bb6.i:                                         ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  %disable_power_mgmt.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 4
  %212 = ptrtoint ptr %disable_power_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %bf.load.i = load i8, ptr %disable_power_mgmt.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %disable_power_mgmt.i, align 4
  br label %cx88_setup_xc3028.exit

sw.bb7.i:                                         ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  %demod8.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 5
  %213 = ptrtoint ptr %demod8.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 4560, ptr %demod8.i, align 4
  %214 = ptrtoint ptr %ctl506 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.19, ptr %ctl506, align 4
  %read_not_reliable.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 4
  %215 = ptrtoint ptr %read_not_reliable.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load10.i = load i8, ptr %read_not_reliable.i, align 4
  %bf.set12.i = or i8 %bf.load10.i, 4
  store i8 %bf.set12.i, ptr %read_not_reliable.i, align 4
  br label %cx88_setup_xc3028.exit

sw.bb14.i:                                        ; preds = %if.then505.sw.bb14.i_crit_edge, %if.then505.sw.bb14.i_crit_edge893
  %demod15.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 5
  %216 = ptrtoint ptr %demod15.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 4560, ptr %demod15.i, align 4
  %mts.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 4
  %217 = ptrtoint ptr %mts.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %bf.load16.i = load i8, ptr %mts.i, align 4
  %bf.set18.i = or i8 %bf.load16.i, -128
  store i8 %bf.set18.i, ptr %mts.i, align 4
  br label %cx88_setup_xc3028.exit

sw.default.i816:                                  ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #10
  %demod19.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 5
  %218 = ptrtoint ptr %demod19.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 5380, ptr %demod19.i, align 4
  %mts20.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl506, i32 0, i32 4
  %219 = ptrtoint ptr %mts20.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load21.i = load i8, ptr %mts20.i, align 4
  %bf.set23.i = or i8 %bf.load21.i, -128
  store i8 %bf.set23.i, ptr %mts20.i, align 4
  br label %cx88_setup_xc3028.exit

cx88_setup_xc3028.exit:                           ; preds = %sw.default.i816, %sw.bb14.i, %sw.bb7.i, %sw.bb6.i, %sw.bb4.i, %sw.bb3.i, %if.then.i, %sw.bb.i.cx88_setup_xc3028.exit_crit_edge, %if.then505.cx88_setup_xc3028.exit_crit_edge, %if.then505.cx88_setup_xc3028.exit_crit_edge891, %if.then505.cx88_setup_xc3028.exit_crit_edge892
  %220 = ptrtoint ptr %xc2028_cfg to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 304942678016, ptr %xc2028_cfg, align 8
  %221 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %ctl506, ptr %199, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx88_core_debug to i32))
  %222 = load i32, ptr @cx88_core_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp510.not = icmp eq i32 %222, 0
  br i1 %cmp510.not, label %cx88_setup_xc3028.exit.do.body521_crit_edge, label %do.end515

cx88_setup_xc3028.exit.do.body521_crit_edge:      ; preds = %cx88_setup_xc3028.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body521

do.end515:                                        ; preds = %cx88_setup_xc3028.exit
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %ctl506 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ctl506, align 4
  %call517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.183, ptr noundef %224) #11
  br label %do.body521

do.body521:                                       ; preds = %do.end515, %cx88_setup_xc3028.exit.do.body521_crit_edge
  %225 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool523.not = icmp eq i32 %226, 0
  br i1 %tobool523.not, label %if.then524, label %do.body521.do.end579_crit_edge

do.body521.do.end579_crit_edge:                   ; preds = %do.body521
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end579

if.then524:                                       ; preds = %do.body521
  %gate_ctrl525 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %227 = ptrtoint ptr %gate_ctrl525 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %gate_ctrl525, align 4
  %tobool526.not = icmp eq ptr %228, null
  br i1 %tobool526.not, label %if.then524.do.body530_crit_edge, label %if.then527

if.then524.do.body530_crit_edge:                  ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body530

if.then527:                                       ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #10
  call void %228(ptr noundef %core, i32 noundef 1) #8
  br label %do.body530

do.body530:                                       ; preds = %if.then527, %if.then524.do.body530_crit_edge
  %subdevs535 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %229 = ptrtoint ptr %subdevs535 to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pn808841 = load ptr, ptr %subdevs535, align 4
  %cmp543.not843 = icmp eq ptr %.pn808841, %subdevs535
  br i1 %cmp543.not843, label %do.body530.do.end569_crit_edge, label %do.body530.for.body546_crit_edge

do.body530.for.body546_crit_edge:                 ; preds = %do.body530
  br label %for.body546

do.body530.do.end569_crit_edge:                   ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end569

for.body546:                                      ; preds = %for.inc561.for.body546_crit_edge, %do.body530.for.body546_crit_edge
  %.pn808844 = phi ptr [ %.pn808, %for.inc561.for.body546_crit_edge ], [ %.pn808841, %do.body530.for.body546_crit_edge ]
  %__sd531.0845 = getelementptr i8, ptr %.pn808844, i32 -80
  %ops547 = getelementptr i8, ptr %.pn808844, i32 24
  %230 = ptrtoint ptr %ops547 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops547, align 4
  %tuner548 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %tuner548 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %tuner548, align 4
  %tobool549.not = icmp eq ptr %233, null
  br i1 %tobool549.not, label %for.body546.for.inc561_crit_edge, label %land.lhs.true550

for.body546.for.inc561_crit_edge:                 ; preds = %for.body546
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc561

land.lhs.true550:                                 ; preds = %for.body546
  %s_config553 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %233, i32 0, i32 10
  %234 = ptrtoint ptr %s_config553 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %s_config553, align 4
  %tobool554.not = icmp eq ptr %235, null
  br i1 %tobool554.not, label %land.lhs.true550.for.inc561_crit_edge, label %if.then555

land.lhs.true550.for.inc561_crit_edge:            ; preds = %land.lhs.true550
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc561

if.then555:                                       ; preds = %land.lhs.true550
  call void @__sanitizer_cov_trace_pc() #10
  %call559 = call i32 %235(ptr noundef %__sd531.0845, ptr noundef nonnull %xc2028_cfg) #8
  br label %for.inc561

for.inc561:                                       ; preds = %if.then555, %land.lhs.true550.for.inc561_crit_edge, %for.body546.for.inc561_crit_edge
  %236 = ptrtoint ptr %.pn808844 to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pn808 = load ptr, ptr %.pn808844, align 4
  %cmp543.not = icmp eq ptr %.pn808, %subdevs535
  br i1 %cmp543.not, label %for.inc561.do.end569_crit_edge, label %for.inc561.for.body546_crit_edge

for.inc561.for.body546_crit_edge:                 ; preds = %for.inc561
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body546

for.inc561.do.end569_crit_edge:                   ; preds = %for.inc561
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end569

do.end569:                                        ; preds = %for.inc561.do.end569_crit_edge, %do.body530.do.end569_crit_edge
  %237 = ptrtoint ptr %gate_ctrl525 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %gate_ctrl525, align 4
  %tobool573.not = icmp eq ptr %238, null
  br i1 %tobool573.not, label %do.end569.do.end579_crit_edge, label %if.then574

do.end569.do.end579_crit_edge:                    ; preds = %do.end569
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end579

if.then574:                                       ; preds = %do.end569
  call void @__sanitizer_cov_trace_pc() #10
  call void %238(ptr noundef %core, i32 noundef 0) #8
  br label %do.end579

do.end579:                                        ; preds = %if.then574, %do.end569.do.end579_crit_edge, %do.body521.do.end579_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl506) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc2028_cfg) #8
  br label %do.body581

do.body581:                                       ; preds = %do.end579, %if.end500.do.body581_crit_edge
  %239 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool583.not = icmp eq i32 %240, 0
  br i1 %tobool583.not, label %if.then584, label %do.body581.do.end638_crit_edge

do.body581.do.end638_crit_edge:                   ; preds = %do.body581
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end638

if.then584:                                       ; preds = %do.body581
  %gate_ctrl585 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %241 = ptrtoint ptr %gate_ctrl585 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %gate_ctrl585, align 4
  %tobool586.not = icmp eq ptr %242, null
  br i1 %tobool586.not, label %if.then584.do.body590_crit_edge, label %if.then587

if.then584.do.body590_crit_edge:                  ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body590

if.then587:                                       ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #10
  call void %242(ptr noundef %core, i32 noundef 1) #8
  br label %do.body590

do.body590:                                       ; preds = %if.then587, %if.then584.do.body590_crit_edge
  %subdevs595 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %243 = ptrtoint ptr %subdevs595 to i32
  call void @__asan_load4_noabort(i32 %243)
  %.pn846 = load ptr, ptr %subdevs595, align 4
  %cmp603.not848 = icmp eq ptr %.pn846, %subdevs595
  br i1 %cmp603.not848, label %do.body590.do.end628_crit_edge, label %do.body590.for.body606_crit_edge

do.body590.for.body606_crit_edge:                 ; preds = %do.body590
  br label %for.body606

do.body590.do.end628_crit_edge:                   ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end628

for.body606:                                      ; preds = %for.inc620.for.body606_crit_edge, %do.body590.for.body606_crit_edge
  %.pn849 = phi ptr [ %.pn, %for.inc620.for.body606_crit_edge ], [ %.pn846, %do.body590.for.body606_crit_edge ]
  %__sd591.0850 = getelementptr i8, ptr %.pn849, i32 -80
  %ops607 = getelementptr i8, ptr %.pn849, i32 24
  %244 = ptrtoint ptr %ops607 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops607, align 4
  %tuner608 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %tuner608 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %tuner608, align 4
  %tobool609.not = icmp eq ptr %247, null
  br i1 %tobool609.not, label %for.body606.for.inc620_crit_edge, label %land.lhs.true610

for.body606.for.inc620_crit_edge:                 ; preds = %for.body606
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc620

land.lhs.true610:                                 ; preds = %for.body606
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  %tobool613.not = icmp eq ptr %249, null
  br i1 %tobool613.not, label %land.lhs.true610.for.inc620_crit_edge, label %if.then614

land.lhs.true610.for.inc620_crit_edge:            ; preds = %land.lhs.true610
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc620

if.then614:                                       ; preds = %land.lhs.true610
  call void @__sanitizer_cov_trace_pc() #10
  %call618 = call i32 %249(ptr noundef %__sd591.0850) #8
  br label %for.inc620

for.inc620:                                       ; preds = %if.then614, %land.lhs.true610.for.inc620_crit_edge, %for.body606.for.inc620_crit_edge
  %250 = ptrtoint ptr %.pn849 to i32
  call void @__asan_load4_noabort(i32 %250)
  %.pn = load ptr, ptr %.pn849, align 4
  %cmp603.not = icmp eq ptr %.pn, %subdevs595
  br i1 %cmp603.not, label %for.inc620.do.end628_crit_edge, label %for.inc620.for.body606_crit_edge

for.inc620.for.body606_crit_edge:                 ; preds = %for.inc620
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body606

for.inc620.do.end628_crit_edge:                   ; preds = %for.inc620
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end628

do.end628:                                        ; preds = %for.inc620.do.end628_crit_edge, %do.body590.do.end628_crit_edge
  %251 = ptrtoint ptr %gate_ctrl585 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %gate_ctrl585, align 4
  %tobool632.not = icmp eq ptr %252, null
  br i1 %tobool632.not, label %do.end628.do.end638_crit_edge, label %if.then633

do.end628.do.end638_crit_edge:                    ; preds = %do.end628
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end638

if.then633:                                       ; preds = %do.end628
  call void @__sanitizer_cov_trace_pc() #10
  call void %252(ptr noundef %core, i32 noundef 0) #8
  br label %do.end638

do.end638:                                        ; preds = %if.then633, %do.end628.do.end638_crit_edge, %do.body581.do.end638_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_i2c_init_ir(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_ir_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx88_xc3028_winfast1800h_callback(ptr nocapture noundef readonly %core, i32 noundef %command) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond = icmp eq i32 %command, 0
  br i1 %cond, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 868357
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !537
  %3 = or i32 %2, 269484032
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %5, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #8, !srcloc !459
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body
  %__ms.01 = phi i32 [ 50, %do.body ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %8, i32 868357
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  %10 = and i32 %9, -268435457
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %12, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #8, !srcloc !459
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.end
  %__ms17.02 = phi i32 [ 75, %while.end ], [ %dec19, %while.body21.while.body21_crit_edge ]
  %dec19 = add nsw i32 %__ms17.02, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  %tobool20.not = icmp eq i32 %dec19, 0
  br i1 %tobool20.not, label %while.end22, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body21

while.end22:                                      ; preds = %while.body21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %15, i32 868357
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !541
  %17 = or i32 %16, 268435456
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr35 = getelementptr i32, ptr %19, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %17) #8, !srcloc !459
  br label %while.body40

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %while.end22
  %__ms36.03 = phi i32 [ 75, %while.end22 ], [ %dec38, %while.body40.while.body40_crit_edge ]
  %dec38 = add nsw i32 %__ms36.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  %tobool39.not = icmp eq i32 %dec38, 0
  br i1 %tobool39.not, label %while.body40.return_crit_edge, label %while.body40.while.body40_crit_edge

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40

while.body40.return_crit_edge:                    ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %while.body40.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %while.body40.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx88_xc4000_winfast2000h_plus_callback(ptr nocapture noundef readonly %core, i32 noundef %command) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond = icmp eq i32 %command, 0
  br i1 %cond, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 868357
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %3 = or i32 %2, 269484032
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %5, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #8, !srcloc !459
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body
  %__ms.01 = phi i32 [ 50, %do.body ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !544
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %8, i32 868357
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !545
  %10 = and i32 %9, -268435457
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %12, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #8, !srcloc !459
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.end
  %__ms17.02 = phi i32 [ 75, %while.end ], [ %dec19, %while.body21.while.body21_crit_edge ]
  %dec19 = add nsw i32 %__ms17.02, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  %tobool20.not = icmp eq i32 %dec19, 0
  br i1 %tobool20.not, label %while.end22, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body21

while.end22:                                      ; preds = %while.body21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !546
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %15, i32 868357
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !547
  %17 = or i32 %16, 268435456
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr35 = getelementptr i32, ptr %19, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %17) #8, !srcloc !459
  br label %while.body40

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %while.end22
  %__ms36.03 = phi i32 [ 75, %while.end22 ], [ %dec38, %while.body40.while.body40_crit_edge ]
  %dec38 = add nsw i32 %__ms36.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  %tobool39.not = icmp eq i32 %dec38, 0
  br i1 %tobool39.not, label %while.body40.return_crit_edge, label %while.body40.while.body40_crit_edge

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40

while.body40.return_crit_edge:                    ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %while.body40.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %while.body40.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hauppauge_eeprom(ptr nocapture noundef %core, ptr noundef %eeprom_data) unnamed_addr #0 align 64 {
entry:
  %tv = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #8
  %0 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv, ptr noundef %eeprom_data) #8
  %tuner_type = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 3
  %1 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tuner_type, align 4
  %tuner_type1 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %tuner_type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tuner_type1, align 4
  %tuner_formats = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_formats, align 4
  %tuner_formats2 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 24
  %6 = ptrtoint ptr %tuner_formats2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tuner_formats2, align 4
  %7 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool.not, i32 0, i32 10
  %radio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 7
  %9 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %radio, align 4
  %model = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %10 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %model, align 4
  %model4 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 4
  %12 = ptrtoint ptr %model4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %model4, align 8
  %13 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %11, label %do.end12 [
    i32 14009, label %entry.do.end18_crit_edge
    i32 14019, label %entry.do.end18_crit_edge27
    i32 14029, label %entry.do.end18_crit_edge28
    i32 14109, label %entry.do.end18_crit_edge29
    i32 14129, label %entry.do.end18_crit_edge30
    i32 14559, label %entry.do.end18_crit_edge31
    i32 14569, label %entry.do.end18_crit_edge32
    i32 14659, label %entry.do.end18_crit_edge33
    i32 14669, label %entry.do.end18_crit_edge34
    i32 28552, label %entry.do.end18_crit_edge35
    i32 34519, label %entry.do.end18_crit_edge36
    i32 69009, label %entry.do.end18_crit_edge37
    i32 69100, label %entry.do.end18_crit_edge38
    i32 69500, label %entry.do.end18_crit_edge39
    i32 69559, label %entry.do.end18_crit_edge40
    i32 69569, label %entry.do.end18_crit_edge41
    i32 90002, label %entry.do.end18_crit_edge42
    i32 92001, label %entry.do.end18_crit_edge43
    i32 92002, label %entry.do.end18_crit_edge44
    i32 90003, label %entry.do.end18_crit_edge45
    i32 90500, label %entry.do.end18_crit_edge46
    i32 90501, label %entry.do.end18_crit_edge47
    i32 92000, label %entry.do.end18_crit_edge48
    i32 92900, label %entry.do.end18_crit_edge49
    i32 94009, label %entry.do.end18_crit_edge50
    i32 94501, label %entry.do.end18_crit_edge51
    i32 96009, label %entry.do.end18_crit_edge52
    i32 96019, label %entry.do.end18_crit_edge53
    i32 96559, label %entry.do.end18_crit_edge54
    i32 96569, label %entry.do.end18_crit_edge55
    i32 96659, label %entry.do.end18_crit_edge56
    i32 98559, label %entry.do.end18_crit_edge57
    i32 84, label %do.body
  ]

entry.do.end18_crit_edge57:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge56:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge55:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge54:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge52:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge51:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge48:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge47:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge46:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge45:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge44:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge43:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge42:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge41:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge38:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge36:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge35:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge29:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !548
  call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %15, i32 868356
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !467
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !549
  %17 = or i32 %16, -7763712
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %19, i32 868356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #8, !srcloc !459
  br label %do.end18

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %11) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.body, %entry.do.end18_crit_edge, %entry.do.end18_crit_edge27, %entry.do.end18_crit_edge28, %entry.do.end18_crit_edge29, %entry.do.end18_crit_edge30, %entry.do.end18_crit_edge31, %entry.do.end18_crit_edge32, %entry.do.end18_crit_edge33, %entry.do.end18_crit_edge34, %entry.do.end18_crit_edge35, %entry.do.end18_crit_edge36, %entry.do.end18_crit_edge37, %entry.do.end18_crit_edge38, %entry.do.end18_crit_edge39, %entry.do.end18_crit_edge40, %entry.do.end18_crit_edge41, %entry.do.end18_crit_edge42, %entry.do.end18_crit_edge43, %entry.do.end18_crit_edge44, %entry.do.end18_crit_edge45, %entry.do.end18_crit_edge46, %entry.do.end18_crit_edge47, %entry.do.end18_crit_edge48, %entry.do.end18_crit_edge49, %entry.do.end18_crit_edge50, %entry.do.end18_crit_edge51, %entry.do.end18_crit_edge52, %entry.do.end18_crit_edge53, %entry.do.end18_crit_edge54, %entry.do.end18_crit_edge55, %entry.do.end18_crit_edge56, %entry.do.end18_crit_edge57
  %20 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %21) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdi_eeprom(ptr nocapture noundef writeonly %core) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 13), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %0)
  %cmp = icmp ult i8 %0, 36
  br i1 %cmp, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.195) #11
  br label %cleanup

cond.end:                                         ; preds = %entry
  %conv = zext i8 %0 to i32
  %name4 = getelementptr [36 x %struct.anon.153], ptr @gdi_tuner, i32 0, i32 %conv, i32 2
  %1 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name4, align 4
  %tobool.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool.not, ptr @.str.195, ptr %2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull %spec.select) #11
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx88_card_setup.eeprom, i32 0, i32 13), align 1
  %idxprom11 = zext i8 %3 to i32
  %arrayidx12 = getelementptr [36 x %struct.anon.153], ptr @gdi_tuner, i32 0, i32 %idxprom11
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx12, align 4
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tuner_type, align 4
  %fm = getelementptr [36 x %struct.anon.153], ptr @gdi_tuner, i32 0, i32 %idxprom11, i32 1
  %7 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  %cond17 = select i1 %tobool16.not, i32 0, i32 10
  %radio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 7
  %9 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond17, ptr %radio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge, %cond.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !69, !71, !72, !74, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !386, !387, !388, !390, !391, !392, !394, !395, !396, !397, !399, !400, !401, !403, !404, !405, !406, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !436, !437, !438, !440, !441, !442, !444, !446, !447, !448}
!llvm.module.flags = !{!449, !450, !451, !452, !453, !454, !455, !456}
!llvm.ident = !{!457}

!0 = !{ptr @__param_tuner, !1, !"__param_tuner", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_tunertype385, !1, !"__UNIQUE_ID_tunertype385", i1 false, i1 false}
!3 = !{ptr @__param_radio, !4, !"__param_radio", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_radiotype386, !4, !"__UNIQUE_ID_radiotype386", i1 false, i1 false}
!6 = !{ptr @__param_card, !7, !"__param_card", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 25, i32 1}
!8 = !{ptr @__UNIQUE_ID_cardtype387, !7, !"__UNIQUE_ID_cardtype387", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_tuner388, !10, !"__UNIQUE_ID_tuner388", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 27, i32 1}
!11 = !{ptr @__UNIQUE_ID_radio389, !12, !"__UNIQUE_ID_radio389", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 28, i32 1}
!13 = !{ptr @__UNIQUE_ID_card390, !14, !"__UNIQUE_ID_card390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 29, i32 1}
!15 = !{ptr @__param_latency, !16, !"__param_latency", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 32, i32 1}
!17 = !{ptr @__UNIQUE_ID_latencytype391, !16, !"__UNIQUE_ID_latencytype391", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_latency392, !19, !"__UNIQUE_ID_latency392", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 33, i32 1}
!20 = !{ptr @__param_disable_ir, !21, !"__param_disable_ir", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 36, i32 1}
!22 = !{ptr @__UNIQUE_ID_disable_irtype393, !21, !"__UNIQUE_ID_disable_irtype393", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_disable_ir394, !24, !"__UNIQUE_ID_disable_ir394", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 37, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3261, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cx88_tuner_callback._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx88_tuner_callback._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3268, i32 3}
!33 = !{ptr @cx88_tuner_callback._entry.3, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx88_tuner_callback._entry_ptr.5, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3277, i32 3}
!37 = !{ptr @cx88_tuner_callback._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx88_tuner_callback._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3280, i32 3}
!41 = !{ptr @cx88_tuner_callback._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx88_tuner_callback._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3283, i32 3}
!45 = !{ptr @cx88_tuner_callback._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cx88_tuner_callback._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3286, i32 2}
!49 = !{ptr @cx88_tuner_callback._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx88_tuner_callback._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_cx88_tuner_callback, !52, !"__ksymtab_cx88_tuner_callback", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3290, i32 1}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3392, i32 17}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3421, i32 18}
!57 = !{ptr @__ksymtab_cx88_setup_xc3028, !58, !"__ksymtab_cx88_setup_xc3028", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3441, i32 1}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3687, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cx88_get_resources._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cx88_get_resources._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @cx88_core_create.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3713, i32 2}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3716, i32 22}
!69 = !{ptr @cx88_core_create._key, !70, !"_key", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3736, i32 6}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cx88_core_create._key.25, !73, !"_key", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3742, i32 6}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3791, i32 2}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cx88_core_create._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cx88_core_create._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3802, i32 2}
!84 = !{ptr @cx88_core_create._entry.31, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cx88_core_create._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @cx88_core_create.tv_addrs, !87, !"tv_addrs", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3817, i32 31}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3832, i32 9}
!90 = !{ptr @disable_ir, !91, !"disable_ir", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 35, i32 12}
!92 = !{ptr @__param_str_tuner, !1, !"__param_str_tuner", i1 false, i1 false}
!93 = !{ptr @__param_arr_tuner, !1, !"__param_arr_tuner", i1 false, i1 false}
!94 = !{ptr @__param_str_radio, !4, !"__param_str_radio", i1 false, i1 false}
!95 = !{ptr @__param_arr_radio, !4, !"__param_arr_radio", i1 false, i1 false}
!96 = !{ptr @__param_str_card, !7, !"__param_str_card", i1 false, i1 false}
!97 = !{ptr @__param_arr_card, !7, !"__param_arr_card", i1 false, i1 false}
!98 = !{ptr @__param_str_latency, !16, !"__param_str_latency", i1 false, i1 false}
!99 = !{ptr @latency, !100, !"latency", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 31, i32 21}
!101 = !{ptr @__param_str_disable_ir, !21, !"__param_str_disable_ir", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3170, i32 4}
!104 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cx88_xc2028_tuner_callback._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx88_xc2028_tuner_callback._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3178, i32 4}
!109 = !{ptr @cx88_xc2028_tuner_callback._entry.37, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cx88_xc2028_tuner_callback._entry_ptr.39, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3239, i32 3}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cx88_xc5000_tuner_callback._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cx88_xc5000_tuner_callback._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @cx88_xc5000_tuner_callback._entry.42, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3249, i32 3}
!118 = !{ptr @cx88_xc5000_tuner_callback._entry_ptr.43, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3642, i32 3}
!121 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cx88_pci_quirks._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @cx88_pci_quirks._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3646, i32 3}
!126 = !{ptr @cx88_pci_quirks._entry.46, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cx88_pci_quirks._entry_ptr.48, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3650, i32 3}
!130 = !{ptr @cx88_pci_quirks._entry.49, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cx88_pci_quirks._entry_ptr.51, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3654, i32 3}
!134 = !{ptr @cx88_pci_quirks._entry.52, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cx88_pci_quirks._entry_ptr.54, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3659, i32 3}
!138 = !{ptr @cx88_pci_quirks._entry.55, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cx88_pci_quirks._entry_ptr.57, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3675, i32 3}
!142 = !{ptr @cx88_pci_quirks._entry.58, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cx88_pci_quirks._entry_ptr.60, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @card, !145, !"card", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 21, i32 21}
!146 = !{ptr @cx88_subids, !147, !"cx88_subids", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2347, i32 32}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3299, i32 3}
!150 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cx88_card_list._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cx88_card_list._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3300, i32 3}
!155 = !{ptr @cx88_card_list._entry.63, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cx88_card_list._entry_ptr.65, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3301, i32 3}
!159 = !{ptr @cx88_card_list._entry.66, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cx88_card_list._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3302, i32 3}
!163 = !{ptr @cx88_card_list._entry.69, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx88_card_list._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3304, i32 3}
!167 = !{ptr @cx88_card_list._entry.72, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cx88_card_list._entry_ptr.74, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3305, i32 3}
!171 = !{ptr @cx88_card_list._entry.75, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cx88_card_list._entry_ptr.77, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3306, i32 3}
!175 = !{ptr @cx88_card_list._entry.78, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cx88_card_list._entry_ptr.80, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3307, i32 3}
!179 = !{ptr @cx88_card_list._entry.81, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cx88_card_list._entry_ptr.83, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3309, i32 2}
!183 = !{ptr @cx88_card_list._entry.84, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cx88_card_list._entry_ptr.86, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3311, i32 3}
!187 = !{ptr @cx88_card_list._entry.87, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cx88_card_list._entry_ptr.89, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 53, i32 12}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 73, i32 12}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 102, i32 12}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 116, i32 21}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 138, i32 21}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 159, i32 21}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 196, i32 21}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 223, i32 21}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 257, i32 21}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 295, i32 21}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 325, i32 12}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 342, i32 21}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 367, i32 12}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 390, i32 21}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 414, i32 21}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 433, i32 21}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 450, i32 21}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 478, i32 12}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 520, i32 21}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 532, i32 21}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 544, i32 12}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 557, i32 21}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 593, i32 21}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 574, i32 12}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 633, i32 21}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 665, i32 21}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 695, i32 21}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 716, i32 21}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 746, i32 21}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 768, i32 21}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 787, i32 21}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 802, i32 21}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 824, i32 21}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 856, i32 22}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 875, i32 21}
!259 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 905, i32 21}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 923, i32 21}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 953, i32 12}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 979, i32 12}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 991, i32 12}
!269 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1016, i32 12}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1036, i32 12}
!273 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1053, i32 21}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1083, i32 21}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1102, i32 21}
!279 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1119, i32 21}
!281 = !{ptr @.str.136, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1148, i32 21}
!283 = !{ptr @.str.137, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1169, i32 21}
!285 = !{ptr @.str.138, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1195, i32 21}
!287 = !{ptr @.str.139, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1210, i32 21}
!289 = !{ptr @.str.140, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1225, i32 21}
!291 = !{ptr @.str.141, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1249, i32 21}
!293 = !{ptr @.str.142, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1339, i32 20}
!295 = !{ptr @.str.143, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1354, i32 21}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1390, i32 21}
!299 = !{ptr @.str.145, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1410, i32 21}
!301 = !{ptr @.str.146, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1439, i32 12}
!303 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1489, i32 21}
!305 = !{ptr @.str.148, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1509, i32 21}
!307 = !{ptr @.str.149, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1535, i32 21}
!309 = !{ptr @.str.150, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1559, i32 21}
!311 = !{ptr @.str.151, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1597, i32 21}
!313 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1706, i32 21}
!315 = !{ptr @.str.153, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1750, i32 21}
!317 = !{ptr @.str.154, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1820, i32 21}
!319 = !{ptr @.str.155, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1837, i32 21}
!321 = !{ptr @.str.156, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1858, i32 21}
!323 = !{ptr @.str.157, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1918, i32 21}
!325 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1951, i32 21}
!327 = !{ptr @.str.159, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2024, i32 21}
!329 = !{ptr @.str.160, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2048, i32 21}
!331 = !{ptr @.str.161, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2072, i32 21}
!333 = !{ptr @.str.162, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2096, i32 21}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2036, i32 21}
!337 = !{ptr @.str.164, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1881, i32 21}
!339 = !{ptr @.str.165, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2121, i32 21}
!341 = !{ptr @.str.166, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2133, i32 21}
!343 = !{ptr @.str.167, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2084, i32 21}
!345 = !{ptr @.str.168, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2109, i32 21}
!347 = !{ptr @.str.169, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2145, i32 21}
!349 = !{ptr @.str.170, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2178, i32 21}
!351 = !{ptr @.str.171, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2185, i32 21}
!353 = !{ptr @.str.172, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1294, i32 21}
!355 = !{ptr @.str.173, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2319, i32 21}
!357 = !{ptr @.str.174, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1477, i32 12}
!359 = !{ptr @.str.175, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2331, i32 12}
!361 = !{ptr @.str.176, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2060, i32 21}
!363 = !{ptr @.str.177, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2267, i32 12}
!365 = !{ptr @.str.178, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2226, i32 12}
!367 = !{ptr @.str.179, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1633, i32 21}
!369 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1669, i32 21}
!371 = !{ptr @.str.181, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 1785, i32 21}
!373 = !{ptr @cx88_boards, !374, !"cx88_boards", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 51, i32 32}
!375 = !{ptr @tuner, !376, !"tuner", i1 false, i1 false}
!376 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 19, i32 21}
!377 = !{ptr @radio, !378, !"radio", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 20, i32 21}
!379 = !{ptr @cx88_card_setup.eeprom, !380, !"eeprom", i1 false, i1 false}
!380 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3445, i32 12}
!381 = !{ptr @cx88_card_setup.buffer, !382, !"buffer", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3531, i32 20}
!383 = !{ptr @.str.182, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3543, i32 6}
!385 = !{ptr @.str.183, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @cx88_card_setup._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @cx88_card_setup._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.186, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3625, i32 3}
!390 = !{ptr @cx88_card_setup._entry.185, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @cx88_card_setup._entry_ptr.187, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.188, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2932, i32 3}
!394 = !{ptr @.str.189, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @hauppauge_eeprom._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @hauppauge_eeprom._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.191, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2936, i32 2}
!399 = !{ptr @hauppauge_eeprom._entry.190, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @hauppauge_eeprom._entry_ptr.192, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2983, i32 2}
!403 = !{ptr @.str.194, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @gdi_eeprom._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @gdi_eeprom._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.195, !402, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.196, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2949, i32 14}
!409 = !{ptr @.str.197, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2951, i32 14}
!411 = !{ptr @.str.198, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2953, i32 14}
!413 = !{ptr @.str.199, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2955, i32 14}
!415 = !{ptr @.str.200, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2957, i32 14}
!417 = !{ptr @.str.201, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2961, i32 14}
!419 = !{ptr @.str.202, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2963, i32 14}
!421 = !{ptr @.str.203, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2965, i32 14}
!423 = !{ptr @.str.204, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2969, i32 14}
!425 = !{ptr @.str.205, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2971, i32 14}
!427 = !{ptr @.str.206, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2973, i32 14}
!429 = !{ptr @.str.207, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2975, i32 14}
!431 = !{ptr @gdi_tuner, !432, !"gdi_tuner", i1 false, i1 false}
!432 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2947, i32 3}
!433 = !{ptr @.str.208, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2858, i32 3}
!435 = !{ptr @.str.209, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @leadtek_eeprom._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @leadtek_eeprom._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.211, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 2876, i32 2}
!440 = !{ptr @leadtek_eeprom._entry.210, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @leadtek_eeprom._entry_ptr.212, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @dvico_fusionhdtv_hybrid_init.init_bufs, !443, !"init_bufs", i1 false, i1 false}
!443 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3116, i32 12}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/pci/cx88/cx88-cards.c", i32 3137, i32 4}
!446 = !{ptr @.str.214, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @dvico_fusionhdtv_hybrid_init._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @dvico_fusionhdtv_hybrid_init._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{i32 1, !"wchar_size", i32 2}
!450 = !{i32 1, !"min_enum_size", i32 4}
!451 = !{i32 8, !"branch-target-enforcement", i32 0}
!452 = !{i32 8, !"sign-return-address", i32 0}
!453 = !{i32 8, !"sign-return-address-all", i32 0}
!454 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!455 = !{i32 7, !"uwtable", i32 1}
!456 = !{i32 7, !"frame-pointer", i32 2}
!457 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!458 = !{i64 2158754608}
!459 = !{i64 5099638}
!460 = !{i64 2158756434}
!461 = !{i64 2158758260}
!462 = !{i64 2158760086}
!463 = !{i64 2158761912}
!464 = !{i64 2158786389}
!465 = !{i64 2158788200}
!466 = !{i64 2158790011}
!467 = !{i64 5100056}
!468 = !{i64 2158744731}
!469 = !{i64 2158746152}
!470 = !{i64 2158747245}
!471 = !{i64 2158748694}
!472 = !{i64 2158749813}
!473 = !{i64 2158753075}
!474 = !{i64 2158754182}
!475 = !{i64 2158794700}
!476 = !{i64 2158796519}
!477 = !{i64 2158800148}
!478 = !{i64 2158801984}
!479 = !{i64 2158803820}
!480 = !{i64 2158808678}
!481 = !{i64 2158809771}
!482 = !{i64 2158811220}
!483 = !{i64 2158812339}
!484 = distinct !{!484, !485}
!485 = !{!"llvm.loop.peeled.count", i32 1}
!486 = !{!"auto-init"}
!487 = !{i64 2158845547}
!488 = !{i64 2158847665}
!489 = !{i64 2158848758}
!490 = !{i64 2158850749}
!491 = !{i64 2158851868}
!492 = !{i64 2158852813}
!493 = !{i64 2158853326}
!494 = !{i64 2158853839}
!495 = !{i64 2158855432}
!496 = !{i64 2158856551}
!497 = !{i64 2158856987}
!498 = !{i64 2158859153}
!499 = !{i64 2158860246}
!500 = !{i64 2158862237}
!501 = !{i64 2158863356}
!502 = !{i64 2158864333}
!503 = !{i64 2158864871}
!504 = !{i64 2158865409}
!505 = !{i64 2158867582}
!506 = !{i64 2158868120}
!507 = !{i64 2158868661}
!508 = !{i64 2158869199}
!509 = !{i64 2158870807}
!510 = !{i64 2158871926}
!511 = !{i64 2158873347}
!512 = !{i64 2158874440}
!513 = !{i64 2158875889}
!514 = !{i64 2158877008}
!515 = !{i64 2158878512}
!516 = !{i64 2158879631}
!517 = !{i64 2158881052}
!518 = !{i64 2158882145}
!519 = !{i64 2158883594}
!520 = !{i64 2158884713}
!521 = !{i64 2158886184}
!522 = !{i64 2158887303}
!523 = !{i64 2158888765}
!524 = !{i64 2158889884}
!525 = !{i64 2158891305}
!526 = !{i64 2158892398}
!527 = !{i64 2158893806}
!528 = !{i64 2158894899}
!529 = !{i64 2158896348}
!530 = !{i64 2158897467}
!531 = !{i64 2158897865}
!532 = !{i64 2158905075}
!533 = !{i64 2158905583}
!534 = !{i64 2158906086}
!535 = !{i64 2158906594}
!536 = !{i64 2158764782}
!537 = !{i64 2158765877}
!538 = !{i64 2158768554}
!539 = !{i64 2158769623}
!540 = !{i64 2158772310}
!541 = !{i64 2158773393}
!542 = !{i64 2158776108}
!543 = !{i64 2158777203}
!544 = !{i64 2158779880}
!545 = !{i64 2158780949}
!546 = !{i64 2158783636}
!547 = !{i64 2158784719}
!548 = !{i64 2158735477}
!549 = !{i64 2158736596}
