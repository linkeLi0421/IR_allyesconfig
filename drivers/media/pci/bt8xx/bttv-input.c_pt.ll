; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-input.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.100 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.bttv_ir = type { ptr, ptr, %struct.timer_list, [32 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.IR_i2c = type { ptr, ptr, ptr, i8, i32, %struct.delayed_work, [32 x i8], ptr, ptr, %struct.mutex, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__param_str_ir_debug = internal constant [14 x i8] c"bttv.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype321 = internal constant [27 x i8] c"bttv.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__param_str_ir_rc5_remote_gap = internal constant [23 x i8] c"bttv.ir_rc5_remote_gap\00", align 1
@ir_rc5_remote_gap = internal global { i32, [28 x i8] } { i32 885, [28 x i8] zeroinitializer }, align 32
@__param_ir_rc5_remote_gap = internal constant %struct.kernel_param { ptr @__param_str_ir_rc5_remote_gap, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_rc5_remote_gap } }, section "__param", align 4
@__UNIQUE_ID_ir_rc5_remote_gaptype322 = internal constant [36 x i8] c"bttv.parmtype=ir_rc5_remote_gap:int\00", section ".modinfo", align 1
@init_bttv_i2c_ir.addr_list = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 26, i16 24, i16 100, i16 48, i16 113, i16 -2], [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PV951\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-pv951\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-avermedia\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-avermedia-dvbt\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-pixelview\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-winfast\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-apac-viewcomp\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-nebula\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-pctv-sedna\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-encore-enltv2\00", [47 x i8] zeroinitializer }, align 32
@bttv_input_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016bttv: Ooops: IR config error [card=%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bttv_input_init\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/bt8xx/bttv-input.c\00", [59 x i8] zeroinitializer }, align 32
@bttv_input_init._entry_ptr = internal global ptr @bttv_input_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bttv IR (card=%d)\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bttv\00", [27 x i8] zeroinitializer }, align 32
@ir_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bttv: irq gpio=0x%x code=%d | %s%s%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_handle_key\00", [18 x i8] zeroinitializer }, align 32
@ir_handle_key._entry_ptr = internal global ptr @ir_handle_key._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" down\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" up\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bttv_rc5_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.13, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016bttv: RC5 IRQ: gap %d us for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bttv_rc5_irq\00", [19 x i8] zeroinitializer }, align 32
@bttv_rc5_irq._entry_ptr = internal global ptr @bttv_rc5_irq._entry, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mark\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@get_key_pv951._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.13, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016bttv: read error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_key_pv951\00", [18 x i8] zeroinitializer }, align 32
@get_key_pv951._entry_ptr = internal global ptr @get_key_pv951._entry, section ".printk_index", align 4
@get_key_pv951._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.13, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016bttv: key %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@get_key_pv951._entry_ptr.32 = internal global ptr @get_key_pv951._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bttv_ir_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ir->timer)\00", [19 x i8] zeroinitializer }, align 32
@bttv_ir_start.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ir_enltv_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.13, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016bttv: gpio=0x%x code=%d | %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ir_enltv_handle_key\00", [44 x i8] zeroinitializer }, align 32
@ir_enltv_handle_key._entry_ptr = internal global ptr @ir_enltv_handle_key._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"up/down\00", [24 x i8] zeroinitializer }, align 32
@ir_enltv_handle_key._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.13, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bttv: (cnt) gpio=0x%x code=%d | %s\0A\00", [58 x i8] zeroinitializer }, align 32
@ir_enltv_handle_key._entry_ptr.40 = internal global ptr @ir_enltv_handle_key._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@bttv_rc5_timer_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.13, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016bttv: spurious timer_end\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bttv_rc5_timer_end\00", [45 x i8] zeroinitializer }, align 32
@bttv_rc5_timer_end._entry_ptr = internal global ptr @bttv_rc5_timer_end._entry, section ".printk_index", align 4
@bttv_rc5_timer_end._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.13, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016bttv: short code: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@bttv_rc5_timer_end._entry_ptr.46 = internal global ptr @bttv_rc5_timer_end._entry.44, section ".printk_index", align 4
@bttv_rc5_timer_end._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.13, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016bttv: scancode %x, toggle %x\0A\00", [32 x i8] zeroinitializer }, align 32
@bttv_rc5_timer_end._entry_ptr.49 = internal global ptr @bttv_rc5_timer_end._entry.47, section ".printk_index", align 4
@bttv_rc5_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.13, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016bttv: rc5_decode(%x) bad code\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bttv_rc5_decode\00", [16 x i8] zeroinitializer }, align 32
@bttv_rc5_decode._entry_ptr = internal global ptr @bttv_rc5_decode._entry, section ".printk_index", align 4
@bttv_rc5_decode._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.13, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016bttv: code=%x, rc5=%x, start=%x, toggle=%x, address=%x, instr=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@bttv_rc5_decode._entry_ptr.54 = internal global ptr @bttv_rc5_decode._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 6, i64 13, i64 24, i64 34, i64 38, i64 41, i64 50, i64 59, i64 70, i64 72, i64 104, i64 120, i64 123, i64 124, i64 127, i64 137, i64 139, i64 144, i64 151, i64 152, i64 165]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 21, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"ir_rc5_remote_gap\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 24, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"addr_list\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 364, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 376, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 380, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 382, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 429, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 437, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 444, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 459, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 469, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 484, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 494, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 500, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 510, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 531, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 533, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 549, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 55, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 256, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 332, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 341, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 293, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 298, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 90, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 101, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 203, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 209, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 232, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 172, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [40 x i8] c"../drivers/media/pci/bt8xx/bttv-input.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 177, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_ir_debugtype321, ptr @__UNIQUE_ID_ir_rc5_remote_gaptype322, ptr @__param_ir_debug, ptr @__param_ir_rc5_remote_gap, ptr @bttv_input_init._entry, ptr @bttv_input_init._entry_ptr, ptr @bttv_rc5_decode._entry, ptr @bttv_rc5_decode._entry.52, ptr @bttv_rc5_decode._entry_ptr, ptr @bttv_rc5_decode._entry_ptr.54, ptr @bttv_rc5_irq._entry, ptr @bttv_rc5_irq._entry_ptr, ptr @bttv_rc5_timer_end._entry, ptr @bttv_rc5_timer_end._entry.44, ptr @bttv_rc5_timer_end._entry.47, ptr @bttv_rc5_timer_end._entry_ptr, ptr @bttv_rc5_timer_end._entry_ptr.46, ptr @bttv_rc5_timer_end._entry_ptr.49, ptr @get_key_pv951._entry, ptr @get_key_pv951._entry.30, ptr @get_key_pv951._entry_ptr, ptr @get_key_pv951._entry_ptr.32, ptr @ir_enltv_handle_key._entry, ptr @ir_enltv_handle_key._entry.38, ptr @ir_enltv_handle_key._entry_ptr, ptr @ir_enltv_handle_key._entry_ptr.40, ptr @ir_handle_key._entry, ptr @ir_handle_key._entry_ptr, ptr @ir_debug, ptr @ir_rc5_remote_gap, ptr @init_bttv_i2c_ir.addr_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @bttv_ir_start.__key, ptr @.str.33, ptr @bttv_ir_start.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc5_remote_gap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_bttv_i2c_ir.addr_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_input_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pv951._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pv951._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_ir_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_ir_start.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_enltv_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_enltv_handle_key._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_timer_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_timer_end._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_timer_end._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_rc5_decode._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_input_irq(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 33
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %rc5_gpio = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %rc5_gpio to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rc5_gpio, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call i64 @ktime_get() #7
  %base_time.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %base_time.i, align 8
  %sub.i = sub i64 %call1.i, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %7 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %7, i32 0) #10, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %7, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 1000000
  %spec.store.select.i = select i1 %cmp.i, i32 200000, i32 %conv.i
  %10 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.i = icmp sgt i32 %10, 0
  %and.i = and i32 %call.i, 32
  br i1 %cmp4.i, label %do.end.i, label %if.then.do.end11.i_crit_edge

if.then.do.end11.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.27, ptr @.str.26
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %spec.store.select.i, ptr noundef nonnull %cond.i) #11
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %if.then.do.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.end11.i.if.end3_crit_edge, label %if.end15.i

do.end11.i.if.end3_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end15.i:                                       ; preds = %do.end11.i
  %active.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not.i = icmp eq i8 %12, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %last_bit.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %last_bit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_bit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %14)
  %cmp18.i = icmp ult i32 %14, 28
  br i1 %cmp18.i, label %if.then20.i, label %if.then17.i.if.end32.i_crit_edge

if.then17.i.if.end32.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @ir_rc5_remote_gap, align 4
  %div.neg.i = sdiv i32 %15, -2
  %sub21.i = add nsw i32 %div.neg.i, %spec.store.select.i
  %div22.i = udiv i32 %sub21.i, %15
  %16 = ptrtoint ptr %last_bit.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div22.i, ptr %last_bit.i, align 8
  %shl.i = shl nuw i32 1, %div22.i
  %code.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 4
  %or.i = or i32 %18, %shl.i
  store i32 %or.i, ptr %code.i, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %active.i, align 8
  %code27.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %code27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %code27.i, align 4
  %21 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call1.i, ptr %base_time.i, align 8
  %last_bit29.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %last_bit29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %last_bit29.i, align 8
  %timer.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 2
  %add.i = add i32 %4, 3
  %call31.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then20.i, %if.then17.i.if.end32.i_crit_edge
  %and34.i = and i32 %call.i, -17
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %and34.i) #7
  %or36.i = or i32 %call.i, 16
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %or36.i) #7
  br label %if.end3

if.else:                                          ; preds = %entry
  %polling = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not = icmp eq i32 %24, 0
  br i1 %tobool1.not, label %if.then2, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ir_handle_key(ptr noundef %btv)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.end32.i, %do.end11.i.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ir_handle_key(ptr noundef %btv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 33
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %call = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %polling = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %last_gpio = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %last_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_gpio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call)
  %cmp = icmp eq i32 %5, %call
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %last_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %last_gpio, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %mask_keycode = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %mask_keycode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask_keycode, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end3
  %data.addr.0.i = phi i32 [ %call, %if.end3 ], [ %shr.i, %if.end4.i.do.body.i_crit_edge ]
  %mask.addr.0.i = phi i32 [ %8, %if.end3 ], [ %shr5.i, %if.end4.i.do.body.i_crit_edge ]
  %vbit.0.i = phi i32 [ 1, %if.end3 ], [ %vbit.1.i, %if.end4.i.do.body.i_crit_edge ]
  %value.0.i = phi i32 [ 0, %if.end3 ], [ %value.2.i, %if.end4.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end4.i_crit_edge, label %if.then.i

do.body.i.if.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = and i32 %data.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.i = select i1 %tobool2.not.i, i32 0, i32 %vbit.0.i
  %spec.select.i = or i32 %value.0.i, %or.i
  %shl.i = shl i32 %vbit.0.i, 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %do.body.i.if.end4.i_crit_edge
  %vbit.1.i = phi i32 [ %shl.i, %if.then.i ], [ %vbit.0.i, %do.body.i.if.end4.i_crit_edge ]
  %value.2.i = phi i32 [ %spec.select.i, %if.then.i ], [ %value.0.i, %do.body.i.if.end4.i_crit_edge ]
  %shr.i = lshr i32 %data.addr.0.i, 1
  %shr5.i = lshr i32 %mask.addr.0.i, 1
  %tobool6.not.i = icmp ult i32 %mask.addr.0.i, 2
  br i1 %tobool6.not.i, label %ir_extract_bits.exit, label %if.end4.i.do.body.i_crit_edge

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

ir_extract_bits.exit:                             ; preds = %if.end4.i
  %9 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %do.end, label %ir_extract_bits.exit.do.end18_crit_edge

ir_extract_bits.exit.do.end18_crit_edge:          ; preds = %ir_extract_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %ir_extract_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  %mask_keydown = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %mask_keydown to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_keydown, align 4
  %and = and i32 %11, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.22, ptr @.str.21
  %mask_keyup = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %mask_keyup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask_keyup, align 8
  %and12 = and i32 %13, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.22, ptr @.str.23
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call, i32 noundef %value.2.i, ptr noundef nonnull %cond, ptr noundef nonnull %cond11, ptr noundef nonnull %cond14) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %ir_extract_bits.exit.do.end18_crit_edge
  %mask_keydown19 = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %mask_keydown19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask_keydown19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  %and22 = and i32 %15, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond = select i1 %tobool20.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %lor.lhs.false, label %do.end18.if.then30_crit_edge

do.end18.if.then30_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

lor.lhs.false:                                    ; preds = %do.end18
  %mask_keyup24 = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %mask_keyup24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask_keyup24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool25.not = icmp ne i32 %17, 0
  %and28 = and i32 %17, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond67 = select i1 %tobool25.not, i1 %tobool29.not, i1 false
  br i1 %or.cond67, label %lor.lhs.false.if.then30_crit_edge, label %if.else

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %do.end18.if.then30_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %conv = zext i32 %value.2.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %19, i32 noundef 0, i64 noundef %conv, i8 noundef zeroext 0) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %21)
  %cmp32 = icmp eq i32 %21, 34
  br i1 %cmp32, label %if.then34, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %conv36 = zext i32 %value.2.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %23, i32 noundef 0, i64 noundef %conv36, i8 noundef zeroext 0) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else.if.end37_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void @rc_keyup(ptr noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then30, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_bttv_i2c_ir(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %i2c_rc = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
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
  %init_data = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 34
  %3 = call ptr @memset(ptr %init_data, i32 0, i32 32)
  %call = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str, i32 noundef 20) #7
  %type1 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cond = icmp eq i32 %5, 42
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 34, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %name, align 4
  %get_key = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 34, i32 4
  %7 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @get_key_pv951, ptr %get_key, align 4
  %8 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.2, ptr %init_data, align 8
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 75, ptr %addr, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %name6 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 34, i32 1
  %10 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name6, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init_data, ptr %platform_data, align 4
  %i2c_adap = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call10 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %info) #7
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap12 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call13 = call ptr @i2c_new_scanned_device(ptr noundef %i2c_adap12, ptr noundef nonnull %info, ptr noundef nonnull @init_bttv_i2c_ir.addr_list, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_pv951(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !124
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp7, i32 %call.i, i32 -5
  br label %cleanup

if.end10:                                         ; preds = %entry
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %5)
  %cmp11 = icmp eq i8 %5, -86
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %do.body15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp sgt i32 %6, 0
  br i1 %cmp16, label %do.end21, label %do.body15.do.end27_crit_edge

do.body15.do.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv) #11
  br label %do.end27

do.end27:                                         ; preds = %do.end21, %do.body15.do.end27_crit_edge
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %protocol, align 4
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b, align 1
  %conv28 = zext i8 %9 to i32
  %10 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv28, ptr %scancode, align 4
  %11 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end10.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ 1, %do.end27 ], [ %call., %do.end6 ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_input_init(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 32
  %0 = ptrtoint ptr %has_remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %has_remote, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 176) #12
  %call1 = tail call ptr @rc_allocate_device(i32 noundef 0) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.err_out_free_crit_edge, label %if.end5

if.end.err_out_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.body [
    i32 6, label %if.end5.sw.bb_crit_edge
    i32 41, label %if.end5.sw.bb_crit_edge213
    i32 13, label %if.end5.sw.bb_crit_edge214
    i32 124, label %if.end5.sw.bb6_crit_edge
    i32 123, label %if.end5.sw.bb6_crit_edge215
    i32 50, label %sw.bb10
    i32 139, label %if.end5.sw.bb13_crit_edge
    i32 72, label %if.end5.sw.bb13_crit_edge216
    i32 70, label %if.end5.sw.bb13_crit_edge217
    i32 34, label %sw.bb17
    i32 24, label %if.end5.sw.bb19_crit_edge
    i32 38, label %if.end5.sw.bb19_crit_edge218
    i32 127, label %sw.bb22
    i32 59, label %if.end5.sw.bb26_crit_edge
    i32 137, label %if.end5.sw.bb26_crit_edge219
    i32 120, label %if.end5.sw.bb26_crit_edge220
    i32 165, label %if.end5.sw.bb26_crit_edge221
    i32 104, label %sw.bb30
    i32 144, label %sw.bb31
    i32 151, label %sw.bb35
    i32 152, label %sw.bb39
  ]

if.end5.sw.bb26_crit_edge221:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end5.sw.bb26_crit_edge220:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end5.sw.bb26_crit_edge219:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end5.sw.bb26_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end5.sw.bb19_crit_edge218:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end5.sw.bb19_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end5.sw.bb13_crit_edge217:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end5.sw.bb13_crit_edge216:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end5.sw.bb13_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end5.sw.bb6_crit_edge215:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end5.sw.bb6_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end5.sw.bb_crit_edge214:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.sw.bb_crit_edge213:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge213, %if.end5.sw.bb_crit_edge214
  %mask_keycode = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %mask_keycode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16285696, ptr %mask_keycode, align 8
  %mask_keydown = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %mask_keydown to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %mask_keydown, align 4
  %polling = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %polling to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %polling, align 4
  br label %if.end57

sw.bb6:                                           ; preds = %if.end5.sw.bb6_crit_edge, %if.end5.sw.bb6_crit_edge215
  %mask_keycode7 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %mask_keycode7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 983232, ptr %mask_keycode7, align 8
  %mask_keydown8 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %mask_keydown8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %mask_keydown8, align 4
  %polling9 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %polling9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50, ptr %polling9, align 4
  br label %if.end57

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode11 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %mask_keycode11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 15872, ptr %mask_keycode11, align 8
  %mask_keyup = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %mask_keyup to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %mask_keyup, align 8
  %polling12 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %polling12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50, ptr %polling12, align 4
  br label %if.end57

sw.bb13:                                          ; preds = %if.end5.sw.bb13_crit_edge, %if.end5.sw.bb13_crit_edge216, %if.end5.sw.bb13_crit_edge217
  %mask_keycode14 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %mask_keycode14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7936, ptr %mask_keycode14, align 8
  %mask_keyup15 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %mask_keyup15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32768, ptr %mask_keyup15, align 8
  %polling16 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %polling16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50, ptr %polling16, align 4
  br label %if.end57

sw.bb17:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode18 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %mask_keycode18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 504, ptr %mask_keycode18, align 8
  br label %if.end57

sw.bb19:                                          ; preds = %if.end5.sw.bb19_crit_edge, %if.end5.sw.bb19_crit_edge218
  %mask_keycode20 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %mask_keycode20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 581632, ptr %mask_keycode20, align 8
  %mask_keydown21 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %mask_keydown21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2097152, ptr %mask_keydown21, align 4
  br label %if.end57

sw.bb22:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode23 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %mask_keycode23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7936, ptr %mask_keycode23, align 8
  %mask_keyup24 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %mask_keyup24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32768, ptr %mask_keyup24, align 8
  %polling25 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %polling25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50, ptr %polling25, align 4
  br label %if.end57

sw.bb26:                                          ; preds = %if.end5.sw.bb26_crit_edge, %if.end5.sw.bb26_crit_edge219, %if.end5.sw.bb26_crit_edge220, %if.end5.sw.bb26_crit_edge221
  %mask_keycode27 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %mask_keycode27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 7936, ptr %mask_keycode27, align 8
  %mask_keyup28 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %mask_keyup28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 24576, ptr %mask_keyup28, align 8
  %polling29 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %polling29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 50, ptr %polling29, align 4
  br label %if.end57

sw.bb30:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %rc5_gpio = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %rc5_gpio to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rc5_gpio, align 4
  br label %if.end57

sw.bb31:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode32 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %mask_keycode32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7936, ptr %mask_keycode32, align 8
  %mask_keyup33 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %mask_keyup33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16384, ptr %mask_keyup33, align 8
  %polling34 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %polling34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 50, ptr %polling34, align 4
  br label %if.end57

sw.bb35:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode36 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %mask_keycode36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7936, ptr %mask_keycode36, align 8
  %mask_keyup37 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %mask_keyup37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24576, ptr %mask_keyup37, align 8
  %polling38 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %polling38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 50, ptr %polling38, align 4
  br label %if.end57

sw.bb39:                                          ; preds = %if.end5
  %mask_keycode40 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %mask_keycode40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64768, ptr %mask_keycode40, align 8
  %mask_keyup41 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %mask_keyup41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 128, ptr %mask_keyup41, align 8
  %polling42 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %polling42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %polling42, align 4
  %call44 = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %37 = ptrtoint ptr %mask_keycode40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask_keycode40, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %sw.bb39
  %data.addr.0.i = phi i32 [ %call44, %sw.bb39 ], [ %shr.i, %if.end4.i.do.body.i_crit_edge ]
  %mask.addr.0.i = phi i32 [ %38, %sw.bb39 ], [ %shr5.i, %if.end4.i.do.body.i_crit_edge ]
  %vbit.0.i = phi i32 [ 1, %sw.bb39 ], [ %vbit.1.i, %if.end4.i.do.body.i_crit_edge ]
  %value.0.i = phi i32 [ 0, %sw.bb39 ], [ %value.2.i, %if.end4.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end4.i_crit_edge, label %if.then.i

do.body.i.if.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = and i32 %data.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.i = select i1 %tobool2.not.i, i32 0, i32 %vbit.0.i
  %spec.select.i = or i32 %value.0.i, %or.i
  %shl.i = shl i32 %vbit.0.i, 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %do.body.i.if.end4.i_crit_edge
  %vbit.1.i = phi i32 [ %shl.i, %if.then.i ], [ %vbit.0.i, %do.body.i.if.end4.i_crit_edge ]
  %value.2.i = phi i32 [ %spec.select.i, %if.then.i ], [ %value.0.i, %do.body.i.if.end4.i_crit_edge ]
  %shr.i = lshr i32 %data.addr.0.i, 1
  %shr5.i = lshr i32 %mask.addr.0.i, 1
  %tobool6.not.i = icmp ult i32 %mask.addr.0.i, 2
  br i1 %tobool6.not.i, label %ir_extract_bits.exit, label %if.end4.i.do.body.i_crit_edge

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

ir_extract_bits.exit:                             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %last_gpio = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %last_gpio to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %value.2.i, ptr %last_gpio, align 8
  br label %if.end57

do.body:                                          ; preds = %if.end5
  %40 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp sgt i32 %40, 0
  br i1 %cmp, label %do.end, label %do.body.err_out_free_crit_edge

do.body.err_out_free_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %42) #11
  br label %err_out_free

if.end57:                                         ; preds = %ir_extract_bits.exit, %sw.bb35, %sw.bb31, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb19, %sw.bb17, %sw.bb13, %sw.bb10, %sw.bb6, %sw.bb
  %ir_codes.0.ph = phi ptr [ @.str.3, %sw.bb ], [ @.str.4, %sw.bb6 ], [ @.str.5, %sw.bb10 ], [ @.str.5, %sw.bb13 ], [ @.str.6, %sw.bb17 ], [ @.str.6, %sw.bb19 ], [ @.str.7, %sw.bb22 ], [ @.str.5, %sw.bb26 ], [ @.str.8, %sw.bb30 ], [ @.str.7, %sw.bb31 ], [ @.str.9, %sw.bb35 ], [ @.str.10, %ir_extract_bits.exit ]
  %rc5_gpio58 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %rc5_gpio58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rc5_gpio58, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool59.not = icmp eq i8 %44, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16, i32 noundef 16) #7
  %call63 = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %and = and i32 %call63, -17
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %and) #7
  %or = or i32 %call63, 16
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %or) #7
  br label %if.end70

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %mask_keycode67 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %mask_keycode67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask_keycode67, align 8
  %mask_keydown68 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %mask_keydown68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask_keydown68, align 4
  %or69 = or i32 %48, %46
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef %or69, i32 noundef 0) #7
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then60
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1, ptr %call7.i.i, align 8
  %btv71 = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %btv71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %btv, ptr %btv71, align 4
  %name = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %call74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %52)
  %phys = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 4
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %53 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end70.pci_name.exit_crit_edge

if.end70.pci_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end70.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.end70.pci_name.exit_crit_edge ]
  %call78 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i)
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 3
  %59 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %name, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 4
  %60 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5
  %61 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 3
  %62 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %version, align 2
  %63 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool86.not = icmp eq i16 %66, 0
  br i1 %tobool86.not, label %if.else95, label %if.then87

if.then87:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %vendor, align 2
  %68 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 10
  br label %if.end105

if.else95:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vendor98 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 7
  %70 = ptrtoint ptr %vendor98 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vendor98, align 8
  %vendor100 = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %vendor100 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %vendor100, align 2
  %73 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 8
  br label %if.end105

if.end105:                                        ; preds = %if.else95, %if.then87
  %.sink.in = phi ptr [ %device, %if.else95 ], [ %subsystem_device, %if.then87 ]
  %75 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %75)
  %.sink = load i16, ptr %.sink.in, align 2
  %76 = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %.sink, ptr %76, align 4
  %78 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pci, align 8
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev108, ptr %parent, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 7
  %81 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %ir_codes.0.ph, ptr %map_name, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call1, i32 0, i32 6
  %82 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.16, ptr %driver_name, align 8
  %remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 33
  %83 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i, ptr %remote, align 4
  %polling.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 8
  %84 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %polling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i200 = icmp eq i32 %85, 0
  br i1 %tobool.not.i200, label %if.else.i, label %do.body.i201

do.body.i201:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @bttv_input_timer, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @bttv_ir_start.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %86, 100
  %expires.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i, ptr %expires.i, align 8
  tail call void @add_timer(ptr noundef %timer.i) #7
  br label %bttv_ir_start.exit

if.else.i:                                        ; preds = %if.end105
  %88 = ptrtoint ptr %rc5_gpio58 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rc5_gpio58, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool3.not.i = icmp eq i8 %89, 0
  br i1 %tobool3.not.i, label %if.else.i.bttv_ir_start.exit_crit_edge, label %do.body5.i

if.else.i.bttv_ir_start.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_ir_start.exit

do.body5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer6.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer6.i, ptr noundef nonnull @bttv_rc5_timer_end, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @bttv_ir_start.__key.34) #7
  %shift_by.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 10
  %90 = ptrtoint ptr %shift_by.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %shift_by.i, align 4
  %91 = load i32, ptr @ir_rc5_remote_gap, align 4
  %rc5_remote_gap.i = getelementptr inbounds %struct.bttv_ir, ptr %call7.i.i, i32 0, i32 11
  %92 = ptrtoint ptr %rc5_remote_gap.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %rc5_remote_gap.i, align 8
  br label %bttv_ir_start.exit

bttv_ir_start.exit:                               ; preds = %do.body5.i, %if.else.i.bttv_ir_start.exit_crit_edge, %do.body.i201
  %call110 = tail call i32 @rc_register_device(ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %bttv_ir_start.exit.cleanup_crit_edge, label %err_out_stop

bttv_ir_start.exit.cleanup_crit_edge:             ; preds = %bttv_ir_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out_stop:                                     ; preds = %bttv_ir_start.exit
  %93 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %remote, align 4
  %polling.i202 = getelementptr inbounds %struct.bttv_ir, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %polling.i202 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %polling.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i203 = icmp eq i32 %96, 0
  br i1 %tobool.not.i203, label %err_out_stop.if.end.i_crit_edge, label %if.then.i205

err_out_stop.if.end.i_crit_edge:                  ; preds = %err_out_stop
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i205:                                     ; preds = %err_out_stop
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i204 = getelementptr inbounds %struct.bttv_ir, ptr %94, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i204) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i205, %err_out_stop.if.end.i_crit_edge
  %97 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %remote, align 4
  %rc5_gpio.i206 = getelementptr inbounds %struct.bttv_ir, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %rc5_gpio.i206 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rc5_gpio.i206, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool3.not.i207 = icmp eq i8 %100, 0
  br i1 %tobool3.not.i207, label %if.end.i.bttv_ir_stop.exit_crit_edge, label %if.then4.i

if.end.i.bttv_ir_stop.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_ir_stop.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer6.i208 = getelementptr inbounds %struct.bttv_ir, ptr %98, i32 0, i32 2
  %call7.i = tail call i32 @del_timer_sync(ptr noundef %timer6.i208) #7
  %call8.i = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %and.i209 = and i32 %call8.i, -17
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %and.i209) #7
  br label %bttv_ir_stop.exit

bttv_ir_stop.exit:                                ; preds = %if.then4.i, %if.end.i.bttv_ir_stop.exit_crit_edge
  %101 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %remote, align 4
  br label %err_out_free

err_out_free:                                     ; preds = %bttv_ir_stop.exit, %do.end, %do.body.err_out_free_crit_edge, %if.end.err_out_free_crit_edge
  %err.0 = phi i32 [ %call110, %bttv_ir_stop.exit ], [ -12, %if.end.err_out_free_crit_edge ], [ -19, %do.end ], [ -19, %do.body.err_out_free_crit_edge ]
  tail call void @rc_free_device(ptr noundef %call1) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %bttv_ir_start.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out_free ], [ -19, %entry.cleanup_crit_edge ], [ 0, %bttv_ir_start.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_gpio_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_inout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_input_fini(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 33
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %polling.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.bttv_ir, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote, align 4
  %rc5_gpio.i = getelementptr inbounds %struct.bttv_ir, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rc5_gpio.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rc5_gpio.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %if.end.i.bttv_ir_stop.exit_crit_edge, label %if.then4.i

if.end.i.bttv_ir_stop.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_ir_stop.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer6.i = getelementptr inbounds %struct.bttv_ir, ptr %5, i32 0, i32 2
  %call7.i = tail call i32 @del_timer_sync(ptr noundef %timer6.i) #7
  %call8.i = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %and.i = and i32 %call8.i, -17
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %and.i) #7
  br label %bttv_ir_stop.exit

bttv_ir_stop.exit:                                ; preds = %if.then4.i, %if.end.i.bttv_ir_stop.exit_crit_edge
  %8 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remote, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void @rc_unregister_device(ptr noundef %11) #7
  %12 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remote, align 4
  tail call void @kfree(ptr noundef %13) #7
  %14 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %remote, align 4
  br label %return

return:                                           ; preds = %bttv_ir_stop.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown_notimeout(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_input_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %btv1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btv1, align 4
  %type = getelementptr inbounds %struct.bttv_core, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %3)
  %cmp = icmp eq i32 %3, 152
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %remote.i = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote.i, align 4
  %call.i = tail call i32 @bttv_gpio_read(ptr noundef %1) #7
  %mask_keycode.i = getelementptr inbounds %struct.bttv_ir, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mask_keycode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_keycode.i, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end4.i.i.do.body.i.i_crit_edge, %if.then
  %data.addr.0.i.i = phi i32 [ %call.i, %if.then ], [ %shr.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %mask.addr.0.i.i = phi i32 [ %7, %if.then ], [ %shr5.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %vbit.0.i.i = phi i32 [ 1, %if.then ], [ %vbit.1.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
  %value.0.i.i = phi i32 [ 0, %if.then ], [ %value.2.i.i, %if.end4.i.i.do.body.i.i_crit_edge ]
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
  %mask_keyup.i = getelementptr inbounds %struct.bttv_ir, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %mask_keyup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_keyup.i, align 8
  %and.i = and i32 %9, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -2147483648
  %last_gpio.i = getelementptr inbounds %struct.bttv_ir, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %last_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_gpio.i, align 8
  %and2.i = and i32 %11, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %value.2.i.i)
  %cmp.not.i = icmp eq i32 %and2.i, %value.2.i.i
  br i1 %cmp.not.i, label %if.else.i7, label %do.body.i

do.body.i:                                        ; preds = %ir_extract_bits.exit.i
  %12 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i = icmp sgt i32 %12, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.do.end12.i_crit_edge

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond9.i = select i1 %tobool.not.i, ptr @.str.37, ptr @.str.23
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call.i, i32 noundef %value.2.i.i, ptr noundef nonnull %cond9.i) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  %conv.i = zext i32 %value.2.i.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %14, i32 noundef 0, i64 noundef %conv.i, i8 noundef zeroext 0) #7
  br i1 %tobool.not.i, label %do.end12.i.if.end46.i_crit_edge, label %if.then14.i

do.end12.i.if.end46.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then14.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 8
  tail call void @rc_keyup(ptr noundef %16) #7
  br label %if.end46.i

if.else.i7:                                       ; preds = %ir_extract_bits.exit.i
  %and18.i = and i32 %11, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %cond.i)
  %cmp19.i = icmp eq i32 %and18.i, %cond.i
  br i1 %cmp19.i, label %if.else.i7.if.end_crit_edge, label %do.body23.i

if.else.i7.if.end_crit_edge:                      ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body23.i:                                      ; preds = %if.else.i7
  %17 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.i = icmp sgt i32 %17, 0
  br i1 %cmp24.i, label %do.end29.i, label %do.body23.i.do.end38.i_crit_edge

do.body23.i.do.end38.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38.i

do.end29.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond34.i = select i1 %tobool.not.i, ptr @.str.41, ptr @.str.23
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call.i, i32 noundef %value.2.i.i, ptr noundef nonnull %cond34.i) #11
  br label %do.end38.i

do.end38.i:                                       ; preds = %do.end29.i, %do.body23.i.do.end38.i_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  br i1 %tobool.not.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rc_keyup(ptr noundef %19) #7
  br label %if.end46.i

if.else42.i:                                      ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv44.i = zext i32 %value.2.i.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %19, i32 noundef 0, i64 noundef %conv44.i, i8 noundef zeroext 0) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else42.i, %if.then40.i, %if.then14.i, %do.end12.i.if.end46.i_crit_edge
  %or.i = or i32 %cond.i, %value.2.i.i
  %20 = ptrtoint ptr %last_gpio.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %last_gpio.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ir_handle_key(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end46.i, %if.else.i7.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %polling = getelementptr i8, ptr %t, i32 124
  %22 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %polling, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #7
  %add = add i32 %call2.i, %21
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_rc5_timer_end(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %call = tail call i64 @ktime_get() #7
  %base_time = getelementptr i8, ptr %t, i32 152
  %0 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %base_time, align 8
  %sub = sub i64 %call, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #7
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #10, !srcloc !122
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !123
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv = trunc i64 %cond213.i.i to i32
  %active = getelementptr i8, ptr %t, i32 160
  %5 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28000, i32 %conv)
  %cmp387 = icmp ult i32 %conv, 28000
  br i1 %cmp387, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end15:                                         ; preds = %entry
  %last_bit = getelementptr i8, ptr %t, i32 144
  %7 = ptrtoint ptr %last_bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_bit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %8)
  %cmp16 = icmp ult i32 %8, 20
  br i1 %cmp16, label %do.body19, label %if.end31

do.body19:                                        ; preds = %if.end15
  %9 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20 = icmp sgt i32 %9, 0
  br i1 %cmp20, label %do.end25, label %do.body19.cleanup_crit_edge

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %code = getelementptr i8, ptr %t, i32 148
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %11) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end15
  %code32 = getelementptr i8, ptr %t, i32 148
  %12 = ptrtoint ptr %code32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code32, align 4
  %shift_by = getelementptr i8, ptr %t, i32 132
  %14 = ptrtoint ptr %shift_by to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift_by, align 4
  %shl = shl i32 %13, %15
  %or = or i32 %shl, 1
  store i32 %or, ptr %code32, align 4
  %and.i = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %switch = icmp eq i32 %and.i, 3
  br i1 %switch, label %if.end31.do.body.i_crit_edge, label %for.inc.i

if.end31.do.body.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.12.i.do.body.i_crit_edge, %for.inc.11.i.do.body.i_crit_edge, %for.inc.10.i.do.body.i_crit_edge, %for.inc.9.i.do.body.i_crit_edge, %for.inc.8.i.do.body.i_crit_edge, %for.inc.7.i.do.body.i_crit_edge, %for.inc.6.i.do.body.i_crit_edge, %for.inc.5.i.do.body.i_crit_edge, %for.inc.4.i.do.body.i_crit_edge, %for.inc.3.i.do.body.i_crit_edge, %for.inc.2.i.do.body.i_crit_edge, %for.inc.1.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge, %if.end31.do.body.i_crit_edge
  %16 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.i = icmp sgt i32 %16, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %or) #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.end31
  %shr.i = lshr i32 %shl, 2
  %and.1.i = and i32 %shr.i, 3
  %shr.1.i = lshr i32 %shl, 4
  %17 = zext i32 %and.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and.1.i, label %for.inc.i.for.inc.1.i_crit_edge [
    i32 3, label %for.inc.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.1.i
  ]

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

sw.bb1.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb1.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %rc5.1.1.i = phi i32 [ 4, %for.inc.i.for.inc.1.i_crit_edge ], [ 6, %sw.bb1.1.i ]
  %and.2.i = and i32 %shr.1.i, 3
  %shr.2.i = lshr i32 %shl, 6
  %18 = zext i32 %and.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge [
    i32 3, label %for.inc.1.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.2.i
  ]

for.inc.1.i.do.body.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

sw.bb1.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.2.i = or i32 %rc5.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.bb1.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %rc5.1.2.i = phi i32 [ %rc5.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %or.2.i, %sw.bb1.2.i ]
  %and.3.i = and i32 %shr.2.i, 3
  %shr.3.i = lshr i32 %shl, 8
  %shl.3.i = shl nsw i32 %rc5.1.2.i, 1
  %19 = zext i32 %and.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge [
    i32 3, label %for.inc.2.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.3.i
  ]

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

sw.bb1.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.3.i = or i32 %shl.3.i, 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.bb1.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %rc5.1.3.i = phi i32 [ %shl.3.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %or.3.i, %sw.bb1.3.i ]
  %and.4.i = and i32 %shr.3.i, 3
  %shr.4.i = lshr i32 %shl, 10
  %shl.4.i = shl i32 %rc5.1.3.i, 1
  %20 = zext i32 %and.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge [
    i32 3, label %for.inc.3.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.4.i
  ]

for.inc.3.i.do.body.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

sw.bb1.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.4.i = or i32 %shl.4.i, 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %sw.bb1.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %rc5.1.4.i = phi i32 [ %shl.4.i, %for.inc.3.i.for.inc.4.i_crit_edge ], [ %or.4.i, %sw.bb1.4.i ]
  %and.5.i = and i32 %shr.4.i, 3
  %shr.5.i = lshr i32 %shl, 12
  %shl.5.i = shl i32 %rc5.1.4.i, 1
  %21 = zext i32 %and.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge [
    i32 3, label %for.inc.4.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.5.i
  ]

for.inc.4.i.do.body.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

sw.bb1.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.5.i = or i32 %shl.5.i, 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %sw.bb1.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %rc5.1.5.i = phi i32 [ %shl.5.i, %for.inc.4.i.for.inc.5.i_crit_edge ], [ %or.5.i, %sw.bb1.5.i ]
  %and.6.i = and i32 %shr.5.i, 3
  %shr.6.i = lshr i32 %shl, 14
  %shl.6.i = shl i32 %rc5.1.5.i, 1
  %22 = zext i32 %and.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge [
    i32 3, label %for.inc.5.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.6.i
  ]

for.inc.5.i.do.body.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

sw.bb1.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.6.i = or i32 %shl.6.i, 1
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %sw.bb1.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %rc5.1.6.i = phi i32 [ %shl.6.i, %for.inc.5.i.for.inc.6.i_crit_edge ], [ %or.6.i, %sw.bb1.6.i ]
  %and.7.i = and i32 %shr.6.i, 3
  %shr.7.i = lshr i32 %shl, 16
  %shl.7.i = shl i32 %rc5.1.6.i, 1
  %23 = zext i32 %and.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge [
    i32 3, label %for.inc.6.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.7.i
  ]

for.inc.6.i.do.body.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i

sw.bb1.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.7.i = or i32 %shl.7.i, 1
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %sw.bb1.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %rc5.1.7.i = phi i32 [ %shl.7.i, %for.inc.6.i.for.inc.7.i_crit_edge ], [ %or.7.i, %sw.bb1.7.i ]
  %and.8.i = and i32 %shr.7.i, 3
  %shr.8.i = lshr i32 %shl, 18
  %shl.8.i = shl i32 %rc5.1.7.i, 1
  %24 = zext i32 %and.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge [
    i32 3, label %for.inc.7.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.8.i
  ]

for.inc.7.i.do.body.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8.i

sw.bb1.8.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.8.i = or i32 %shl.8.i, 1
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %sw.bb1.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %rc5.1.8.i = phi i32 [ %shl.8.i, %for.inc.7.i.for.inc.8.i_crit_edge ], [ %or.8.i, %sw.bb1.8.i ]
  %and.9.i = and i32 %shr.8.i, 3
  %shr.9.i = lshr i32 %shl, 20
  %shl.9.i = shl i32 %rc5.1.8.i, 1
  %25 = zext i32 %and.9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge [
    i32 3, label %for.inc.8.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.9.i
  ]

for.inc.8.i.do.body.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9.i

sw.bb1.9.i:                                       ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.9.i = or i32 %shl.9.i, 1
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %sw.bb1.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  %rc5.1.9.i = phi i32 [ %shl.9.i, %for.inc.8.i.for.inc.9.i_crit_edge ], [ %or.9.i, %sw.bb1.9.i ]
  %and.10.i = and i32 %shr.9.i, 3
  %shr.10.i = lshr i32 %shl, 22
  %shl.10.i = shl i32 %rc5.1.9.i, 1
  %26 = zext i32 %and.10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge [
    i32 3, label %for.inc.9.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.10.i
  ]

for.inc.9.i.do.body.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10.i

sw.bb1.10.i:                                      ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.10.i = or i32 %shl.10.i, 1
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %sw.bb1.10.i, %for.inc.9.i.for.inc.10.i_crit_edge
  %rc5.1.10.i = phi i32 [ %shl.10.i, %for.inc.9.i.for.inc.10.i_crit_edge ], [ %or.10.i, %sw.bb1.10.i ]
  %and.11.i = and i32 %shr.10.i, 3
  %shr.11.i = lshr i32 %shl, 24
  %shl.11.i = shl i32 %rc5.1.10.i, 1
  %27 = zext i32 %and.11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and.11.i, label %for.inc.10.i.for.inc.11.i_crit_edge [
    i32 3, label %for.inc.10.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.11.i
  ]

for.inc.10.i.do.body.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.10.i.for.inc.11.i_crit_edge:              ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11.i

sw.bb1.11.i:                                      ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.11.i = or i32 %shl.11.i, 1
  br label %for.inc.11.i

for.inc.11.i:                                     ; preds = %sw.bb1.11.i, %for.inc.10.i.for.inc.11.i_crit_edge
  %rc5.1.11.i = phi i32 [ %shl.11.i, %for.inc.10.i.for.inc.11.i_crit_edge ], [ %or.11.i, %sw.bb1.11.i ]
  %and.12.i = and i32 %shr.11.i, 3
  %shr.12.i = lshr i32 %shl, 26
  %shl.12.i = shl i32 %rc5.1.11.i, 1
  %28 = zext i32 %and.12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and.12.i, label %for.inc.11.i.for.inc.12.i_crit_edge [
    i32 3, label %for.inc.11.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.12.i
  ]

for.inc.11.i.do.body.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.11.i.for.inc.12.i_crit_edge:              ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12.i

sw.bb1.12.i:                                      ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.12.i = or i32 %shl.12.i, 1
  br label %for.inc.12.i

for.inc.12.i:                                     ; preds = %sw.bb1.12.i, %for.inc.11.i.for.inc.12.i_crit_edge
  %rc5.1.12.i = phi i32 [ %shl.12.i, %for.inc.11.i.for.inc.12.i_crit_edge ], [ %or.12.i, %sw.bb1.12.i ]
  %and.13.i = and i32 %shr.12.i, 3
  %shl.13.i = shl i32 %rc5.1.12.i, 1
  %29 = zext i32 %and.13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and.13.i, label %for.inc.12.i.for.inc.13.i_crit_edge [
    i32 3, label %for.inc.12.i.do.body.i_crit_edge
    i32 1, label %sw.bb1.13.i
  ]

for.inc.12.i.do.body.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.12.i.for.inc.13.i_crit_edge:              ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13.i

sw.bb1.13.i:                                      ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.13.i = or i32 %shl.13.i, 1
  br label %for.inc.13.i

for.inc.13.i:                                     ; preds = %sw.bb1.13.i, %for.inc.12.i.for.inc.13.i_crit_edge
  %rc5.1.13.i = phi i32 [ %shl.13.i, %for.inc.12.i.for.inc.13.i_crit_edge ], [ %or.13.i, %sw.bb1.13.i ]
  %30 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8.i = icmp sgt i32 %30, 0
  br i1 %cmp8.i, label %do.end12.i, label %for.inc.13.i.bttv_rc5_decode.exit_crit_edge

for.inc.13.i.bttv_rc5_decode.exit_crit_edge:      ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = lshr i32 %rc5.1.13.i, 11
  %.pre95 = lshr i32 %rc5.1.13.i, 12
  %.pre96 = and i32 %.pre95, 3
  br label %bttv_rc5_decode.exit

do.end12.i:                                       ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr14.i = lshr i32 %rc5.1.13.i, 12
  %and15.i = and i32 %shr14.i, 3
  %shr16.i = lshr i32 %rc5.1.13.i, 11
  %and17.i = and i32 %shr16.i, 1
  %shr18.i = lshr i32 %rc5.1.13.i, 6
  %and19.i = and i32 %shr18.i, 31
  %and21.i = and i32 %rc5.1.13.i, 63
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %rc5.1.13.i, i32 noundef %or, i32 noundef %and15.i, i32 noundef %and17.i, i32 noundef %and19.i, i32 noundef %and21.i) #11
  br label %bttv_rc5_decode.exit

bttv_rc5_decode.exit:                             ; preds = %do.end12.i, %for.inc.13.i.bttv_rc5_decode.exit_crit_edge
  %and44.pre-phi = phi i32 [ %.pre96, %for.inc.13.i.bttv_rc5_decode.exit_crit_edge ], [ %and15.i, %do.end12.i ]
  %shr.pre-phi = phi i32 [ %.pre, %for.inc.13.i.bttv_rc5_decode.exit_crit_edge ], [ %shr16.i, %do.end12.i ]
  %31 = trunc i32 %shr.pre-phi to i8
  %conv36 = and i8 %31, 1
  %32 = trunc i32 %rc5.1.13.i to i8
  %conv42 = and i8 %32, 63
  %33 = zext i32 %and44.pre-phi to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and44.pre-phi, label %bttv_rc5_decode.exit.cleanup_crit_edge [
    i32 3, label %bttv_rc5_decode.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

bttv_rc5_decode.exit.sw.epilog_crit_edge:         ; preds = %bttv_rc5_decode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

bttv_rc5_decode.exit.cleanup_crit_edge:           ; preds = %bttv_rc5_decode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %bttv_rc5_decode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = or i8 %conv42, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %bttv_rc5_decode.exit.sw.epilog_crit_edge
  %command.0 = phi i8 [ %34, %sw.bb ], [ %conv42, %bttv_rc5_decode.exit.sw.epilog_crit_edge ]
  %35 = shl i32 %rc5.1.13.i, 2
  %shl48 = and i32 %35, 7936
  %conv49 = zext i8 %command.0 to i32
  %or50 = or i32 %shl48, %conv49
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %conv51 = zext i32 %or50 to i64
  tail call void @rc_keydown(ptr noundef %37, i32 noundef 2, i64 noundef %conv51, i8 noundef zeroext %conv36) #7
  %38 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp53 = icmp sgt i32 %38, 0
  br i1 %cmp53, label %do.end58, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv60 = zext i8 %conv36 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %or50, i32 noundef %conv60) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %sw.epilog.cleanup_crit_edge, %bttv_rc5_decode.exit.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end25, %do.body19.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__param_ir_debug, !1, !"__param_ir_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_debugtype321, !1, !"__UNIQUE_ID_ir_debugtype321", i1 false, i1 false}
!3 = !{ptr @__param_ir_rc5_remote_gap, !4, !"__param_ir_rc5_remote_gap", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 25, i32 1}
!5 = !{ptr @__UNIQUE_ID_ir_rc5_remote_gaptype322, !4, !"__UNIQUE_ID_ir_rc5_remote_gaptype322", i1 false, i1 false}
!6 = !{ptr @init_bttv_i2c_ir.addr_list, !7, !"addr_list", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 364, i32 30}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 376, i32 21}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 380, i32 25}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 382, i32 29}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 429, i32 22}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 437, i32 22}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 444, i32 22}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 459, i32 22}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 469, i32 22}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 484, i32 22}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 494, i32 22}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 500, i32 22}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 510, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bttv_input_init._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @bttv_input_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 531, i32 39}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 533, i32 39}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 549, i32 20}
!42 = !{ptr @ir_debug, !43, !"ir_debug", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 21, i32 12}
!44 = !{ptr @__param_str_ir_debug, !1, !"__param_str_ir_debug", i1 false, i1 false}
!45 = !{ptr @__param_str_ir_rc5_remote_gap, !4, !"__param_str_ir_rc5_remote_gap", i1 false, i1 false}
!46 = !{ptr @ir_rc5_remote_gap, !47, !"ir_rc5_remote_gap", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 24, i32 12}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 55, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ir_handle_key._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ir_handle_key._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 256, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bttv_rc5_irq._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bttv_rc5_irq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 332, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @get_key_pv951._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @get_key_pv951._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 341, i32 2}
!72 = !{ptr @get_key_pv951._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @get_key_pv951._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @bttv_ir_start.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 293, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bttv_ir_start.__key.34, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 298, i32 3}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 90, i32 3}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ir_enltv_handle_key._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ir_enltv_handle_key._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 101, i32 3}
!87 = !{ptr @ir_enltv_handle_key._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ir_enltv_handle_key._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 203, i32 3}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @bttv_rc5_timer_end._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @bttv_rc5_timer_end._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 209, i32 3}
!97 = !{ptr @bttv_rc5_timer_end._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bttv_rc5_timer_end._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 232, i32 2}
!101 = !{ptr @bttv_rc5_timer_end._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @bttv_rc5_timer_end._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 172, i32 4}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @bttv_rc5_decode._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @bttv_rc5_decode._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/bt8xx/bttv-input.c", i32 177, i32 2}
!110 = !{ptr @bttv_rc5_decode._entry.52, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @bttv_rc5_decode._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{i64 712389, i64 712416, i64 712438, i64 712466}
!123 = !{i64 712797, i64 712824, i64 712857, i64 712878, i64 712905, i64 712931}
!124 = !{!"auto-init"}
