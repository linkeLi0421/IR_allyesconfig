; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-avcore.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-avcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cx231xx_enable656\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_enable656\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_enable656\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_enable656:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_enable656\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_enable656:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx231xx_disable656\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_disable656\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_disable656\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_disable656:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_disable656\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_disable656:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx231xx_unmute_audio\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_unmute_audio\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_unmute_audio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_unmute_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_unmute_audio\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_unmute_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx231xx_enable_i2c_port_3\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_enable_i2c_port_3\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_enable_i2c_port_3\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_enable_i2c_port_3:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_enable_i2c_port_3\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_enable_i2c_port_3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx231xx_capture_start\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_capture_start\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_capture_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_capture_start:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_capture_start\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_capture_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dif_settings = type { i32, i32, i32 }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122 }
%struct.anon.115 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { ptr, ptr }
%struct.anon.117 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.anon.122 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@initGPIO.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx231xx\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"initGPIO\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/cx231xx/cx231xx-avcore.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"verve_read_byte address0x07=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@initGPIO.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx231xx_afe_init_super_block\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Init Super Block failed in send cmd\0A\00", [55 x i8] zeroinitializer }, align 32
@cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Init Super Block failed in receive cmd\0A\00", [52 x i8] zeroinitializer }, align 32
@cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Init Super Block force break in loop !!!!\0A\00", [49 x i8] zeroinitializer }, align 32
@cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cx231xx_afe_update_power_control\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid AV mode input\0A\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_boards = external dso_local local_unnamed_addr global [0 x %struct.cx231xx_board], align 8
@cx231xx_set_video_input_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 568, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to set Power - errCode [%d]!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cx231xx_set_video_input_mux\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_set_video_input_mux._entry_ptr = internal global ptr @cx231xx_set_video_input_mux._entry, section ".printk_index", align 4
@cx231xx_set_video_input_mux._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 586, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_set_video_input_mux._entry_ptr.15 = internal global ptr @cx231xx_set_video_input_mux._entry.14, section ".printk_index", align 4
@cx231xx_set_video_input_mux._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 615, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unknown Input %d !\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_set_video_input_mux._entry_ptr.18 = internal global ptr @cx231xx_set_video_input_mux._entry.16, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 636, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: adjust_ref_count :Failed to set AFE input mux - errCode [%d]!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx231xx_set_decoder_video_input\00", [32 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr = internal global ptr @cx231xx_set_decoder_video_input._entry, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 646, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: set_input_mux :Failed to set AFE input mux - errCode [%d]!\0A\00", [32 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr.23 = internal global ptr @cx231xx_set_decoder_video_input._entry.21, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 678, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: cx231xx_dif set to By pass mode- errCode [%d]!\0A\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr.26 = internal global ptr @cx231xx_set_decoder_video_input._entry.24, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 723, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr.28 = internal global ptr @cx231xx_set_decoder_video_input._entry.27, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 798, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr.30 = internal global ptr @cx231xx_set_decoder_video_input._entry.29, section ".printk_index", align 4
@cx231xx_set_decoder_video_input._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 834, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_set_decoder_video_input._entry_ptr.32 = internal global ptr @cx231xx_set_decoder_video_input._entry.31, section ".printk_index", align 4
@__kstrtab_cx231xx_enable656 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_enable656 = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_enable656 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_enable656 to i32), ptr @__kstrtab_cx231xx_enable656, ptr @__kstrtabns_cx231xx_enable656 }, section "___ksymtab_gpl+cx231xx_enable656", align 4
@__kstrtab_cx231xx_disable656 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_disable656 = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_disable656 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_disable656 to i32), ptr @__kstrtab_cx231xx_disable656, ptr @__kstrtabns_cx231xx_disable656 }, section "___ksymtab_gpl+cx231xx_disable656", align 4
@cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cx231xx_do_mode_ctrl_overrides\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: NTSC\0A\00", [22 x i8] zeroinitializer }, align 32
@cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: SECAM\0A\00", [21 x i8] zeroinitializer }, align 32
@cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.37, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: PAL\0A\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_cx231xx_unmute_audio = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_unmute_audio = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_unmute_audio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_unmute_audio to i32), ptr @__kstrtab_cx231xx_unmute_audio, ptr @__kstrtabns_cx231xx_unmute_audio }, section "___ksymtab_gpl+cx231xx_unmute_audio", align 4
@cx231xx_set_audio_decoder_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1222, ptr @.str.40, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown tuner type configuring SIF\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx231xx_set_audio_decoder_input\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cx231xx_set_audio_decoder_input._entry_ptr = internal global ptr @cx231xx_set_audio_decoder_input._entry, section ".printk_index", align 4
@__kstrtab_cx231xx_enable_i2c_port_3 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_enable_i2c_port_3 = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_enable_i2c_port_3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_enable_i2c_port_3 to i32), ptr @__kstrtab_cx231xx_enable_i2c_port_3, ptr @__kstrtabns_cx231xx_enable_i2c_port_3 }, section "___ksymtab_gpl+cx231xx_enable_i2c_port_3", align 4
@cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx231xx_dump_HH_reg\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg0x%x=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AFE_CTRL_C2HH_SRC_CTRL=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cx231xx_set_Colibri_For_LowIF\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Enter cx231xx_set_Colibri_For_LowIF()\0A\00", [57 x i8] zeroinitializer }, align 32
@cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 1, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"colibri_carrier_offset=%d, standard=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx231xx_set_DIF_bandpass\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"if_freq=%d;spectral_invert=0x%x;mode=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Enter IF=%zu\0A\00", [18 x i8] zeroinitializer }, align 32
@Dif_set_array = internal constant { [2489 x %struct.dif_settings], [7476 x i8] } { [2489 x %struct.dif_settings] [%struct.dif_settings { i32 3000000, i32 840, i32 2 }, %struct.dif_settings { i32 3000000, i32 844, i32 524306 }, %struct.dif_settings { i32 3000000, i32 848, i32 1966116 }, %struct.dif_settings { i32 3000000, i32 852, i32 1835000 }, %struct.dif_settings { i32 3000000, i32 856, i32 -4915376 }, %struct.dif_settings { i32 3000000, i32 860, i32 -19333528 }, %struct.dif_settings { i32 3000000, i32 864, i32 -31130060 }, %struct.dif_settings { i32 3000000, i32 868, i32 -21299257 }, %struct.dif_settings { i32 3000000, i32 872, i32 21824287 }, %struct.dif_settings { i32 3000000, i32 876, i32 82839133 }, %struct.dif_settings { i32 3000000, i32 880, i32 117507720 }, %struct.dif_settings { i32 3000000, i32 884, i32 80282070 }, %struct.dif_settings { i32 3000000, i32 888, i32 -33490477 }, %struct.dif_settings { i32 3000000, i32 892, i32 -167709886 }, %struct.dif_settings { i32 3000000, i32 896, i32 -231345353 }, %struct.dif_settings { i32 3000000, i32 900, i32 -162596062 }, %struct.dif_settings { i32 3000000, i32 904, i32 17106703 }, %struct.dif_settings { i32 3000000, i32 908, i32 205918158 }, %struct.dif_settings { i32 3000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3100000, i32 840, i32 1 }, %struct.dif_settings { i32 3100000, i32 844, i32 458770 }, %struct.dif_settings { i32 3100000, i32 848, i32 2228274 }, %struct.dif_settings { i32 3100000, i32 852, i32 3604518 }, %struct.dif_settings { i32 3100000, i32 856, i32 -983151 }, %struct.dif_settings { i32 3100000, i32 860, i32 -15794564 }, %struct.dif_settings { i32 3100000, i32 864, i32 -33423924 }, %struct.dif_settings { i32 3100000, i32 868, i32 -32833829 }, %struct.dif_settings { i32 3100000, i32 872, i32 4456996 }, %struct.dif_settings { i32 3100000, i32 876, i32 70518284 }, %struct.dif_settings { i32 3100000, i32 880, i32 121112398 }, %struct.dif_settings { i32 3100000, i32 884, i32 101253985 }, %struct.dif_settings { i32 3100000, i32 888, i32 -6685895 }, %struct.dif_settings { i32 3100000, i32 892, i32 -151063626 }, %struct.dif_settings { i32 3100000, i32 896, i32 -233114971 }, %struct.dif_settings { i32 3100000, i32 900, i32 -176948685 }, %struct.dif_settings { i32 3100000, i32 904, i32 3409533 }, %struct.dif_settings { i32 3100000, i32 908, i32 201002937 }, %struct.dif_settings { i32 3100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3200000, i32 840, i32 0 }, %struct.dif_settings { i32 3200000, i32 844, i32 262158 }, %struct.dif_settings { i32 3200000, i32 848, i32 2097208 }, %struct.dif_settings { i32 3200000, i32 852, i32 4980815 }, %struct.dif_settings { i32 3200000, i32 856, i32 3145695 }, %struct.dif_settings { i32 3200000, i32 860, i32 -10682698 }, %struct.dif_settings { i32 3200000, i32 864, i32 -32637550 }, %struct.dif_settings { i32 3200000, i32 868, i32 -41943549 }, %struct.dif_settings { i32 3200000, i32 872, i32 -13238006 }, %struct.dif_settings { i32 3200000, i32 876, i32 54592885 }, %struct.dif_settings { i32 3200000, i32 880, i32 119932882 }, %struct.dif_settings { i32 3200000, i32 884, i32 119014613 }, %struct.dif_settings { i32 3200000, i32 888, i32 20249783 }, %struct.dif_settings { i32 3200000, i32 892, i32 -132123567 }, %struct.dif_settings { i32 3200000, i32 896, i32 -232525266 }, %struct.dif_settings { i32 3200000, i32 900, i32 -190318261 }, %struct.dif_settings { i32 3200000, i32 904, i32 -10222104 }, %struct.dif_settings { i32 3200000, i32 908, i32 195956644 }, %struct.dif_settings { i32 3200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3300000, i32 840, i32 65535 }, %struct.dif_settings { i32 3300000, i32 844, i32 8 }, %struct.dif_settings { i32 3300000, i32 848, i32 1703990 }, %struct.dif_settings { i32 3300000, i32 852, i32 5636205 }, %struct.dif_settings { i32 3300000, i32 856, i32 6750256 }, %struct.dif_settings { i32 3300000, i32 860, i32 -4325616 }, %struct.dif_settings { i32 3300000, i32 864, i32 -28902003 }, %struct.dif_settings { i32 3300000, i32 868, i32 -47841969 }, %struct.dif_settings { i32 3300000, i32 872, i32 -30015520 }, %struct.dif_settings { i32 3300000, i32 876, i32 35914911 }, %struct.dif_settings { i32 3300000, i32 880, i32 113838094 }, %struct.dif_settings { i32 3300000, i32 884, i32 133105191 }, %struct.dif_settings { i32 3300000, i32 888, i32 46792261 }, %struct.dif_settings { i32 3300000, i32 892, i32 -111020781 }, %struct.dif_settings { i32 3300000, i32 896, i32 -229576238 }, %struct.dif_settings { i32 3300000, i32 900, i32 -202573719 }, %struct.dif_settings { i32 3300000, i32 904, i32 -23919278 }, %struct.dif_settings { i32 3300000, i32 908, i32 190779279 }, %struct.dif_settings { i32 3300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3400000, i32 840, i32 -2 }, %struct.dif_settings { i32 3400000, i32 844, i32 -196607 }, %struct.dif_settings { i32 3400000, i32 848, i32 983084 }, %struct.dif_settings { i32 3400000, i32 852, i32 5505149 }, %struct.dif_settings { i32 3400000, i32 856, i32 9633916 }, %struct.dif_settings { i32 3400000, i32 860, i32 2424706 }, %struct.dif_settings { i32 3400000, i32 864, i32 -22610501 }, %struct.dif_settings { i32 3400000, i32 868, i32 -50070326 }, %struct.dif_settings { i32 3400000, i32 872, i32 -44958023 }, %struct.dif_settings { i32 3400000, i32 876, i32 15401874 }, %struct.dif_settings { i32 3400000, i32 880, i32 103221250 }, %struct.dif_settings { i32 3400000, i32 884, i32 143132496 }, %struct.dif_settings { i32 3400000, i32 888, i32 72220635 }, %struct.dif_settings { i32 3400000, i32 892, i32 -88214024 }, %struct.dif_settings { i32 3400000, i32 896, i32 -224333421 }, %struct.dif_settings { i32 3400000, i32 900, i32 -213715057 }, %struct.dif_settings { i32 3400000, i32 904, i32 -37485383 }, %struct.dif_settings { i32 3400000, i32 908, i32 185470840 }, %struct.dif_settings { i32 3400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3500000, i32 840, i32 -3 }, %struct.dif_settings { i32 3500000, i32 844, i32 -327687 }, %struct.dif_settings { i32 3500000, i32 848, i32 131099 }, %struct.dif_settings { i32 3500000, i32 852, i32 4587645 }, %struct.dif_settings { i32 3500000, i32 856, i32 11337914 }, %struct.dif_settings { i32 3500000, i32 860, i32 8847360 }, %struct.dif_settings { i32 3500000, i32 864, i32 -14221798 }, %struct.dif_settings { i32 3500000, i32 868, i32 -48497538 }, %struct.dif_settings { i32 3500000, i32 872, i32 -57016924 }, %struct.dif_settings { i32 3500000, i32 876, i32 -5963172 }, %struct.dif_settings { i32 3500000, i32 880, i32 88410029 }, %struct.dif_settings { i32 3500000, i32 884, i32 148703303 }, %struct.dif_settings { i32 3500000, i32 888, i32 95945074 }, %struct.dif_settings { i32 3500000, i32 892, i32 -64030977 }, %struct.dif_settings { i32 3500000, i32 896, i32 -216796816 }, %struct.dif_settings { i32 3500000, i32 900, i32 -223611203 }, %struct.dif_settings { i32 3500000, i32 904, i32 -50985953 }, %struct.dif_settings { i32 3500000, i32 908, i32 180096865 }, %struct.dif_settings { i32 3500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3600000, i32 840, i32 -3 }, %struct.dif_settings { i32 3600000, i32 844, i32 -458765 }, %struct.dif_settings { i32 3600000, i32 848, i32 -720890 }, %struct.dif_settings { i32 3600000, i32 852, i32 3080300 }, %struct.dif_settings { i32 3600000, i32 856, i32 11665635 }, %struct.dif_settings { i32 3600000, i32 860, i32 14418046 }, %struct.dif_settings { i32 3600000, i32 864, i32 -4587872 }, %struct.dif_settings { i32 3600000, i32 868, i32 -43254671 }, %struct.dif_settings { i32 3600000, i32 872, i32 -65536847 }, %struct.dif_settings { i32 3600000, i32 876, i32 -26935029 }, %struct.dif_settings { i32 3600000, i32 880, i32 70059795 }, %struct.dif_settings { i32 3600000, i32 884, i32 149686534 }, %struct.dif_settings { i32 3600000, i32 888, i32 117572354 }, %struct.dif_settings { i32 3600000, i32 892, i32 -38799325 }, %struct.dif_settings { i32 3600000, i32 896, i32 -207097494 }, %struct.dif_settings { i32 3600000, i32 900, i32 -232196619 }, %struct.dif_settings { i32 3600000, i32 904, i32 -64355452 }, %struct.dif_settings { i32 3600000, i32 908, i32 174526282 }, %struct.dif_settings { i32 3600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3700000, i32 840, i32 65533 }, %struct.dif_settings { i32 3700000, i32 844, i32 -524305 }, %struct.dif_settings { i32 3700000, i32 848, i32 -1441807 }, %struct.dif_settings { i32 3700000, i32 852, i32 1048653 }, %struct.dif_settings { i32 3700000, i32 856, i32 10551538 }, %struct.dif_settings { i32 3700000, i32 860, i32 18481392 }, %struct.dif_settings { i32 3700000, i32 864, i32 5504836 }, %struct.dif_settings { i32 3700000, i32 868, i32 -34734942 }, %struct.dif_settings { i32 3700000, i32 872, i32 -69993489 }, %struct.dif_settings { i32 3700000, i32 876, i32 -46530642 }, %struct.dif_settings { i32 3700000, i32 880, i32 48891448 }, %struct.dif_settings { i32 3700000, i32 884, i32 146082183 }, %struct.dif_settings { i32 3700000, i32 888, i32 136512643 }, %struct.dif_settings { i32 3700000, i32 892, i32 -12977824 }, %struct.dif_settings { i32 3700000, i32 896, i32 -195300992 }, %struct.dif_settings { i32 3700000, i32 900, i32 -239536841 }, %struct.dif_settings { i32 3700000, i32 904, i32 -77528345 }, %struct.dif_settings { i32 3700000, i32 908, i32 168890162 }, %struct.dif_settings { i32 3700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3800000, i32 840, i32 65534 }, %struct.dif_settings { i32 3800000, i32 844, i32 -393234 }, %struct.dif_settings { i32 3800000, i32 848, i32 -1966115 }, %struct.dif_settings { i32 3800000, i32 852, i32 -1048540 }, %struct.dif_settings { i32 3800000, i32 856, i32 8126693 }, %struct.dif_settings { i32 3800000, i32 860, i32 20578634 }, %struct.dif_settings { i32 3800000, i32 864, i32 15138808 }, %struct.dif_settings { i32 3800000, i32 868, i32 -23528177 }, %struct.dif_settings { i32 3800000, i32 872, i32 -69993625 }, %struct.dif_settings { i32 3800000, i32 876, i32 -63766956 }, %struct.dif_settings { i32 3800000, i32 880, i32 25691429 }, %struct.dif_settings { i32 3800000, i32 884, i32 137955783 }, %struct.dif_settings { i32 3800000, i32 888, i32 152372718 }, %struct.dif_settings { i32 3800000, i32 892, i32 13105843 }, %struct.dif_settings { i32 3800000, i32 896, i32 -181538380 }, %struct.dif_settings { i32 3800000, i32 900, i32 -245500796 }, %struct.dif_settings { i32 3800000, i32 904, i32 -90504631 }, %struct.dif_settings { i32 3800000, i32 908, i32 163188505 }, %struct.dif_settings { i32 3800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 3900000, i32 840, i32 0 }, %struct.dif_settings { i32 3900000, i32 844, i32 -262160 }, %struct.dif_settings { i32 3900000, i32 848, i32 -2162737 }, %struct.dif_settings { i32 3900000, i32 852, i32 -3014666 }, %struct.dif_settings { i32 3900000, i32 856, i32 4718782 }, %struct.dif_settings { i32 3900000, i32 860, i32 20513156 }, %struct.dif_settings { i32 3900000, i32 864, i32 23265452 }, %struct.dif_settings { i32 3900000, i32 868, i32 -10551887 }, %struct.dif_settings { i32 3900000, i32 872, i32 -65537245 }, %struct.dif_settings { i32 3900000, i32 876, i32 -77791987 }, %struct.dif_settings { i32 3900000, i32 880, i32 1508324 }, %struct.dif_settings { i32 3900000, i32 884, i32 125503940 }, %struct.dif_settings { i32 3900000, i32 888, i32 164759356 }, %struct.dif_settings { i32 3900000, i32 892, i32 38927384 }, %struct.dif_settings { i32 3900000, i32 896, i32 -165875197 }, %struct.dif_settings { i32 3900000, i32 900, i32 -250022948 }, %struct.dif_settings { i32 3900000, i32 904, i32 -103284310 }, %struct.dif_settings { i32 3900000, i32 908, i32 157290239 }, %struct.dif_settings { i32 3900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4000000, i32 840, i32 1 }, %struct.dif_settings { i32 4000000, i32 844, i32 -65548 }, %struct.dif_settings { i32 4000000, i32 848, i32 -1966136 }, %struct.dif_settings { i32 4000000, i32 852, i32 -4522038 }, %struct.dif_settings { i32 4000000, i32 856, i32 721026 }, %struct.dif_settings { i32 4000000, i32 860, i32 18284952 }, %struct.dif_settings { i32 4000000, i32 864, i32 29426002 }, %struct.dif_settings { i32 4000000, i32 868, i32 3210875 }, %struct.dif_settings { i32 4000000, i32 872, i32 -57017564 }, %struct.dif_settings { i32 4000000, i32 876, i32 -87819287 }, %struct.dif_settings { i32 4000000, i32 880, i32 -22740353 }, %struct.dif_settings { i32 4000000, i32 884, i32 109250943 }, %struct.dif_settings { i32 4000000, i32 888, i32 173410407 }, %struct.dif_settings { i32 4000000, i32 892, i32 64159113 }, %struct.dif_settings { i32 4000000, i32 896, i32 -148639121 }, %struct.dif_settings { i32 4000000, i32 900, i32 -253168831 }, %struct.dif_settings { i32 4000000, i32 904, i32 -115801846 }, %struct.dif_settings { i32 4000000, i32 908, i32 151391973 }, %struct.dif_settings { i32 4000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4100000, i32 840, i32 65538 }, %struct.dif_settings { i32 4100000, i32 844, i32 196603 }, %struct.dif_settings { i32 4100000, i32 848, i32 -1507382 }, %struct.dif_settings { i32 4100000, i32 852, i32 -5439580 }, %struct.dif_settings { i32 4100000, i32 856, i32 -3342282 }, %struct.dif_settings { i32 4100000, i32 860, i32 14090628 }, %struct.dif_settings { i32 4100000, i32 864, i32 32899548 }, %struct.dif_settings { i32 4100000, i32 868, i32 16777056 }, %struct.dif_settings { i32 4100000, i32 872, i32 -44958867 }, %struct.dif_settings { i32 4100000, i32 876, i32 -93390091 }, %struct.dif_settings { i32 4100000, i32 880, i32 -46071549 }, %struct.dif_settings { i32 4100000, i32 884, i32 89590009 }, %struct.dif_settings { i32 4100000, i32 888, i32 178129257 }, %struct.dif_settings { i32 4100000, i32 892, i32 88342274 }, %struct.dif_settings { i32 4100000, i32 896, i32 -129830155 }, %struct.dif_settings { i32 4100000, i32 900, i32 -254872910 }, %struct.dif_settings { i32 4100000, i32 904, i32 -128057237 }, %struct.dif_settings { i32 4100000, i32 908, i32 145362635 }, %struct.dif_settings { i32 4100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4200000, i32 840, i32 65539 }, %struct.dif_settings { i32 4200000, i32 844, i32 327683 }, %struct.dif_settings { i32 4200000, i32 848, i32 -786477 }, %struct.dif_settings { i32 4200000, i32 852, i32 -5570677 }, %struct.dif_settings { i32 4200000, i32 856, i32 -6946843 }, %struct.dif_settings { i32 4200000, i32 860, i32 8388938 }, %struct.dif_settings { i32 4200000, i32 864, i32 33423935 }, %struct.dif_settings { i32 4200000, i32 868, i32 28966992 }, %struct.dif_settings { i32 4200000, i32 872, i32 -30016520 }, %struct.dif_settings { i32 4200000, i32 876, i32 -94176709 }, %struct.dif_settings { i32 4200000, i32 880, i32 -67502210 }, %struct.dif_settings { i32 4200000, i32 884, i32 67176502 }, %struct.dif_settings { i32 4200000, i32 888, i32 178850365 }, %struct.dif_settings { i32 4200000, i32 892, i32 111083647 }, %struct.dif_settings { i32 4200000, i32 896, i32 -109710443 }, %struct.dif_settings { i32 4200000, i32 900, i32 -255069647 }, %struct.dif_settings { i32 4200000, i32 904, i32 -139853877 }, %struct.dif_settings { i32 4200000, i32 908, i32 139202223 }, %struct.dif_settings { i32 4200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4300000, i32 840, i32 65539 }, %struct.dif_settings { i32 4300000, i32 844, i32 524298 }, %struct.dif_settings { i32 4300000, i32 848, i32 65508 }, %struct.dif_settings { i32 4300000, i32 852, i32 -4915327 }, %struct.dif_settings { i32 4300000, i32 856, i32 -9764970 }, %struct.dif_settings { i32 4300000, i32 860, i32 1835248 }, %struct.dif_settings { i32 4300000, i32 864, i32 30868081 }, %struct.dif_settings { i32 4300000, i32 868, i32 39059771 }, %struct.dif_settings { i32 4300000, i32 872, i32 -13173571 }, %struct.dif_settings { i32 4300000, i32 876, i32 -90179131 }, %struct.dif_settings { i32 4300000, i32 880, i32 -86245890 }, %struct.dif_settings { i32 4300000, i32 884, i32 42731323 }, %struct.dif_settings { i32 4300000, i32 888, i32 175442655 }, %struct.dif_settings { i32 4300000, i32 892, i32 132186618 }, %struct.dif_settings { i32 4300000, i32 896, i32 -88542130 }, %struct.dif_settings { i32 4300000, i32 900, i32 -253890114 }, %struct.dif_settings { i32 4300000, i32 904, i32 -151388373 }, %struct.dif_settings { i32 4300000, i32 908, i32 132976276 }, %struct.dif_settings { i32 4300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4400000, i32 840, i32 3 }, %struct.dif_settings { i32 4400000, i32 844, i32 589839 }, %struct.dif_settings { i32 4400000, i32 848, i32 983032 }, %struct.dif_settings { i32 4400000, i32 852, i32 -3539065 }, %struct.dif_settings { i32 4400000, i32 856, i32 -11337900 }, %struct.dif_settings { i32 4400000, i32 860, i32 -4915074 }, %struct.dif_settings { i32 4400000, i32 864, i32 25559664 }, %struct.dif_settings { i32 4400000, i32 868, i32 46137872 }, %struct.dif_settings { i32 4400000, i32 872, i32 4521394 }, %struct.dif_settings { i32 4400000, i32 876, i32 -81593961 }, %struct.dif_settings { i32 4400000, i32 880, i32 -101516144 }, %struct.dif_settings { i32 4400000, i32 884, i32 16909839 }, %struct.dif_settings { i32 4400000, i32 888, i32 168102732 }, %struct.dif_settings { i32 4400000, i32 892, i32 151126894 }, %struct.dif_settings { i32 4400000, i32 896, i32 -66390754 }, %struct.dif_settings { i32 4400000, i32 900, i32 -251203238 }, %struct.dif_settings { i32 4400000, i32 904, i32 -162595189 }, %struct.dif_settings { i32 4400000, i32 908, i32 126684791 }, %struct.dif_settings { i32 4400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4500000, i32 840, i32 2 }, %struct.dif_settings { i32 4500000, i32 844, i32 524306 }, %struct.dif_settings { i32 4500000, i32 848, i32 1638414 }, %struct.dif_settings { i32 4500000, i32 852, i32 -1704034 }, %struct.dif_settings { i32 4500000, i32 856, i32 -11534555 }, %struct.dif_settings { i32 4500000, i32 860, i32 -11141120 }, %struct.dif_settings { i32 4500000, i32 864, i32 17957435 }, %struct.dif_settings { i32 4500000, i32 868, i32 49742528 }, %struct.dif_settings { i32 4500000, i32 872, i32 21888712 }, %struct.dif_settings { i32 4500000, i32 876, i32 -68814413 }, %struct.dif_settings { i32 4500000, i32 880, i32 -112723135 }, %struct.dif_settings { i32 4500000, i32 884, i32 -9435975 }, %struct.dif_settings { i32 4500000, i32 888, i32 156896129 }, %struct.dif_settings { i32 4500000, i32 892, i32 167773400 }, %struct.dif_settings { i32 4500000, i32 896, i32 -43649533 }, %struct.dif_settings { i32 4500000, i32 900, i32 -247140092 }, %struct.dif_settings { i32 4500000, i32 904, i32 -173343252 }, %struct.dif_settings { i32 4500000, i32 908, i32 120262234 }, %struct.dif_settings { i32 4500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4600000, i32 840, i32 1 }, %struct.dif_settings { i32 4600000, i32 844, i32 393234 }, %struct.dif_settings { i32 4600000, i32 848, i32 2097186 }, %struct.dif_settings { i32 4600000, i32 852, i32 393153 }, %struct.dif_settings { i32 4600000, i32 856, i32 -10354928 }, %struct.dif_settings { i32 4600000, i32 860, i32 -16121982 }, %struct.dif_settings { i32 4600000, i32 864, i32 8782295 }, %struct.dif_settings { i32 4600000, i32 868, i32 49611584 }, %struct.dif_settings { i32 4600000, i32 872, i32 37879792 }, %struct.dif_settings { i32 4600000, i32 876, i32 -52561383 }, %struct.dif_settings { i32 4600000, i32 880, i32 -119342562 }, %struct.dif_settings { i32 4600000, i32 884, i32 -35454141 }, %struct.dif_settings { i32 4600000, i32 888, i32 142150527 }, %struct.dif_settings { i32 4600000, i32 892, i32 181732913 }, %struct.dif_settings { i32 4600000, i32 896, i32 -20449540 }, %struct.dif_settings { i32 4600000, i32 900, i32 -241635139 }, %struct.dif_settings { i32 4600000, i32 904, i32 -183632562 }, %struct.dif_settings { i32 4600000, i32 908, i32 113839677 }, %struct.dif_settings { i32 4600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4700000, i32 840, i32 65535 }, %struct.dif_settings { i32 4700000, i32 844, i32 196623 }, %struct.dif_settings { i32 4700000, i32 848, i32 2228272 }, %struct.dif_settings { i32 4700000, i32 852, i32 2490349 }, %struct.dif_settings { i32 4700000, i32 856, i32 -7864555 }, %struct.dif_settings { i32 4700000, i32 860, i32 -19464432 }, %struct.dif_settings { i32 4700000, i32 864, i32 -1244852 }, %struct.dif_settings { i32 4700000, i32 868, i32 45679494 }, %struct.dif_settings { i32 4700000, i32 872, i32 51446041 }, %struct.dif_settings { i32 4700000, i32 876, i32 -33621308 }, %struct.dif_settings { i32 4700000, i32 880, i32 -121177809 }, %struct.dif_settings { i32 4700000, i32 884, i32 -60358217 }, %struct.dif_settings { i32 4700000, i32 888, i32 124193604 }, %struct.dif_settings { i32 4700000, i32 892, i32 192808822 }, %struct.dif_settings { i32 4700000, i32 896, i32 3012615 }, %struct.dif_settings { i32 4700000, i32 900, i32 -234819450 }, %struct.dif_settings { i32 4700000, i32 904, i32 -193463119 }, %struct.dif_settings { i32 4700000, i32 908, i32 107286046 }, %struct.dif_settings { i32 4700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4800000, i32 840, i32 -2 }, %struct.dif_settings { i32 4800000, i32 844, i32 -65527 }, %struct.dif_settings { i32 4800000, i32 848, i32 1966136 }, %struct.dif_settings { i32 4800000, i32 852, i32 4128795 }, %struct.dif_settings { i32 4800000, i32 856, i32 -4391114 }, %struct.dif_settings { i32 4800000, i32 860, i32 -20775242 }, %struct.dif_settings { i32 4800000, i32 864, i32 -11140955 }, %struct.dif_settings { i32 4800000, i32 868, i32 38273933 }, %struct.dif_settings { i32 4800000, i32 872, i32 61866546 }, %struct.dif_settings { i32 4800000, i32 876, i32 -12977237 }, %struct.dif_settings { i32 4800000, i32 880, i32 -118163329 }, %struct.dif_settings { i32 4800000, i32 884, i32 -83492832 }, %struct.dif_settings { i32 4800000, i32 888, i32 103418578 }, %struct.dif_settings { i32 4800000, i32 892, i32 200870051 }, %struct.dif_settings { i32 4800000, i32 896, i32 26409250 }, %struct.dif_settings { i32 4800000, i32 900, i32 -226627490 }, %struct.dif_settings { i32 4800000, i32 904, i32 -202834924 }, %struct.dif_settings { i32 4800000, i32 908, i32 100666880 }, %struct.dif_settings { i32 4800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 4900000, i32 840, i32 -3 }, %struct.dif_settings { i32 4900000, i32 844, i32 -262142 }, %struct.dif_settings { i32 4900000, i32 848, i32 1441847 }, %struct.dif_settings { i32 4900000, i32 852, i32 5308486 }, %struct.dif_settings { i32 4900000, i32 856, i32 -393363 }, %struct.dif_settings { i32 4900000, i32 860, i32 -19857796 }, %struct.dif_settings { i32 4900000, i32 864, i32 -19988496 }, %struct.dif_settings { i32 4900000, i32 868, i32 27919190 }, %struct.dif_settings { i32 4900000, i32 872, i32 68354859 }, %struct.dif_settings { i32 4900000, i32 876, i32 8387781 }, %struct.dif_settings { i32 4900000, i32 880, i32 -110299118 }, %struct.dif_settings { i32 4900000, i32 884, i32 -103874937 }, %struct.dif_settings { i32 4900000, i32 888, i32 80284204 }, %struct.dif_settings { i32 4900000, i32 892, i32 205719988 }, %struct.dif_settings { i32 4900000, i32 896, i32 49543754 }, %struct.dif_settings { i32 4900000, i32 900, i32 -217124794 }, %struct.dif_settings { i32 4900000, i32 904, i32 -211682438 }, %struct.dif_settings { i32 4900000, i32 908, i32 94047712 }, %struct.dif_settings { i32 4900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5000000, i32 840, i32 -3 }, %struct.dif_settings { i32 5000000, i32 844, i32 -393222 }, %struct.dif_settings { i32 5000000, i32 848, i32 655405 }, %struct.dif_settings { i32 5000000, i32 852, i32 5701735 }, %struct.dif_settings { i32 5000000, i32 856, i32 3669941 }, %struct.dif_settings { i32 5000000, i32 860, i32 -16777624 }, %struct.dif_settings { i32 5000000, i32 864, i32 -27066563 }, %struct.dif_settings { i32 5000000, i32 868, i32 15467235 }, %struct.dif_settings { i32 5000000, i32 872, i32 70583286 }, %struct.dif_settings { i32 5000000, i32 876, i32 29294085 }, %struct.dif_settings { i32 5000000, i32 880, i32 -98043922 }, %struct.dif_settings { i32 5000000, i32 884, i32 -121176840 }, %struct.dif_settings { i32 5000000, i32 888, i32 55314772 }, %struct.dif_settings { i32 5000000, i32 892, i32 207358628 }, %struct.dif_settings { i32 5000000, i32 896, i32 72153982 }, %struct.dif_settings { i32 5000000, i32 900, i32 -206442433 }, %struct.dif_settings { i32 5000000, i32 904, i32 -220005663 }, %struct.dif_settings { i32 5000000, i32 908, i32 87297472 }, %struct.dif_settings { i32 5000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5100000, i32 840, i32 65533 }, %struct.dif_settings { i32 5100000, i32 844, i32 -458764 }, %struct.dif_settings { i32 5100000, i32 848, i32 -196578 }, %struct.dif_settings { i32 5100000, i32 852, i32 5308539 }, %struct.dif_settings { i32 5100000, i32 856, i32 7208966 }, %struct.dif_settings { i32 5100000, i32 860, i32 -11993476 }, %struct.dif_settings { i32 5100000, i32 864, i32 -31719782 }, %struct.dif_settings { i32 5100000, i32 868, i32 1901118 }, %struct.dif_settings { i32 5100000, i32 872, i32 68355208 }, %struct.dif_settings { i32 5100000, i32 876, i32 48693083 }, %struct.dif_settings { i32 5100000, i32 880, i32 -81856494 }, %struct.dif_settings { i32 5100000, i32 884, i32 -134743169 }, %struct.dif_settings { i32 5100000, i32 888, i32 29100110 }, %struct.dif_settings { i32 5100000, i32 892, i32 205720434 }, %struct.dif_settings { i32 5100000, i32 896, i32 94043322 }, %struct.dif_settings { i32 5100000, i32 900, i32 -194514874 }, %struct.dif_settings { i32 5100000, i32 904, i32 -227739062 }, %struct.dif_settings { i32 5100000, i32 908, i32 80547232 }, %struct.dif_settings { i32 5100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5200000, i32 840, i32 65534 }, %struct.dif_settings { i32 5200000, i32 844, i32 -458769 }, %struct.dif_settings { i32 5200000, i32 848, i32 -1048567 }, %struct.dif_settings { i32 5200000, i32 852, i32 4128895 }, %struct.dif_settings { i32 5200000, i32 856, i32 9961558 }, %struct.dif_settings { i32 5200000, i32 860, i32 -5898570 }, %struct.dif_settings { i32 5200000, i32 864, i32 -33489387 }, %struct.dif_settings { i32 5200000, i32 868, i32 -11861648 }, %struct.dif_settings { i32 5200000, i32 872, i32 61867223 }, %struct.dif_settings { i32 5200000, i32 876, i32 65536185 }, %struct.dif_settings { i32 5200000, i32 880, i32 -62326657 }, %struct.dif_settings { i32 5200000, i32 884, i32 -144115165 }, %struct.dif_settings { i32 5200000, i32 888, i32 2230047 }, %struct.dif_settings { i32 5200000, i32 892, i32 200870939 }, %struct.dif_settings { i32 5200000, i32 896, i32 115015165 }, %struct.dif_settings { i32 5200000, i32 900, i32 -181538722 }, %struct.dif_settings { i32 5200000, i32 904, i32 -234948171 }, %struct.dif_settings { i32 5200000, i32 908, i32 73665919 }, %struct.dif_settings { i32 5200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5300000, i32 840, i32 65535 }, %struct.dif_settings { i32 5300000, i32 844, i32 -393234 }, %struct.dif_settings { i32 5300000, i32 848, i32 -1638413 }, %struct.dif_settings { i32 5300000, i32 852, i32 2424946 }, %struct.dif_settings { i32 5300000, i32 856, i32 11468956 }, %struct.dif_settings { i32 5300000, i32 860, i32 851728 }, %struct.dif_settings { i32 5300000, i32 864, i32 -32244296 }, %struct.dif_settings { i32 5300000, i32 868, i32 -24706935 }, %struct.dif_settings { i32 5300000, i32 872, i32 51447009 }, %struct.dif_settings { i32 5300000, i32 876, i32 79168015 }, %struct.dif_settings { i32 5300000, i32 880, i32 -40306385 }, %struct.dif_settings { i32 5300000, i32 884, i32 -149030672 }, %struct.dif_settings { i32 5300000, i32 888, i32 -24640050 }, %struct.dif_settings { i32 5300000, i32 892, i32 192810140 }, %struct.dif_settings { i32 5300000, i32 896, i32 134807364 }, %struct.dif_settings { i32 5300000, i32 900, i32 -167513978 }, %struct.dif_settings { i32 5300000, i32 904, i32 -241501918 }, %struct.dif_settings { i32 5300000, i32 908, i32 66784606 }, %struct.dif_settings { i32 5300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5400000, i32 840, i32 1 }, %struct.dif_settings { i32 5400000, i32 844, i32 -196625 }, %struct.dif_settings { i32 5400000, i32 848, i32 -2031648 }, %struct.dif_settings { i32 5400000, i32 852, i32 327766 }, %struct.dif_settings { i32 5400000, i32 856, i32 11534545 }, %struct.dif_settings { i32 5400000, i32 860, i32 7470978 }, %struct.dif_settings { i32 5400000, i32 864, i32 -28050036 }, %struct.dif_settings { i32 5400000, i32 868, i32 -35651687 }, %struct.dif_settings { i32 5400000, i32 872, i32 37815459 }, %struct.dif_settings { i32 5400000, i32 876, i32 88736589 }, %struct.dif_settings { i32 5400000, i32 880, i32 -16647650 }, %struct.dif_settings { i32 5400000, i32 884, i32 -149424147 }, %struct.dif_settings { i32 5400000, i32 888, i32 -51051423 }, %struct.dif_settings { i32 5400000, i32 892, i32 181734644 }, %struct.dif_settings { i32 5400000, i32 896, i32 153157773 }, %struct.dif_settings { i32 5400000, i32 900, i32 -152571715 }, %struct.dif_settings { i32 5400000, i32 904, i32 -247465839 }, %struct.dif_settings { i32 5400000, i32 908, i32 59903291 }, %struct.dif_settings { i32 5400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5500000, i32 840, i32 65538 }, %struct.dif_settings { i32 5500000, i32 844, i32 -13 }, %struct.dif_settings { i32 5500000, i32 848, i32 -2162735 }, %struct.dif_settings { i32 5500000, i32 852, i32 -1769425 }, %struct.dif_settings { i32 5500000, i32 856, i32 10223853 }, %struct.dif_settings { i32 5500000, i32 860, i32 13303808 }, %struct.dif_settings { i32 5500000, i32 864, i32 -21299820 }, %struct.dif_settings { i32 5500000, i32 868, i32 -43909456 }, %struct.dif_settings { i32 5500000, i32 872, i32 21824546 }, %struct.dif_settings { i32 5500000, i32 876, i32 93783140 }, %struct.dif_settings { i32 5500000, i32 880, i32 7666497 }, %struct.dif_settings { i32 5500000, i32 884, i32 -145098975 }, %struct.dif_settings { i32 5500000, i32 888, i32 -76217634 }, %struct.dif_settings { i32 5500000, i32 892, i32 167775521 }, %struct.dif_settings { i32 5500000, i32 896, i32 170000852 }, %struct.dif_settings { i32 5500000, i32 900, i32 -136711932 }, %struct.dif_settings { i32 5500000, i32 904, i32 -252839932 }, %struct.dif_settings { i32 5500000, i32 908, i32 52956441 }, %struct.dif_settings { i32 5500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5600000, i32 840, i32 65539 }, %struct.dif_settings { i32 5600000, i32 844, i32 262138 }, %struct.dif_settings { i32 5600000, i32 848, i32 -1835063 }, %struct.dif_settings { i32 5600000, i32 852, i32 -3604478 }, %struct.dif_settings { i32 5600000, i32 856, i32 7667951 }, %struct.dif_settings { i32 5600000, i32 860, i32 17694846 }, %struct.dif_settings { i32 5600000, i32 864, i32 -12714545 }, %struct.dif_settings { i32 5600000, i32 868, i32 -48824867 }, %struct.dif_settings { i32 5600000, i32 872, i32 4457317 }, %struct.dif_settings { i32 5600000, i32 876, i32 94045512 }, %struct.dif_settings { i32 5600000, i32 880, i32 31718544 }, %struct.dif_settings { i32 5600000, i32 884, i32 -136317295 }, %struct.dif_settings { i32 5600000, i32 888, i32 -99679923 }, %struct.dif_settings { i32 5600000, i32 892, i32 151129379 }, %struct.dif_settings { i32 5600000, i32 896, i32 185205528 }, %struct.dif_settings { i32 5600000, i32 900, i32 -120065702 }, %struct.dif_settings { i32 5600000, i32 904, i32 -257558663 }, %struct.dif_settings { i32 5600000, i32 908, i32 45944054 }, %struct.dif_settings { i32 5600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5700000, i32 840, i32 65539 }, %struct.dif_settings { i32 5700000, i32 844, i32 393217 }, %struct.dif_settings { i32 5700000, i32 848, i32 -1245239 }, %struct.dif_settings { i32 5700000, i32 852, i32 -4915244 }, %struct.dif_settings { i32 5700000, i32 856, i32 4194517 }, %struct.dif_settings { i32 5700000, i32 860, i32 20316400 }, %struct.dif_settings { i32 5700000, i32 864, i32 -2884039 }, %struct.dif_settings { i32 5700000, i32 868, i32 -50004687 }, %struct.dif_settings { i32 5700000, i32 872, i32 -13237641 }, %struct.dif_settings { i32 5700000, i32 876, i32 89523695 }, %struct.dif_settings { i32 5700000, i32 880, i32 54459902 }, %struct.dif_settings { i32 5700000, i32 884, i32 -123341246 }, %struct.dif_settings { i32 5700000, i32 888, i32 -120848458 }, %struct.dif_settings { i32 5700000, i32 892, i32 132189435 }, %struct.dif_settings { i32 5700000, i32 896, i32 198509654 }, %struct.dif_settings { i32 5700000, i32 900, i32 -102764098 }, %struct.dif_settings { i32 5700000, i32 904, i32 -261622030 }, %struct.dif_settings { i32 5700000, i32 908, i32 38931666 }, %struct.dif_settings { i32 5700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5800000, i32 840, i32 3 }, %struct.dif_settings { i32 5800000, i32 844, i32 524297 }, %struct.dif_settings { i32 5800000, i32 848, i32 -458798 }, %struct.dif_settings { i32 5800000, i32 852, i32 -5570644 }, %struct.dif_settings { i32 5800000, i32 856, i32 131235 }, %struct.dif_settings { i32 5800000, i32 860, i32 20709706 }, %struct.dif_settings { i32 5800000, i32 864, i32 7208649 }, %struct.dif_settings { i32 5800000, i32 868, i32 -47448905 }, %struct.dif_settings { i32 5800000, i32 872, i32 -30080667 }, %struct.dif_settings { i32 5800000, i32 876, i32 80414289 }, %struct.dif_settings { i32 5800000, i32 880, i32 74973054 }, %struct.dif_settings { i32 5800000, i32 884, i32 -106564043 }, %struct.dif_settings { i32 5800000, i32 888, i32 -139330016 }, %struct.dif_settings { i32 5800000, i32 892, i32 111086760 }, %struct.dif_settings { i32 5800000, i32 896, i32 209782155 }, %struct.dif_settings { i32 5800000, i32 900, i32 -84872655 }, %struct.dif_settings { i32 5800000, i32 904, i32 -265030035 }, %struct.dif_settings { i32 5800000, i32 908, i32 31853742 }, %struct.dif_settings { i32 5800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 5900000, i32 840, i32 2 }, %struct.dif_settings { i32 5900000, i32 844, i32 589838 }, %struct.dif_settings { i32 5900000, i32 848, i32 393185 }, %struct.dif_settings { i32 5900000, i32 852, i32 -5439600 }, %struct.dif_settings { i32 5900000, i32 856, i32 -3866529 }, %struct.dif_settings { i32 5900000, i32 860, i32 18940292 }, %struct.dif_settings { i32 5900000, i32 864, i32 16580466 }, %struct.dif_settings { i32 5900000, i32 868, i32 -41223049 }, %struct.dif_settings { i32 5900000, i32 872, i32 -45023169 }, %struct.dif_settings { i32 5900000, i32 876, i32 67241577 }, %struct.dif_settings { i32 5900000, i32 880, i32 92471555 }, %struct.dif_settings { i32 5900000, i32 884, i32 -86509973 }, %struct.dif_settings { i32 5900000, i32 888, i32 -154600301 }, %struct.dif_settings { i32 5900000, i32 892, i32 88280107 }, %struct.dif_settings { i32 5900000, i32 896, i32 218957493 }, %struct.dif_settings { i32 5900000, i32 900, i32 -66522446 }, %struct.dif_settings { i32 5900000, i32 904, i32 -267717140 }, %struct.dif_settings { i32 5900000, i32 908, i32 24841353 }, %struct.dif_settings { i32 5900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6000000, i32 840, i32 1 }, %struct.dif_settings { i32 6000000, i32 844, i32 458770 }, %struct.dif_settings { i32 6000000, i32 848, i32 1245173 }, %struct.dif_settings { i32 6000000, i32 852, i32 -4522110 }, %struct.dif_settings { i32 6000000, i32 856, i32 -7471089 }, %struct.dif_settings { i32 6000000, i32 860, i32 15204760 }, %struct.dif_settings { i32 6000000, i32 864, i32 24444968 }, %struct.dif_settings { i32 6000000, i32 868, i32 -31916939 }, %struct.dif_settings { i32 6000000, i32 872, i32 -57016555 }, %struct.dif_settings { i32 6000000, i32 876, i32 50660918 }, %struct.dif_settings { i32 6000000, i32 880, i32 106300031 }, %struct.dif_settings { i32 6000000, i32 884, i32 -63768862 }, %struct.dif_settings { i32 6000000, i32 888, i32 -166397161 }, %struct.dif_settings { i32 6000000, i32 892, i32 64097159 }, %struct.dif_settings { i32 6000000, i32 896, i32 225904594 }, %struct.dif_settings { i32 6000000, i32 900, i32 -47779007 }, %struct.dif_settings { i32 6000000, i32 904, i32 -269814417 }, %struct.dif_settings { i32 6000000, i32 908, i32 17763428 }, %struct.dif_settings { i32 6000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6100000, i32 840, i32 -65536 }, %struct.dif_settings { i32 6100000, i32 844, i32 327698 }, %struct.dif_settings { i32 6100000, i32 848, i32 1835019 }, %struct.dif_settings { i32 6100000, i32 852, i32 -3014780 }, %struct.dif_settings { i32 6100000, i32 856, i32 -10027074 }, %struct.dif_settings { i32 6100000, i32 860, i32 9830788 }, %struct.dif_settings { i32 6100000, i32 864, i32 30212314 }, %struct.dif_settings { i32 6100000, i32 868, i32 -20120398 }, %struct.dif_settings { i32 6100000, i32 872, i32 -65536519 }, %struct.dif_settings { i32 6100000, i32 876, i32 31458748 }, %struct.dif_settings { i32 6100000, i32 880, i32 115803108 }, %struct.dif_settings { i32 6100000, i32 884, i32 -39061608 }, %struct.dif_settings { i32 6100000, i32 888, i32 -174458445 }, %struct.dif_settings { i32 6100000, i32 892, i32 38865597 }, %struct.dif_settings { i32 6100000, i32 896, i32 230623455 }, %struct.dif_settings { i32 6100000, i32 900, i32 -28773412 }, %struct.dif_settings { i32 6100000, i32 904, i32 -271190794 }, %struct.dif_settings { i32 6100000, i32 908, i32 10619966 }, %struct.dif_settings { i32 6100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6200000, i32 840, i32 -2 }, %struct.dif_settings { i32 6200000, i32 844, i32 131087 }, %struct.dif_settings { i32 6200000, i32 848, i32 2162719 }, %struct.dif_settings { i32 6200000, i32 852, i32 -983145 }, %struct.dif_settings { i32 6200000, i32 856, i32 -11468940 }, %struct.dif_settings { i32 6200000, i32 860, i32 3408202 }, %struct.dif_settings { i32 6200000, i32 864, i32 33161593 }, %struct.dif_settings { i32 6200000, i32 868, i32 -6816470 }, %struct.dif_settings { i32 6200000, i32 872, i32 -69993222 }, %struct.dif_settings { i32 6200000, i32 876, i32 10683646 }, %struct.dif_settings { i32 6200000, i32 880, i32 120653093 }, %struct.dif_settings { i32 6200000, i32 884, i32 -13109114 }, %struct.dif_settings { i32 6200000, i32 888, i32 -178456466 }, %struct.dif_settings { i32 6200000, i32 892, i32 13044176 }, %struct.dif_settings { i32 6200000, i32 896, i32 232917467 }, %struct.dif_settings { i32 6200000, i32 900, i32 -9571196 }, %struct.dif_settings { i32 6200000, i32 904, i32 -271846271 }, %struct.dif_settings { i32 6200000, i32 908, i32 3542040 }, %struct.dif_settings { i32 6200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6300000, i32 840, i32 -3 }, %struct.dif_settings { i32 6300000, i32 844, i32 -131062 }, %struct.dif_settings { i32 6300000, i32 848, i32 2162735 }, %struct.dif_settings { i32 6300000, i32 852, i32 1114040 }, %struct.dif_settings { i32 6300000, i32 856, i32 -11468997 }, %struct.dif_settings { i32 6300000, i32 860, i32 -3407632 }, %struct.dif_settings { i32 6300000, i32 864, i32 33161722 }, %struct.dif_settings { i32 6300000, i32 868, i32 6946260 }, %struct.dif_settings { i32 6300000, i32 872, i32 -69993434 }, %struct.dif_settings { i32 6300000, i32 876, i32 -10681337 }, %struct.dif_settings { i32 6300000, i32 880, i32 120653368 }, %struct.dif_settings { i32 6300000, i32 884, i32 13236648 }, %struct.dif_settings { i32 6300000, i32 888, i32 -178456754 }, %struct.dif_settings { i32 6300000, i32 892, i32 -13039421 }, %struct.dif_settings { i32 6300000, i32 896, i32 232917699 }, %struct.dif_settings { i32 6300000, i32 900, i32 9696567 }, %struct.dif_settings { i32 6300000, i32 904, i32 -271846384 }, %struct.dif_settings { i32 6300000, i32 908, i32 -3535886 }, %struct.dif_settings { i32 6300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6400000, i32 840, i32 -3 }, %struct.dif_settings { i32 6400000, i32 844, i32 -327677 }, %struct.dif_settings { i32 6400000, i32 848, i32 1835063 }, %struct.dif_settings { i32 6400000, i32 852, i32 3145698 }, %struct.dif_settings { i32 6400000, i32 856, i32 -10027241 }, %struct.dif_settings { i32 6400000, i32 860, i32 -9830274 }, %struct.dif_settings { i32 6400000, i32 864, i32 30212689 }, %struct.dif_settings { i32 6400000, i32 868, i32 20250277 }, %struct.dif_settings { i32 6400000, i32 872, i32 -65537141 }, %struct.dif_settings { i32 6400000, i32 876, i32 -31456544 }, %struct.dif_settings { i32 6400000, i32 880, i32 115803923 }, %struct.dif_settings { i32 6400000, i32 884, i32 39189237 }, %struct.dif_settings { i32 6400000, i32 888, i32 -174459304 }, %struct.dif_settings { i32 6400000, i32 892, i32 -38860903 }, %struct.dif_settings { i32 6400000, i32 896, i32 230624150 }, %struct.dif_settings { i32 6400000, i32 900, i32 28898805 }, %struct.dif_settings { i32 6400000, i32 904, i32 -271191133 }, %struct.dif_settings { i32 6400000, i32 908, i32 -10613814 }, %struct.dif_settings { i32 6400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6500000, i32 840, i32 65533 }, %struct.dif_settings { i32 6500000, i32 844, i32 -393221 }, %struct.dif_settings { i32 6500000, i32 848, i32 1179703 }, %struct.dif_settings { i32 6500000, i32 852, i32 4587536 }, %struct.dif_settings { i32 6500000, i32 856, i32 -7405809 }, %struct.dif_settings { i32 6500000, i32 860, i32 -15204352 }, %struct.dif_settings { i32 6500000, i32 864, i32 24445558 }, %struct.dif_settings { i32 6500000, i32 868, i32 32046989 }, %struct.dif_settings { i32 6500000, i32 872, i32 -57017551 }, %struct.dif_settings { i32 6500000, i32 876, i32 -50658920 }, %struct.dif_settings { i32 6500000, i32 880, i32 106301357 }, %struct.dif_settings { i32 6500000, i32 884, i32 63896676 }, %struct.dif_settings { i32 6500000, i32 888, i32 -166398574 }, %struct.dif_settings { i32 6500000, i32 892, i32 -64092586 }, %struct.dif_settings { i32 6500000, i32 896, i32 225905746 }, %struct.dif_settings { i32 6500000, i32 900, i32 47904445 }, %struct.dif_settings { i32 6500000, i32 904, i32 -269814981 }, %struct.dif_settings { i32 6500000, i32 908, i32 -17757277 }, %struct.dif_settings { i32 6500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6600000, i32 840, i32 65534 }, %struct.dif_settings { i32 6600000, i32 844, i32 -524299 }, %struct.dif_settings { i32 6600000, i32 848, i32 327727 }, %struct.dif_settings { i32 6600000, i32 852, i32 5505084 }, %struct.dif_settings { i32 6600000, i32 856, i32 -3801310 }, %struct.dif_settings { i32 6600000, i32 860, i32 -18874494 }, %struct.dif_settings { i32 6600000, i32 864, i32 16515687 }, %struct.dif_settings { i32 6600000, i32 868, i32 41287806 }, %struct.dif_settings { i32 6600000, i32 872, i32 -44958948 }, %struct.dif_settings { i32 6600000, i32 876, i32 -67239874 }, %struct.dif_settings { i32 6600000, i32 880, i32 92473346 }, %struct.dif_settings { i32 6600000, i32 884, i32 86638060 }, %struct.dif_settings { i32 6600000, i32 888, i32 -154602242 }, %struct.dif_settings { i32 6600000, i32 892, i32 -88275713 }, %struct.dif_settings { i32 6600000, i32 896, i32 218959094 }, %struct.dif_settings { i32 6600000, i32 900, i32 66647951 }, %struct.dif_settings { i32 6600000, i32 904, i32 -267717929 }, %struct.dif_settings { i32 6600000, i32 908, i32 -24835205 }, %struct.dif_settings { i32 6600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6700000, i32 840, i32 65535 }, %struct.dif_settings { i32 6700000, i32 844, i32 -458768 }, %struct.dif_settings { i32 6700000, i32 848, i32 -524256 }, %struct.dif_settings { i32 6700000, i32 852, i32 5636192 }, %struct.dif_settings { i32 6700000, i32 856, i32 196430 }, %struct.dif_settings { i32 6700000, i32 860, i32 -20644080 }, %struct.dif_settings { i32 6700000, i32 864, i32 7143973 }, %struct.dif_settings { i32 6700000, i32 868, i32 47513958 }, %struct.dif_settings { i32 6700000, i32 872, i32 -30016690 }, %struct.dif_settings { i32 6700000, i32 876, i32 -80347423 }, %struct.dif_settings { i32 6700000, i32 880, i32 74909710 }, %struct.dif_settings { i32 6700000, i32 884, i32 106692482 }, %struct.dif_settings { i32 6700000, i32 888, i32 -139332448 }, %struct.dif_settings { i32 6700000, i32 892, i32 -111082601 }, %struct.dif_settings { i32 6700000, i32 896, i32 209784192 }, %struct.dif_settings { i32 6700000, i32 900, i32 84998249 }, %struct.dif_settings { i32 6700000, i32 904, i32 -265031048 }, %struct.dif_settings { i32 6700000, i32 908, i32 -31847598 }, %struct.dif_settings { i32 6700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6800000, i32 840, i32 65536 }, %struct.dif_settings { i32 6800000, i32 844, i32 -327698 }, %struct.dif_settings { i32 6800000, i32 848, i32 -1310708 }, %struct.dif_settings { i32 6800000, i32 852, i32 4980856 }, %struct.dif_settings { i32 6800000, i32 856, i32 4259726 }, %struct.dif_settings { i32 6800000, i32 860, i32 -20250954 }, %struct.dif_settings { i32 6800000, i32 864, i32 -2948682 }, %struct.dif_settings { i32 6800000, i32 868, i32 50070069 }, %struct.dif_settings { i32 6800000, i32 872, i32 -13173819 }, %struct.dif_settings { i32 6800000, i32 876, i32 -89457264 }, %struct.dif_settings { i32 6800000, i32 880, i32 54396882 }, %struct.dif_settings { i32 6800000, i32 884, i32 123404571 }, %struct.dif_settings { i32 6800000, i32 888, i32 -120851334 }, %struct.dif_settings { i32 6800000, i32 892, i32 -132185564 }, %struct.dif_settings { i32 6800000, i32 896, i32 198512111 }, %struct.dif_settings { i32 6800000, i32 900, i32 102889803 }, %struct.dif_settings { i32 6800000, i32 904, i32 -261623266 }, %struct.dif_settings { i32 6800000, i32 908, i32 -38925527 }, %struct.dif_settings { i32 6800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 6900000, i32 840, i32 65537 }, %struct.dif_settings { i32 6900000, i32 844, i32 -131089 }, %struct.dif_settings { i32 6900000, i32 848, i32 -1835018 }, %struct.dif_settings { i32 6900000, i32 852, i32 3604607 }, %struct.dif_settings { i32 6900000, i32 856, i32 7733212 }, %struct.dif_settings { i32 6900000, i32 860, i32 -17629572 }, %struct.dif_settings { i32 6900000, i32 864, i32 -12779230 }, %struct.dif_settings { i32 6900000, i32 868, i32 48890589 }, %struct.dif_settings { i32 6900000, i32 872, i32 4521081 }, %struct.dif_settings { i32 6900000, i32 876, i32 -93979555 }, %struct.dif_settings { i32 6900000, i32 880, i32 31655758 }, %struct.dif_settings { i32 6900000, i32 884, i32 136381101 }, %struct.dif_settings { i32 6900000, i32 888, i32 -99617652 }, %struct.dif_settings { i32 6900000, i32 892, i32 -151125847 }, %struct.dif_settings { i32 6900000, i32 896, i32 185208387 }, %struct.dif_settings { i32 6900000, i32 900, i32 120191539 }, %struct.dif_settings { i32 6900000, i32 904, i32 -257560119 }, %struct.dif_settings { i32 6900000, i32 908, i32 -45937920 }, %struct.dif_settings { i32 6900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7000000, i32 840, i32 65538 }, %struct.dif_settings { i32 7000000, i32 844, i32 131059 }, %struct.dif_settings { i32 7000000, i32 848, i32 -2162718 }, %struct.dif_settings { i32 7000000, i32 852, i32 1769590 }, %struct.dif_settings { i32 7000000, i32 856, i32 10223661 }, %struct.dif_settings { i32 7000000, i32 860, i32 -13238680 }, %struct.dif_settings { i32 7000000, i32 864, i32 -21364618 }, %struct.dif_settings { i32 7000000, i32 868, i32 43975506 }, %struct.dif_settings { i32 7000000, i32 872, i32 21888352 }, %struct.dif_settings { i32 7000000, i32 876, i32 -93717677 }, %struct.dif_settings { i32 7000000, i32 880, i32 7603848 }, %struct.dif_settings { i32 7000000, i32 884, i32 145163309 }, %struct.dif_settings { i32 7000000, i32 888, i32 -76155690 }, %struct.dif_settings { i32 7000000, i32 892, i32 -167706835 }, %struct.dif_settings { i32 7000000, i32 896, i32 170004090 }, %struct.dif_settings { i32 7000000, i32 900, i32 136837922 }, %struct.dif_settings { i32 7000000, i32 904, i32 -252841606 }, %struct.dif_settings { i32 7000000, i32 908, i32 -52950314 }, %struct.dif_settings { i32 7000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7100000, i32 840, i32 3 }, %struct.dif_settings { i32 7100000, i32 844, i32 327673 }, %struct.dif_settings { i32 7100000, i32 848, i32 -2031662 }, %struct.dif_settings { i32 7100000, i32 852, i32 -327586 }, %struct.dif_settings { i32 7100000, i32 856, i32 11534458 }, %struct.dif_settings { i32 7100000, i32 860, i32 -7340420 }, %struct.dif_settings { i32 7100000, i32 864, i32 -28049471 }, %struct.dif_settings { i32 7100000, i32 868, i32 35718028 }, %struct.dif_settings { i32 7100000, i32 872, i32 37879406 }, %struct.dif_settings { i32 7100000, i32 876, i32 -88671616 }, %struct.dif_settings { i32 7100000, i32 880, i32 -16710265 }, %struct.dif_settings { i32 7100000, i32 884, i32 149489040 }, %struct.dif_settings { i32 7100000, i32 888, i32 -50989738 }, %struct.dif_settings { i32 7100000, i32 892, i32 -181666381 }, %struct.dif_settings { i32 7100000, i32 896, i32 153161365 }, %struct.dif_settings { i32 7100000, i32 900, i32 152697877 }, %struct.dif_settings { i32 7100000, i32 904, i32 -247467729 }, %struct.dif_settings { i32 7100000, i32 908, i32 -59897173 }, %struct.dif_settings { i32 7100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7200000, i32 840, i32 3 }, %struct.dif_settings { i32 7200000, i32 844, i32 458752 }, %struct.dif_settings { i32 7200000, i32 848, i32 -1638455 }, %struct.dif_settings { i32 7200000, i32 852, i32 -2424775 }, %struct.dif_settings { i32 7200000, i32 856, i32 11468984 }, %struct.dif_settings { i32 7200000, i32 860, i32 -721226 }, %struct.dif_settings { i32 7200000, i32 864, i32 -32243952 }, %struct.dif_settings { i32 7200000, i32 868, i32 24707976 }, %struct.dif_settings { i32 7200000, i32 872, i32 51511186 }, %struct.dif_settings { i32 7200000, i32 876, i32 -79103507 }, %struct.dif_settings { i32 7200000, i32 880, i32 -40369069 }, %struct.dif_settings { i32 7200000, i32 884, i32 149096141 }, %struct.dif_settings { i32 7200000, i32 888, i32 -24578550 }, %struct.dif_settings { i32 7200000, i32 892, i32 -192742336 }, %struct.dif_settings { i32 7200000, i32 896, i32 134745747 }, %struct.dif_settings { i32 7200000, i32 900, i32 167640332 }, %struct.dif_settings { i32 7200000, i32 904, i32 -241504022 }, %struct.dif_settings { i32 7200000, i32 908, i32 -66778495 }, %struct.dif_settings { i32 7200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7300000, i32 840, i32 2 }, %struct.dif_settings { i32 7300000, i32 844, i32 524296 }, %struct.dif_settings { i32 7300000, i32 848, i32 -983095 }, %struct.dif_settings { i32 7300000, i32 852, i32 -4128755 }, %struct.dif_settings { i32 7300000, i32 856, i32 9961698 }, %struct.dif_settings { i32 7300000, i32 860, i32 6029072 }, %struct.dif_settings { i32 7300000, i32 864, i32 -33489292 }, %struct.dif_settings { i32 7300000, i32 868, i32 11862853 }, %struct.dif_settings { i32 7300000, i32 872, i32 61866172 }, %struct.dif_settings { i32 7300000, i32 876, i32 -65472095 }, %struct.dif_settings { i32 7300000, i32 880, i32 -62389511 }, %struct.dif_settings { i32 7300000, i32 884, i32 144181212 }, %struct.dif_settings { i32 7300000, i32 888, i32 2291440 }, %struct.dif_settings { i32 7300000, i32 892, i32 -200803622 }, %struct.dif_settings { i32 7300000, i32 896, i32 114953844 }, %struct.dif_settings { i32 7300000, i32 900, i32 181665286 }, %struct.dif_settings { i32 7300000, i32 904, i32 -234950485 }, %struct.dif_settings { i32 7300000, i32 908, i32 -73659819 }, %struct.dif_settings { i32 7300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7400000, i32 840, i32 1 }, %struct.dif_settings { i32 7400000, i32 844, i32 524302 }, %struct.dif_settings { i32 7400000, i32 848, i32 -131120 }, %struct.dif_settings { i32 7400000, i32 852, i32 -5242913 }, %struct.dif_settings { i32 7400000, i32 856, i32 7209202 }, %struct.dif_settings { i32 7400000, i32 860, i32 12124034 }, %struct.dif_settings { i32 7400000, i32 864, i32 -31719944 }, %struct.dif_settings { i32 7400000, i32 868, i32 -1899832 }, %struct.dif_settings { i32 7400000, i32 872, i32 68354524 }, %struct.dif_settings { i32 7400000, i32 876, i32 -48563810 }, %struct.dif_settings { i32 7400000, i32 880, i32 -81919613 }, %struct.dif_settings { i32 7400000, i32 884, i32 134809781 }, %struct.dif_settings { i32 7400000, i32 888, i32 29161473 }, %struct.dif_settings { i32 7400000, i32 892, i32 -205653627 }, %struct.dif_settings { i32 7400000, i32 896, i32 93982264 }, %struct.dif_settings { i32 7400000, i32 900, i32 194641667 }, %struct.dif_settings { i32 7400000, i32 904, i32 -227741583 }, %struct.dif_settings { i32 7400000, i32 908, i32 -80541142 }, %struct.dif_settings { i32 7400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7500000, i32 840, i32 -65536 }, %struct.dif_settings { i32 7500000, i32 844, i32 458769 }, %struct.dif_settings { i32 7500000, i32 848, i32 720863 }, %struct.dif_settings { i32 7500000, i32 852, i32 -5636171 }, %struct.dif_settings { i32 7500000, i32 856, i32 3604710 }, %struct.dif_settings { i32 7500000, i32 860, i32 16842752 }, %struct.dif_settings { i32 7500000, i32 864, i32 -27066968 }, %struct.dif_settings { i32 7500000, i32 868, i32 -15465959 }, %struct.dif_settings { i32 7500000, i32 872, i32 70583009 }, %struct.dif_settings { i32 7500000, i32 876, i32 -29165082 }, %struct.dif_settings { i32 7500000, i32 880, i32 -98107392 }, %struct.dif_settings { i32 7500000, i32 884, i32 121243987 }, %struct.dif_settings { i32 7500000, i32 888, i32 55376185 }, %struct.dif_settings { i32 7500000, i32 892, i32 -207292347 }, %struct.dif_settings { i32 7500000, i32 896, i32 72093153 }, %struct.dif_settings { i32 7500000, i32 900, i32 206503936 }, %struct.dif_settings { i32 7500000, i32 904, i32 -220008388 }, %struct.dif_settings { i32 7500000, i32 908, i32 -87291394 }, %struct.dif_settings { i32 7500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7600000, i32 840, i32 -1 }, %struct.dif_settings { i32 7600000, i32 844, i32 262162 }, %struct.dif_settings { i32 7600000, i32 848, i32 1507315 }, %struct.dif_settings { i32 7600000, i32 852, i32 -5242987 }, %struct.dif_settings { i32 7600000, i32 856, i32 -458560 }, %struct.dif_settings { i32 7600000, i32 860, i32 19923070 }, %struct.dif_settings { i32 7600000, i32 864, i32 -19989111 }, %struct.dif_settings { i32 7600000, i32 868, i32 -27918010 }, %struct.dif_settings { i32 7600000, i32 872, i32 68355004 }, %struct.dif_settings { i32 7600000, i32 876, i32 -8258954 }, %struct.dif_settings { i32 7600000, i32 880, i32 -110297475 }, %struct.dif_settings { i32 7600000, i32 884, i32 103942577 }, %struct.dif_settings { i32 7600000, i32 888, i32 80345747 }, %struct.dif_settings { i32 7600000, i32 892, i32 -205654242 }, %struct.dif_settings { i32 7600000, i32 896, i32 49483118 }, %struct.dif_settings { i32 7600000, i32 900, i32 217186557 }, %struct.dif_settings { i32 7600000, i32 904, i32 -211685362 }, %struct.dif_settings { i32 7600000, i32 908, i32 -94041647 }, %struct.dif_settings { i32 7600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7700000, i32 840, i32 -2 }, %struct.dif_settings { i32 7700000, i32 844, i32 65552 }, %struct.dif_settings { i32 7700000, i32 848, i32 1966088 }, %struct.dif_settings { i32 7700000, i32 852, i32 -4063356 }, %struct.dif_settings { i32 7700000, i32 856, i32 -4456316 }, %struct.dif_settings { i32 7700000, i32 860, i32 20840688 }, %struct.dif_settings { i32 7700000, i32 864, i32 -11076193 }, %struct.dif_settings { i32 7700000, i32 868, i32 -38272932 }, %struct.dif_settings { i32 7700000, i32 872, i32 61867104 }, %struct.dif_settings { i32 7700000, i32 876, i32 13105989 }, %struct.dif_settings { i32 7700000, i32 880, i32 -118162169 }, %struct.dif_settings { i32 7700000, i32 884, i32 83495374 }, %struct.dif_settings { i32 7700000, i32 888, i32 103480327 }, %struct.dif_settings { i32 7700000, i32 892, i32 -200804844 }, %struct.dif_settings { i32 7700000, i32 896, i32 26348768 }, %struct.dif_settings { i32 7700000, i32 900, i32 226689530 }, %struct.dif_settings { i32 7700000, i32 904, i32 -202838043 }, %struct.dif_settings { i32 7700000, i32 908, i32 -100660828 }, %struct.dif_settings { i32 7700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7800000, i32 840, i32 65533 }, %struct.dif_settings { i32 7800000, i32 844, i32 -196597 }, %struct.dif_settings { i32 7800000, i32 848, i32 2228253 }, %struct.dif_settings { i32 7800000, i32 852, i32 -2359422 }, %struct.dif_settings { i32 7800000, i32 856, i32 -7929799 }, %struct.dif_settings { i32 7800000, i32 860, i32 19530058 }, %struct.dif_settings { i32 7800000, i32 864, i32 -1180185 }, %struct.dif_settings { i32 7800000, i32 868, i32 -45613205 }, %struct.dif_settings { i32 7800000, i32 872, i32 51446982 }, %struct.dif_settings { i32 7800000, i32 876, i32 33750092 }, %struct.dif_settings { i32 7800000, i32 880, i32 -121177171 }, %struct.dif_settings { i32 7800000, i32 884, i32 60361127 }, %struct.dif_settings { i32 7800000, i32 888, i32 124255630 }, %struct.dif_settings { i32 7800000, i32 892, i32 -192744149 }, %struct.dif_settings { i32 7800000, i32 896, i32 2952249 }, %struct.dif_settings { i32 7800000, i32 900, i32 234881780 }, %struct.dif_settings { i32 7800000, i32 904, i32 -193466430 }, %struct.dif_settings { i32 7800000, i32 908, i32 -107280009 }, %struct.dif_settings { i32 7800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 7900000, i32 840, i32 65533 }, %struct.dif_settings { i32 7900000, i32 844, i32 -393212 }, %struct.dif_settings { i32 7900000, i32 848, i32 2097197 }, %struct.dif_settings { i32 7900000, i32 852, i32 -262255 }, %struct.dif_settings { i32 7900000, i32 856, i32 -10354712 }, %struct.dif_settings { i32 7900000, i32 860, i32 16187780 }, %struct.dif_settings { i32 7900000, i32 864, i32 8846940 }, %struct.dif_settings { i32 7900000, i32 868, i32 -49545595 }, %struct.dif_settings { i32 7900000, i32 872, i32 37815525 }, %struct.dif_settings { i32 7900000, i32 876, i32 52690301 }, %struct.dif_settings { i32 7900000, i32 880, i32 -119342471 }, %struct.dif_settings { i32 7900000, i32 884, i32 35457343 }, %struct.dif_settings { i32 7900000, i32 888, i32 142212898 }, %struct.dif_settings { i32 7900000, i32 892, i32 -181668763 }, %struct.dif_settings { i32 7900000, i32 896, i32 -20509831 }, %struct.dif_settings { i32 7900000, i32 900, i32 241697771 }, %struct.dif_settings { i32 7900000, i32 904, i32 -183636059 }, %struct.dif_settings { i32 7900000, i32 908, i32 -113833654 }, %struct.dif_settings { i32 7900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8000000, i32 840, i32 65534 }, %struct.dif_settings { i32 8000000, i32 844, i32 -458755 }, %struct.dif_settings { i32 8000000, i32 848, i32 1638454 }, %struct.dif_settings { i32 8000000, i32 852, i32 1834927 }, %struct.dif_settings { i32 8000000, i32 856, i32 -11534439 }, %struct.dif_settings { i32 8000000, i32 860, i32 11141528 }, %struct.dif_settings { i32 8000000, i32 864, i32 18022131 }, %struct.dif_settings { i32 8000000, i32 868, i32 -49676871 }, %struct.dif_settings { i32 8000000, i32 872, i32 21824702 }, %struct.dif_settings { i32 8000000, i32 876, i32 68943564 }, %struct.dif_settings { i32 8000000, i32 880, i32 -112723592 }, %struct.dif_settings { i32 8000000, i32 884, i32 9439383 }, %struct.dif_settings { i32 8000000, i32 888, i32 156893369 }, %struct.dif_settings { i32 8000000, i32 892, i32 -167709755 }, %struct.dif_settings { i32 8000000, i32 896, i32 -43709789 }, %struct.dif_settings { i32 8000000, i32 900, i32 247203038 }, %struct.dif_settings { i32 8000000, i32 904, i32 -173346930 }, %struct.dif_settings { i32 8000000, i32 908, i32 -120256228 }, %struct.dif_settings { i32 8000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8100000, i32 840, i32 65535 }, %struct.dif_settings { i32 8100000, i32 844, i32 -524298 }, %struct.dif_settings { i32 8100000, i32 848, i32 917560 }, %struct.dif_settings { i32 8100000, i32 852, i32 3669975 }, %struct.dif_settings { i32 8100000, i32 856, i32 -11337898 }, %struct.dif_settings { i32 8100000, i32 860, i32 4915588 }, %struct.dif_settings { i32 8100000, i32 864, i32 25624481 }, %struct.dif_settings { i32 8100000, i32 868, i32 -46072554 }, %struct.dif_settings { i32 8100000, i32 872, i32 4457554 }, %struct.dif_settings { i32 8100000, i32 876, i32 81657897 }, %struct.dif_settings { i32 8100000, i32 880, i32 -101517134 }, %struct.dif_settings { i32 8100000, i32 884, i32 -16906315 }, %struct.dif_settings { i32 8100000, i32 888, i32 168100429 }, %struct.dif_settings { i32 8100000, i32 892, i32 -151063731 }, %struct.dif_settings { i32 8100000, i32 896, i32 -66451016 }, %struct.dif_settings { i32 8100000, i32 900, i32 251266509 }, %struct.dif_settings { i32 8100000, i32 904, i32 -162599043 }, %struct.dif_settings { i32 8100000, i32 908, i32 -126678803 }, %struct.dif_settings { i32 8100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8200000, i32 840, i32 65536 }, %struct.dif_settings { i32 8200000, i32 844, i32 -458768 }, %struct.dif_settings { i32 8200000, i32 848, i32 49 }, %struct.dif_settings { i32 8200000, i32 852, i32 4980741 }, %struct.dif_settings { i32 8200000, i32 856, i32 -9765081 }, %struct.dif_settings { i32 8200000, i32 860, i32 -1834678 }, %struct.dif_settings { i32 8200000, i32 864, i32 30867543 }, %struct.dif_settings { i32 8200000, i32 868, i32 -38994778 }, %struct.dif_settings { i32 8200000, i32 872, i32 -13237337 }, %struct.dif_settings { i32 8200000, i32 876, i32 90243460 }, %struct.dif_settings { i32 8200000, i32 880, i32 -86247378 }, %struct.dif_settings { i32 8200000, i32 884, i32 -42727777 }, %struct.dif_settings { i32 8200000, i32 888, i32 175440854 }, %struct.dif_settings { i32 8200000, i32 892, i32 -132123905 }, %struct.dif_settings { i32 8200000, i32 896, i32 -88602439 }, %struct.dif_settings { i32 8200000, i32 900, i32 253953717 }, %struct.dif_settings { i32 8200000, i32 904, i32 -151392398 }, %struct.dif_settings { i32 8200000, i32 908, i32 -132970305 }, %struct.dif_settings { i32 8200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8300000, i32 840, i32 65537 }, %struct.dif_settings { i32 8300000, i32 844, i32 -262162 }, %struct.dif_settings { i32 8300000, i32 848, i32 -851934 }, %struct.dif_settings { i32 8300000, i32 852, i32 5636146 }, %struct.dif_settings { i32 8300000, i32 856, i32 -6947056 }, %struct.dif_settings { i32 8300000, i32 860, i32 -8388368 }, %struct.dif_settings { i32 8300000, i32 864, i32 33423622 }, %struct.dif_settings { i32 8300000, i32 868, i32 -28902287 }, %struct.dif_settings { i32 8300000, i32 872, i32 -30080313 }, %struct.dif_settings { i32 8300000, i32 876, i32 94241486 }, %struct.dif_settings { i32 8300000, i32 880, i32 -67504142 }, %struct.dif_settings { i32 8300000, i32 884, i32 -67173029 }, %struct.dif_settings { i32 8300000, i32 888, i32 178849100 }, %struct.dif_settings { i32 8300000, i32 892, i32 -111021349 }, %struct.dif_settings { i32 8300000, i32 896, i32 -109770838 }, %struct.dif_settings { i32 8300000, i32 900, i32 255133591 }, %struct.dif_settings { i32 8300000, i32 904, i32 -139858067 }, %struct.dif_settings { i32 8300000, i32 908, i32 -139196272 }, %struct.dif_settings { i32 8300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8400000, i32 840, i32 65538 }, %struct.dif_settings { i32 8400000, i32 844, i32 -65554 }, %struct.dif_settings { i32 8400000, i32 848, i32 -1572849 }, %struct.dif_settings { i32 8400000, i32 852, i32 5505112 }, %struct.dif_settings { i32 8400000, i32 856, i32 -3277036 }, %struct.dif_settings { i32 8400000, i32 860, i32 -14090114 }, %struct.dif_settings { i32 8400000, i32 864, i32 32899486 }, %struct.dif_settings { i32 8400000, i32 868, i32 -16647044 }, %struct.dif_settings { i32 8400000, i32 872, i32 -45022785 }, %struct.dif_settings { i32 8400000, i32 876, i32 93455350 }, %struct.dif_settings { i32 8400000, i32 880, i32 -46008322 }, %struct.dif_settings { i32 8400000, i32 884, i32 -89586701 }, %struct.dif_settings { i32 8400000, i32 888, i32 178128553 }, %struct.dif_settings { i32 8400000, i32 892, i32 -88214814 }, %struct.dif_settings { i32 8400000, i32 896, i32 -129890677 }, %struct.dif_settings { i32 8400000, i32 900, i32 254937201 }, %struct.dif_settings { i32 8400000, i32 904, i32 -127996050 }, %struct.dif_settings { i32 8400000, i32 908, i32 -145356704 }, %struct.dif_settings { i32 8400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8500000, i32 840, i32 3 }, %struct.dif_settings { i32 8500000, i32 844, i32 196594 }, %struct.dif_settings { i32 8500000, i32 848, i32 -1966087 }, %struct.dif_settings { i32 8500000, i32 852, i32 4587635 }, %struct.dif_settings { i32 8500000, i32 856, i32 786228 }, %struct.dif_settings { i32 8500000, i32 860, i32 -18284544 }, %struct.dif_settings { i32 8500000, i32 864, i32 29426197 }, %struct.dif_settings { i32 8500000, i32 868, i32 -3081019 }, %struct.dif_settings { i32 8500000, i32 872, i32 -57081699 }, %struct.dif_settings { i32 8500000, i32 876, i32 87885041 }, %struct.dif_settings { i32 8500000, i32 880, i32 -22677421 }, %struct.dif_settings { i32 8500000, i32 884, i32 -109247888 }, %struct.dif_settings { i32 8500000, i32 888, i32 173410276 }, %struct.dif_settings { i32 8500000, i32 892, i32 -64031980 }, %struct.dif_settings { i32 8500000, i32 896, i32 -148699809 }, %struct.dif_settings { i32 8500000, i32 900, i32 253233475 }, %struct.dif_settings { i32 8500000, i32 904, i32 -115740811 }, %struct.dif_settings { i32 8500000, i32 908, i32 -151386064 }, %struct.dif_settings { i32 8500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8600000, i32 840, i32 3 }, %struct.dif_settings { i32 8600000, i32 844, i32 393208 }, %struct.dif_settings { i32 8600000, i32 848, i32 -2162716 }, %struct.dif_settings { i32 8600000, i32 852, i32 3080319 }, %struct.dif_settings { i32 8600000, i32 856, i32 4783979 }, %struct.dif_settings { i32 8600000, i32 860, i32 -20447358 }, %struct.dif_settings { i32 8600000, i32 864, i32 23265887 }, %struct.dif_settings { i32 8600000, i32 868, i32 10681671 }, %struct.dif_settings { i32 8600000, i32 872, i32 -65536141 }, %struct.dif_settings { i32 8600000, i32 876, i32 77858226 }, %struct.dif_settings { i32 8600000, i32 880, i32 1571053 }, %struct.dif_settings { i32 8600000, i32 884, i32 -125501220 }, %struct.dif_settings { i32 8600000, i32 888, i32 164759801 }, %struct.dif_settings { i32 8600000, i32 892, i32 -38800528 }, %struct.dif_settings { i32 8600000, i32 896, i32 -165936087 }, %struct.dif_settings { i32 8600000, i32 900, i32 250087947 }, %struct.dif_settings { i32 8600000, i32 904, i32 -103223422 }, %struct.dif_settings { i32 8600000, i32 908, i32 -157284352 }, %struct.dif_settings { i32 8600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8700000, i32 840, i32 3 }, %struct.dif_settings { i32 8700000, i32 844, i32 524287 }, %struct.dif_settings { i32 8700000, i32 848, i32 -1966124 }, %struct.dif_settings { i32 8700000, i32 852, i32 1048698 }, %struct.dif_settings { i32 8700000, i32 856, i32 8191922 }, %struct.dif_settings { i32 8700000, i32 860, i32 -20513008 }, %struct.dif_settings { i32 8700000, i32 864, i32 15073911 }, %struct.dif_settings { i32 8700000, i32 868, i32 23657977 }, %struct.dif_settings { i32 8700000, i32 872, i32 -69992880 }, %struct.dif_settings { i32 8700000, i32 876, i32 63833649 }, %struct.dif_settings { i32 8700000, i32 880, i32 25754056 }, %struct.dif_settings { i32 8700000, i32 884, i32 -137887933 }, %struct.dif_settings { i32 8700000, i32 888, i32 152373731 }, %struct.dif_settings { i32 8700000, i32 892, i32 -12979210 }, %struct.dif_settings { i32 8700000, i32 896, i32 -181599510 }, %struct.dif_settings { i32 8700000, i32 900, i32 245566153 }, %struct.dif_settings { i32 8700000, i32 904, i32 -90443883 }, %struct.dif_settings { i32 8700000, i32 908, i32 -163182640 }, %struct.dif_settings { i32 8700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8800000, i32 840, i32 2 }, %struct.dif_settings { i32 8800000, i32 844, i32 589831 }, %struct.dif_settings { i32 8800000, i32 848, i32 -1441846 }, %struct.dif_settings { i32 8800000, i32 852, i32 -1048475 }, %struct.dif_settings { i32 8800000, i32 856, i32 10551299 }, %struct.dif_settings { i32 8800000, i32 860, i32 -18415946 }, %struct.dif_settings { i32 8800000, i32 864, i32 5440091 }, %struct.dif_settings { i32 8800000, i32 868, i32 34864848 }, %struct.dif_settings { i32 8800000, i32 872, i32 -69993146 }, %struct.dif_settings { i32 8800000, i32 876, i32 46597736 }, %struct.dif_settings { i32 8800000, i32 880, i32 48954075 }, %struct.dif_settings { i32 8800000, i32 884, i32 -146014802 }, %struct.dif_settings { i32 8800000, i32 888, i32 136514204 }, %struct.dif_settings { i32 8800000, i32 892, i32 13104291 }, %struct.dif_settings { i32 8800000, i32 896, i32 -195362394 }, %struct.dif_settings { i32 8800000, i32 900, i32 239602556 }, %struct.dif_settings { i32 8800000, i32 904, i32 -77467730 }, %struct.dif_settings { i32 8800000, i32 908, i32 -168884321 }, %struct.dif_settings { i32 8800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 8900000, i32 840, i32 -65536 }, %struct.dif_settings { i32 8900000, i32 844, i32 524301 }, %struct.dif_settings { i32 8900000, i32 848, i32 -655416 }, %struct.dif_settings { i32 8900000, i32 852, i32 -3080125 }, %struct.dif_settings { i32 8900000, i32 856, i32 11665491 }, %struct.dif_settings { i32 8900000, i32 860, i32 -14352772 }, %struct.dif_settings { i32 8900000, i32 864, i32 -4652532 }, %struct.dif_settings { i32 8900000, i32 868, i32 43384763 }, %struct.dif_settings { i32 8900000, i32 872, i32 -65536924 }, %struct.dif_settings { i32 8900000, i32 876, i32 26936916 }, %struct.dif_settings { i32 8900000, i32 880, i32 70122524 }, %struct.dif_settings { i32 8900000, i32 884, i32 -149619670 }, %struct.dif_settings { i32 8900000, i32 888, i32 117574433 }, %struct.dif_settings { i32 8900000, i32 892, i32 38925685 }, %struct.dif_settings { i32 8900000, i32 896, i32 -207159202 }, %struct.dif_settings { i32 8900000, i32 900, i32 232262692 }, %struct.dif_settings { i32 8900000, i32 904, i32 -64294963 }, %struct.dif_settings { i32 8900000, i32 908, i32 -174520466 }, %struct.dif_settings { i32 8900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9000000, i32 840, i32 -1 }, %struct.dif_settings { i32 9000000, i32 844, i32 393233 }, %struct.dif_settings { i32 9000000, i32 848, i32 196559 }, %struct.dif_settings { i32 9000000, i32 852, i32 -4587496 }, %struct.dif_settings { i32 9000000, i32 856, i32 11337882 }, %struct.dif_settings { i32 9000000, i32 860, i32 -8782232 }, %struct.dif_settings { i32 9000000, i32 864, i32 -14286446 }, %struct.dif_settings { i32 9000000, i32 868, i32 48562347 }, %struct.dif_settings { i32 9000000, i32 872, i32 -57017418 }, %struct.dif_settings { i32 9000000, i32 876, i32 5965303 }, %struct.dif_settings { i32 9000000, i32 880, i32 88472961 }, %struct.dif_settings { i32 9000000, i32 884, i32 -148636993 }, %struct.dif_settings { i32 9000000, i32 888, i32 95947632 }, %struct.dif_settings { i32 9000000, i32 892, i32 64157289 }, %struct.dif_settings { i32 9000000, i32 896, i32 -216793323 }, %struct.dif_settings { i32 9000000, i32 900, i32 223677631 }, %struct.dif_settings { i32 9000000, i32 904, i32 -50925582 }, %struct.dif_settings { i32 9000000, i32 908, i32 -180091075 }, %struct.dif_settings { i32 9000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9100000, i32 840, i32 -2 }, %struct.dif_settings { i32 9100000, i32 844, i32 196626 }, %struct.dif_settings { i32 9100000, i32 848, i32 1048541 }, %struct.dif_settings { i32 9100000, i32 852, i32 -5439510 }, %struct.dif_settings { i32 9100000, i32 856, i32 9633999 }, %struct.dif_settings { i32 9100000, i32 860, i32 -2294148 }, %struct.dif_settings { i32 9100000, i32 864, i32 -22675209 }, %struct.dif_settings { i32 9100000, i32 868, i32 50135440 }, %struct.dif_settings { i32 9100000, i32 872, i32 -44958906 }, %struct.dif_settings { i32 9100000, i32 876, i32 -15399596 }, %struct.dif_settings { i32 9100000, i32 880, i32 103284477 }, %struct.dif_settings { i32 9100000, i32 884, i32 -143066760 }, %struct.dif_settings { i32 9100000, i32 888, i32 72158087 }, %struct.dif_settings { i32 9100000, i32 892, i32 88340349 }, %struct.dif_settings { i32 9100000, i32 896, i32 -224330289 }, %struct.dif_settings { i32 9100000, i32 900, i32 213781838 }, %struct.dif_settings { i32 9100000, i32 904, i32 -37425123 }, %struct.dif_settings { i32 9100000, i32 908, i32 -185465077 }, %struct.dif_settings { i32 9100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9200000, i32 840, i32 65533 }, %struct.dif_settings { i32 9200000, i32 844, i32 16 }, %struct.dif_settings { i32 9200000, i32 848, i32 1769456 }, %struct.dif_settings { i32 9200000, i32 852, i32 -5570625 }, %struct.dif_settings { i32 9200000, i32 856, i32 6750445 }, %struct.dif_settings { i32 9200000, i32 860, i32 4456118 }, %struct.dif_settings { i32 9200000, i32 864, i32 -28966841 }, %struct.dif_settings { i32 9200000, i32 868, i32 47907416 }, %struct.dif_settings { i32 9200000, i32 872, i32 -30016741 }, %struct.dif_settings { i32 9200000, i32 876, i32 -35912589 }, %struct.dif_settings { i32 9200000, i32 880, i32 113836162 }, %struct.dif_settings { i32 9200000, i32 884, i32 -133040034 }, %struct.dif_settings { i32 9200000, i32 888, i32 46730086 }, %struct.dif_settings { i32 9200000, i32 892, i32 111147181 }, %struct.dif_settings { i32 9200000, i32 896, i32 -229573491 }, %struct.dif_settings { i32 9200000, i32 900, i32 202640847 }, %struct.dif_settings { i32 9200000, i32 904, i32 -23859123 }, %struct.dif_settings { i32 9200000, i32 908, i32 -190773543 }, %struct.dif_settings { i32 9200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9300000, i32 840, i32 65533 }, %struct.dif_settings { i32 9300000, i32 844, i32 -262132 }, %struct.dif_settings { i32 9300000, i32 848, i32 2097158 }, %struct.dif_settings { i32 9300000, i32 852, i32 -4915300 }, %struct.dif_settings { i32 9300000, i32 856, i32 3080431 }, %struct.dif_settings { i32 9300000, i32 860, i32 10813200 }, %struct.dif_settings { i32 9300000, i32 864, i32 -32637038 }, %struct.dif_settings { i32 9300000, i32 868, i32 42009335 }, %struct.dif_settings { i32 9300000, i32 872, i32 -13173961 }, %struct.dif_settings { i32 9300000, i32 876, i32 -54590626 }, %struct.dif_settings { i32 9300000, i32 880, i32 119931394 }, %struct.dif_settings { i32 9300000, i32 884, i32 -118950024 }, %struct.dif_settings { i32 9300000, i32 888, i32 20187917 }, %struct.dif_settings { i32 9300000, i32 892, i32 132250100 }, %struct.dif_settings { i32 9300000, i32 896, i32 -232522927 }, %struct.dif_settings { i32 9300000, i32 900, i32 190385730 }, %struct.dif_settings { i32 9300000, i32 904, i32 -10162045 }, %struct.dif_settings { i32 9300000, i32 908, i32 -195950937 }, %struct.dif_settings { i32 9300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9400000, i32 840, i32 65533 }, %struct.dif_settings { i32 9400000, i32 844, i32 -458747 }, %struct.dif_settings { i32 9400000, i32 848, i32 2228250 }, %struct.dif_settings { i32 9400000, i32 852, i32 -3539066 }, %struct.dif_settings { i32 9400000, i32 856, i32 -1048361 }, %struct.dif_settings { i32 9400000, i32 860, i32 15925122 }, %struct.dif_settings { i32 9400000, i32 864, i32 -33423643 }, %struct.dif_settings { i32 9400000, i32 868, i32 32899938 }, %struct.dif_settings { i32 9400000, i32 872, i32 4520857 }, %struct.dif_settings { i32 9400000, i32 876, i32 -70516190 }, %struct.dif_settings { i32 9400000, i32 880, i32 121111408 }, %struct.dif_settings { i32 9400000, i32 884, i32 -101189940 }, %struct.dif_settings { i32 9400000, i32 888, i32 -6747522 }, %struct.dif_settings { i32 9400000, i32 892, i32 151190352 }, %struct.dif_settings { i32 9400000, i32 896, i32 -233113057 }, %struct.dif_settings { i32 9400000, i32 900, i32 177016486 }, %struct.dif_settings { i32 9400000, i32 904, i32 3469503 }, %struct.dif_settings { i32 9400000, i32 908, i32 -200997259 }, %struct.dif_settings { i32 9400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9500000, i32 840, i32 65534 }, %struct.dif_settings { i32 9500000, i32 844, i32 -458754 }, %struct.dif_settings { i32 9500000, i32 848, i32 1966123 }, %struct.dif_settings { i32 9500000, i32 852, i32 -1704063 }, %struct.dif_settings { i32 9500000, i32 856, i32 -4980571 }, %struct.dif_settings { i32 9500000, i32 860, i32 19398656 }, %struct.dif_settings { i32 9500000, i32 864, i32 -31130032 }, %struct.dif_settings { i32 9500000, i32 868, i32 21365648 }, %struct.dif_settings { i32 9500000, i32 872, i32 21888058 }, %struct.dif_settings { i32 9500000, i32 876, i32 -82837298 }, %struct.dif_settings { i32 9500000, i32 880, i32 117507263 }, %struct.dif_settings { i32 9500000, i32 884, i32 -80218529 }, %struct.dif_settings { i32 9500000, i32 888, i32 -33551940 }, %struct.dif_settings { i32 9500000, i32 892, i32 167836859 }, %struct.dif_settings { i32 9500000, i32 896, i32 -231343880 }, %struct.dif_settings { i32 9500000, i32 900, i32 162664188 }, %struct.dif_settings { i32 9500000, i32 904, i32 17166593 }, %struct.dif_settings { i32 9500000, i32 908, i32 -205912510 }, %struct.dif_settings { i32 9500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9600000, i32 840, i32 131071 }, %struct.dif_settings { i32 9600000, i32 844, i32 -458761 }, %struct.dif_settings { i32 9600000, i32 848, i32 1376310 }, %struct.dif_settings { i32 9600000, i32 852, i32 393100 }, %struct.dif_settings { i32 9600000, i32 856, i32 -8322975 }, %struct.dif_settings { i32 9600000, i32 860, i32 20775038 }, %struct.dif_settings { i32 9600000, i32 864, i32 -26083873 }, %struct.dif_settings { i32 9600000, i32 868, i32 8127360 }, %struct.dif_settings { i32 9600000, i32 872, i32 37879059 }, %struct.dif_settings { i32 9600000, i32 876, i32 -90898576 }, %struct.dif_settings { i32 9600000, i32 880, i32 109053410 }, %struct.dif_settings { i32 9600000, i32 884, i32 -56887757 }, %struct.dif_settings { i32 9600000, i32 888, i32 -59569974 }, %struct.dif_settings { i32 9600000, i32 892, i32 181796400 }, %struct.dif_settings { i32 9600000, i32 896, i32 -227215392 }, %struct.dif_settings { i32 9600000, i32 900, i32 147394371 }, %struct.dif_settings { i32 9600000, i32 904, i32 30732615 }, %struct.dif_settings { i32 9600000, i32 908, i32 -210696689 }, %struct.dif_settings { i32 9600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9700000, i32 840, i32 65537 }, %struct.dif_settings { i32 9700000, i32 844, i32 -393231 }, %struct.dif_settings { i32 9700000, i32 848, i32 589880 }, %struct.dif_settings { i32 9700000, i32 852, i32 2490279 }, %struct.dif_settings { i32 9700000, i32 856, i32 -10616814 }, %struct.dif_settings { i32 9700000, i32 860, i32 20054256 }, %struct.dif_settings { i32 9700000, i32 864, i32 -18612837 }, %struct.dif_settings { i32 9700000, i32 868, i32 -5635279 }, %struct.dif_settings { i32 9700000, i32 872, i32 51510805 }, %struct.dif_settings { i32 9700000, i32 876, i32 -94306792 }, %struct.dif_settings { i32 9700000, i32 880, i32 96274129 }, %struct.dif_settings { i32 9700000, i32 884, i32 -31721910 }, %struct.dif_settings { i32 9700000, i32 888, i32 -84277330 }, %struct.dif_settings { i32 9700000, i32 892, i32 192872363 }, %struct.dif_settings { i32 9700000, i32 896, i32 -220858665 }, %struct.dif_settings { i32 9700000, i32 900, i32 131272570 }, %struct.dif_settings { i32 9700000, i32 904, i32 44298644 }, %struct.dif_settings { i32 9700000, i32 908, i32 -215415332 }, %struct.dif_settings { i32 9700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9800000, i32 840, i32 65538 }, %struct.dif_settings { i32 9800000, i32 844, i32 -196626 }, %struct.dif_settings { i32 9800000, i32 848, i32 -327630 }, %struct.dif_settings { i32 9800000, i32 852, i32 4194253 }, %struct.dif_settings { i32 9800000, i32 856, i32 -11599935 }, %struct.dif_settings { i32 9800000, i32 860, i32 17170762 }, %struct.dif_settings { i32 9800000, i32 864, i32 -9503350 }, %struct.dif_settings { i32 9800000, i32 868, i32 -19070294 }, %struct.dif_settings { i32 9800000, i32 872, i32 61931316 }, %struct.dif_settings { i32 9800000, i32 876, i32 -92996393 }, %struct.dif_settings { i32 9800000, i32 880, i32 79628161 }, %struct.dif_settings { i32 9800000, i32 884, i32 -5572957 }, %struct.dif_settings { i32 9800000, i32 888, i32 -107084181 }, %struct.dif_settings { i32 9800000, i32 892, i32 200868136 }, %struct.dif_settings { i32 9800000, i32 896, i32 -212208159 }, %struct.dif_settings { i32 9800000, i32 900, i32 114429858 }, %struct.dif_settings { i32 9800000, i32 904, i32 57733605 }, %struct.dif_settings { i32 9800000, i32 908, i32 -219937368 }, %struct.dif_settings { i32 9800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 9900000, i32 840, i32 3 }, %struct.dif_settings { i32 9900000, i32 844, i32 -18 }, %struct.dif_settings { i32 9900000, i32 848, i32 -1114076 }, %struct.dif_settings { i32 9900000, i32 852, i32 5373946 }, %struct.dif_settings { i32 9900000, i32 856, i32 -11206793 }, %struct.dif_settings { i32 9900000, i32 860, i32 12452228 }, %struct.dif_settings { i32 9900000, i32 864, i32 458157 }, %struct.dif_settings { i32 9900000, i32 868, i32 -30998029 }, %struct.dif_settings { i32 9900000, i32 872, i32 68354142 }, %struct.dif_settings { i32 9900000, i32 876, i32 -86901830 }, %struct.dif_settings { i32 9900000, i32 880, i32 59770862 }, %struct.dif_settings { i32 9900000, i32 884, i32 20707133 }, %struct.dif_settings { i32 9900000, i32 888, i32 -127400694 }, %struct.dif_settings { i32 9900000, i32 892, i32 205718177 }, %struct.dif_settings { i32 9900000, i32 896, i32 -201460482 }, %struct.dif_settings { i32 9900000, i32 900, i32 96931770 }, %struct.dif_settings { i32 9900000, i32 904, i32 71037500 }, %struct.dif_settings { i32 9900000, i32 908, i32 -224328331 }, %struct.dif_settings { i32 9900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10000000, i32 840, i32 3 }, %struct.dif_settings { i32 10000000, i32 844, i32 262129 }, %struct.dif_settings { i32 10000000, i32 848, i32 -1769455 }, %struct.dif_settings { i32 10000000, i32 852, i32 5701671 }, %struct.dif_settings { i32 10000000, i32 856, i32 -9371844 }, %struct.dif_settings { i32 10000000, i32 860, i32 6422936 }, %struct.dif_settings { i32 10000000, i32 864, i32 10419713 }, %struct.dif_settings { i32 10000000, i32 868, i32 -40566502 }, %struct.dif_settings { i32 10000000, i32 872, i32 70582659 }, %struct.dif_settings { i32 10000000, i32 876, i32 -76416304 }, %struct.dif_settings { i32 10000000, i32 880, i32 37488658 }, %struct.dif_settings { i32 10000000, i32 884, i32 46397457 }, %struct.dif_settings { i32 10000000, i32 888, i32 -144833648 }, %struct.dif_settings { i32 10000000, i32 892, i32 207356945 }, %struct.dif_settings { i32 10000000, i32 896, i32 -188615630 }, %struct.dif_settings { i32 10000000, i32 900, i32 78843841 }, %struct.dif_settings { i32 10000000, i32 904, i32 84144791 }, %struct.dif_settings { i32 10000000, i32 908, i32 -228522687 }, %struct.dif_settings { i32 10000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10100000, i32 840, i32 3 }, %struct.dif_settings { i32 10100000, i32 844, i32 458743 }, %struct.dif_settings { i32 10100000, i32 848, i32 -2097156 }, %struct.dif_settings { i32 10100000, i32 852, i32 5308496 }, %struct.dif_settings { i32 10100000, i32 856, i32 -6422760 }, %struct.dif_settings { i32 10100000, i32 860, i32 -261756 }, %struct.dif_settings { i32 10100000, i32 864, i32 19463808 }, %struct.dif_settings { i32 10100000, i32 868, i32 -47054802 }, %struct.dif_settings { i32 10100000, i32 872, i32 68354706 }, %struct.dif_settings { i32 10100000, i32 876, i32 -61998559 }, %struct.dif_settings { i32 10100000, i32 880, i32 13699054 }, %struct.dif_settings { i32 10100000, i32 884, i32 70646044 }, %struct.dif_settings { i32 10100000, i32 888, i32 -159055355 }, %struct.dif_settings { i32 10100000, i32 892, i32 205718899 }, %struct.dif_settings { i32 10100000, i32 896, i32 -173935747 }, %struct.dif_settings { i32 10100000, i32 900, i32 60362682 }, %struct.dif_settings { i32 10100000, i32 904, i32 96989944 }, %struct.dif_settings { i32 10100000, i32 908, i32 -232651507 }, %struct.dif_settings { i32 10100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10200000, i32 840, i32 2 }, %struct.dif_settings { i32 10200000, i32 844, i32 589822 }, %struct.dif_settings { i32 10200000, i32 848, i32 -2097177 }, %struct.dif_settings { i32 10200000, i32 852, i32 4128878 }, %struct.dif_settings { i32 10200000, i32 856, i32 -2687217 }, %struct.dif_settings { i32 10200000, i32 860, i32 -6946486 }, %struct.dif_settings { i32 10200000, i32 864, i32 26738463 }, %struct.dif_settings { i32 10200000, i32 868, i32 -49938626 }, %struct.dif_settings { i32 10200000, i32 872, i32 61866876 }, %struct.dif_settings { i32 10200000, i32 876, i32 -44435017 }, %struct.dif_settings { i32 10200000, i32 880, i32 -10680447 }, %struct.dif_settings { i32 10200000, i32 884, i32 92666454 }, %struct.dif_settings { i32 10200000, i32 888, i32 -169607057 }, %struct.dif_settings { i32 10200000, i32 892, i32 200869572 }, %struct.dif_settings { i32 10200000, i32 896, i32 -157420832 }, %struct.dif_settings { i32 10200000, i32 900, i32 41488290 }, %struct.dif_settings { i32 10200000, i32 904, i32 109638493 }, %struct.dif_settings { i32 10200000, i32 908, i32 -236583720 }, %struct.dif_settings { i32 10200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10300000, i32 840, i32 -65535 }, %struct.dif_settings { i32 10300000, i32 844, i32 589829 }, %struct.dif_settings { i32 10300000, i32 848, i32 -1769514 }, %struct.dif_settings { i32 10300000, i32 852, i32 2424958 }, %struct.dif_settings { i32 10300000, i32 856, i32 1376032 }, %struct.dif_settings { i32 10300000, i32 860, i32 -12844816 }, %struct.dif_settings { i32 10300000, i32 864, i32 31588304 }, %struct.dif_settings { i32 10300000, i32 868, i32 -49086884 }, %struct.dif_settings { i32 10300000, i32 872, i32 51446835 }, %struct.dif_settings { i32 10300000, i32 876, i32 -24577642 }, %struct.dif_settings { i32 10300000, i32 880, i32 -34535727 }, %struct.dif_settings { i32 10300000, i32 884, i32 111868855 }, %struct.dif_settings { i32 10300000, i32 888, i32 -176226600 }, %struct.dif_settings { i32 10300000, i32 892, i32 192808959 }, %struct.dif_settings { i32 10300000, i32 896, i32 -139398562 }, %struct.dif_settings { i32 10300000, i32 900, i32 22417274 }, %struct.dif_settings { i32 10300000, i32 904, i32 122024903 }, %struct.dif_settings { i32 10300000, i32 908, i32 -240384860 }, %struct.dif_settings { i32 10300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10400000, i32 840, i32 -1 }, %struct.dif_settings { i32 10400000, i32 844, i32 524300 }, %struct.dif_settings { i32 10400000, i32 848, i32 -1179701 }, %struct.dif_settings { i32 10400000, i32 852, i32 327805 }, %struct.dif_settings { i32 10400000, i32 856, i32 5308236 }, %struct.dif_settings { i32 10400000, i32 860, i32 -17432450 }, %struct.dif_settings { i32 10400000, i32 864, i32 33489030 }, %struct.dif_settings { i32 10400000, i32 868, i32 -44499561 }, %struct.dif_settings { i32 10400000, i32 872, i32 37815469 }, %struct.dif_settings { i32 10400000, i32 876, i32 -3475008 }, %struct.dif_settings { i32 10400000, i32 880, i32 -57080350 }, %struct.dif_settings { i32 10400000, i32 884, i32 127597877 }, %struct.dif_settings { i32 10400000, i32 888, i32 -178913978 }, %struct.dif_settings { i32 10400000, i32 892, i32 181733664 }, %struct.dif_settings { i32 10400000, i32 896, i32 -119934474 }, %struct.dif_settings { i32 10400000, i32 900, i32 3215171 }, %struct.dif_settings { i32 10400000, i32 904, i32 134083637 }, %struct.dif_settings { i32 10400000, i32 908, i32 -244054929 }, %struct.dif_settings { i32 10400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10500000, i32 840, i32 -2 }, %struct.dif_settings { i32 10500000, i32 844, i32 327697 }, %struct.dif_settings { i32 10500000, i32 848, i32 -327736 }, %struct.dif_settings { i32 10500000, i32 852, i32 -1769365 }, %struct.dif_settings { i32 10500000, i32 856, i32 8585100 }, %struct.dif_settings { i32 10500000, i32 860, i32 -20185088 }, %struct.dif_settings { i32 10500000, i32 864, i32 32506160 }, %struct.dif_settings { i32 10500000, i32 868, i32 -36504324 }, %struct.dif_settings { i32 10500000, i32 872, i32 21824739 }, %struct.dif_settings { i32 10500000, i32 876, i32 17758770 }, %struct.dif_settings { i32 10500000, i32 880, i32 -77331265 }, %struct.dif_settings { i32 10500000, i32 884, i32 139394757 }, %struct.dif_settings { i32 10500000, i32 888, i32 -177603646 }, %struct.dif_settings { i32 10500000, i32 892, i32 167774755 }, %struct.dif_settings { i32 10500000, i32 896, i32 -99225173 }, %struct.dif_settings { i32 10500000, i32 900, i32 -16052484 }, %struct.dif_settings { i32 10500000, i32 904, i32 145814695 }, %struct.dif_settings { i32 10500000, i32 908, i32 -247528390 }, %struct.dif_settings { i32 10500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10600000, i32 840, i32 65533 }, %struct.dif_settings { i32 10600000, i32 844, i32 131090 }, %struct.dif_settings { i32 10600000, i32 848, i32 524237 }, %struct.dif_settings { i32 10600000, i32 852, i32 -3604404 }, %struct.dif_settings { i32 10600000, i32 856, i32 10813401 }, %struct.dif_settings { i32 10600000, i32 860, i32 -20709502 }, %struct.dif_settings { i32 10600000, i32 864, i32 28574145 }, %struct.dif_settings { i32 10600000, i32 868, i32 -25756521 }, %struct.dif_settings { i32 10600000, i32 872, i32 4457682 }, %struct.dif_settings { i32 10600000, i32 876, i32 38140648 }, %struct.dif_settings { i32 10600000, i32 880, i32 -94436496 }, %struct.dif_settings { i32 10600000, i32 884, i32 146866271 }, %struct.dif_settings { i32 10600000, i32 888, i32 -172164526 }, %struct.dif_settings { i32 10600000, i32 892, i32 151128836 }, %struct.dif_settings { i32 10600000, i32 896, i32 -77532805 }, %struct.dif_settings { i32 10600000, i32 900, i32 -35189082 }, %struct.dif_settings { i32 10600000, i32 904, i32 157152542 }, %struct.dif_settings { i32 10600000, i32 908, i32 -250870779 }, %struct.dif_settings { i32 10600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10700000, i32 840, i32 65533 }, %struct.dif_settings { i32 10700000, i32 844, i32 -65519 }, %struct.dif_settings { i32 10700000, i32 848, i32 1376219 }, %struct.dif_settings { i32 10700000, i32 852, i32 -4980701 }, %struct.dif_settings { i32 10700000, i32 856, i32 11665450 }, %struct.dif_settings { i32 10700000, i32 860, i32 -19136752 }, %struct.dif_settings { i32 10700000, i32 864, i32 22020653 }, %struct.dif_settings { i32 10700000, i32 868, i32 -13042577 }, %struct.dif_settings { i32 10700000, i32 872, i32 -13237125 }, %struct.dif_settings { i32 10700000, i32 876, i32 56556506 }, %struct.dif_settings { i32 10700000, i32 880, i32 -107740670 }, %struct.dif_settings { i32 10700000, i32 884, i32 149815797 }, %struct.dif_settings { i32 10700000, i32 888, i32 -162924290 }, %struct.dif_settings { i32 10700000, i32 892, i32 132189122 }, %struct.dif_settings { i32 10700000, i32 896, i32 -55119511 }, %struct.dif_settings { i32 10700000, i32 900, i32 -54129086 }, %struct.dif_settings { i32 10700000, i32 904, i32 168097177 }, %struct.dif_settings { i32 10700000, i32 908, i32 -254082096 }, %struct.dif_settings { i32 10700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10800000, i32 840, i32 65533 }, %struct.dif_settings { i32 10800000, i32 844, i32 -327667 }, %struct.dif_settings { i32 10800000, i32 848, i32 1966061 }, %struct.dif_settings { i32 10800000, i32 852, i32 -5570571 }, %struct.dif_settings { i32 10800000, i32 856, i32 11141239 }, %struct.dif_settings { i32 10800000, i32 860, i32 -15466826 }, %struct.dif_settings { i32 10800000, i32 864, i32 13501035 }, %struct.dif_settings { i32 10800000, i32 868, i32 720005 }, %struct.dif_settings { i32 10800000, i32 872, i32 -30080029 }, %struct.dif_settings { i32 10800000, i32 876, i32 72154363 }, %struct.dif_settings { i32 10800000, i32 880, i32 -116653950 }, %struct.dif_settings { i32 10800000, i32 884, i32 148177791 }, %struct.dif_settings { i32 10800000, i32 888, i32 -149882932 }, %struct.dif_settings { i32 10800000, i32 892, i32 111086681 }, %struct.dif_settings { i32 10800000, i32 896, i32 -32050829 }, %struct.dif_settings { i32 10800000, i32 900, i32 -72741425 }, %struct.dif_settings { i32 10800000, i32 904, i32 178648599 }, %struct.dif_settings { i32 10800000, i32 908, i32 -257096805 }, %struct.dif_settings { i32 10800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 10900000, i32 840, i32 65534 }, %struct.dif_settings { i32 10900000, i32 844, i32 -458746 }, %struct.dif_settings { i32 10900000, i32 848, i32 2162691 }, %struct.dif_settings { i32 10900000, i32 852, i32 -5439544 }, %struct.dif_settings { i32 10900000, i32 856, i32 9306294 }, %struct.dif_settings { i32 10900000, i32 860, i32 -10224004 }, %struct.dif_settings { i32 10900000, i32 864, i32 3801717 }, %struct.dif_settings { i32 10900000, i32 868, i32 14351578 }, %struct.dif_settings { i32 10900000, i32 872, i32 -45022445 }, %struct.dif_settings { i32 10900000, i32 876, i32 84016704 }, %struct.dif_settings { i32 10900000, i32 880, i32 -120848643 }, %struct.dif_settings { i32 10900000, i32 884, i32 141952240 }, %struct.dif_settings { i32 10900000, i32 888, i32 -133499198 }, %struct.dif_settings { i32 10900000, i32 892, i32 88280264 }, %struct.dif_settings { i32 10900000, i32 896, i32 -8719974 }, %struct.dif_settings { i32 10900000, i32 900, i32 -90960562 }, %struct.dif_settings { i32 10900000, i32 904, i32 188741273 }, %struct.dif_settings { i32 10900000, i32 908, i32 -259980443 }, %struct.dif_settings { i32 10900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11000000, i32 840, i32 131071 }, %struct.dif_settings { i32 11000000, i32 844, i32 -458753 }, %struct.dif_settings { i32 11000000, i32 848, i32 2162712 }, %struct.dif_settings { i32 11000000, i32 852, i32 -4522077 }, %struct.dif_settings { i32 11000000, i32 856, i32 6291681 }, %struct.dif_settings { i32 11000000, i32 860, i32 -3867032 }, %struct.dif_settings { i32 11000000, i32 864, i32 -6290869 }, %struct.dif_settings { i32 11000000, i32 868, i32 26934630 }, %struct.dif_settings { i32 11000000, i32 872, i32 -57081322 }, %struct.dif_settings { i32 11000000, i32 876, i32 91619225 }, %struct.dif_settings { i32 11000000, i32 880, i32 -120259199 }, %struct.dif_settings { i32 11000000, i32 884, i32 131335744 }, %struct.dif_settings { i32 11000000, i32 888, i32 -114100762 }, %struct.dif_settings { i32 11000000, i32 892, i32 64097549 }, %struct.dif_settings { i32 11000000, i32 896, i32 14676446 }, %struct.dif_settings { i32 11000000, i32 900, i32 -108655425 }, %struct.dif_settings { i32 11000000, i32 904, i32 198309662 }, %struct.dif_settings { i32 11000000, i32 908, i32 -262667473 }, %struct.dif_settings { i32 11000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11100000, i32 840, i32 65536 }, %struct.dif_settings { i32 11100000, i32 844, i32 -458760 }, %struct.dif_settings { i32 11100000, i32 848, i32 1769513 }, %struct.dif_settings { i32 11100000, i32 852, i32 -3014774 }, %struct.dif_settings { i32 11100000, i32 856, i32 2490610 }, %struct.dif_settings { i32 11100000, i32 860, i32 2948732 }, %struct.dif_settings { i32 11100000, i32 864, i32 -15793680 }, %struct.dif_settings { i32 11100000, i32 868, i32 37486112 }, %struct.dif_settings { i32 11100000, i32 872, i32 -65601286 }, %struct.dif_settings { i32 11100000, i32 876, i32 94503159 }, %struct.dif_settings { i32 11100000, i32 880, i32 -114820068 }, %struct.dif_settings { i32 11100000, i32 884, i32 116655973 }, %struct.dif_settings { i32 11100000, i32 888, i32 -92080837 }, %struct.dif_settings { i32 11100000, i32 892, i32 38866215 }, %struct.dif_settings { i32 11100000, i32 896, i32 38007357 }, %struct.dif_settings { i32 11100000, i32 900, i32 -125760476 }, %struct.dif_settings { i32 11100000, i32 904, i32 207419303 }, %struct.dif_settings { i32 11100000, i32 908, i32 -265223430 }, %struct.dif_settings { i32 11100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11200000, i32 840, i32 65538 }, %struct.dif_settings { i32 11200000, i32 844, i32 -327694 }, %struct.dif_settings { i32 11200000, i32 848, i32 1114165 }, %struct.dif_settings { i32 11200000, i32 852, i32 -983167 }, %struct.dif_settings { i32 11200000, i32 856, i32 -1638169 }, %struct.dif_settings { i32 11200000, i32 860, i32 9436854 }, %struct.dif_settings { i32 11200000, i32 864, i32 -23854739 }, %struct.dif_settings { i32 11200000, i32 868, i32 45154043 }, %struct.dif_settings { i32 11200000, i32 872, i32 -69992495 }, %struct.dif_settings { i32 11200000, i32 876, i32 92602953 }, %struct.dif_settings { i32 11200000, i32 880, i32 -104727845 }, %struct.dif_settings { i32 11200000, i32 884, i32 98437208 }, %struct.dif_settings { i32 11200000, i32 888, i32 -67963708 }, %struct.dif_settings { i32 11200000, i32 892, i32 13045015 }, %struct.dif_settings { i32 11200000, i32 896, i32 60879544 }, %struct.dif_settings { i32 11200000, i32 900, i32 -142144644 }, %struct.dif_settings { i32 11200000, i32 904, i32 216004659 }, %struct.dif_settings { i32 11200000, i32 908, i32 -267582780 }, %struct.dif_settings { i32 11200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11300000, i32 840, i32 3 }, %struct.dif_settings { i32 11300000, i32 844, i32 -131090 }, %struct.dif_settings { i32 11300000, i32 848, i32 262200 }, %struct.dif_settings { i32 11300000, i32 852, i32 1113992 }, %struct.dif_settings { i32 11300000, i32 856, i32 -5504830 }, %struct.dif_settings { i32 11300000, i32 860, i32 14876432 }, %struct.dif_settings { i32 11300000, i32 864, i32 -29818677 }, %struct.dif_settings { i32 11300000, i32 868, i32 49414121 }, %struct.dif_settings { i32 11300000, i32 872, i32 -69992790 }, %struct.dif_settings { i32 11300000, i32 876, i32 86049665 }, %struct.dif_settings { i32 11300000, i32 880, i32 -90375736 }, %struct.dif_settings { i32 11300000, i32 884, i32 77138194 }, %struct.dif_settings { i32 11300000, i32 888, i32 -42273660 }, %struct.dif_settings { i32 11300000, i32 892, i32 -13038373 }, %struct.dif_settings { i32 11300000, i32 896, i32 83161933 }, %struct.dif_settings { i32 11300000, i32 900, i32 -157676855 }, %struct.dif_settings { i32 11300000, i32 904, i32 224065729 }, %struct.dif_settings { i32 11300000, i32 908, i32 -269745522 }, %struct.dif_settings { i32 11300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11400000, i32 840, i32 3 }, %struct.dif_settings { i32 11400000, i32 844, i32 65518 }, %struct.dif_settings { i32 11400000, i32 848, i32 -655309 }, %struct.dif_settings { i32 11400000, i32 852, i32 3145631 }, %struct.dif_settings { i32 11400000, i32 856, i32 -8716153 }, %struct.dif_settings { i32 11400000, i32 860, i32 18808706 }, %struct.dif_settings { i32 11400000, i32 864, i32 -33030120 }, %struct.dif_settings { i32 11400000, i32 868, i32 49873112 }, %struct.dif_settings { i32 11400000, i32 872, i32 -65536618 }, %struct.dif_settings { i32 11400000, i32 876, i32 75039888 }, %struct.dif_settings { i32 11400000, i32 880, i32 -72484627 }, %struct.dif_settings { i32 11400000, i32 884, i32 53414286 }, %struct.dif_settings { i32 11400000, i32 888, i32 -15666051 }, %struct.dif_settings { i32 11400000, i32 892, i32 -38859659 }, %struct.dif_settings { i32 11400000, i32 896, i32 104657916 }, %struct.dif_settings { i32 11400000, i32 900, i32 -172357109 }, %struct.dif_settings { i32 11400000, i32 904, i32 231536978 }, %struct.dif_settings { i32 11400000, i32 908, i32 -271777192 }, %struct.dif_settings { i32 11400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11500000, i32 840, i32 3 }, %struct.dif_settings { i32 11500000, i32 844, i32 327665 }, %struct.dif_settings { i32 11500000, i32 848, i32 -1441754 }, %struct.dif_settings { i32 11500000, i32 852, i32 4652995 }, %struct.dif_settings { i32 11500000, i32 856, i32 -10878916 }, %struct.dif_settings { i32 11500000, i32 860, i32 20643840 }, %struct.dif_settings { i32 11500000, i32 864, i32 -33226909 }, %struct.dif_settings { i32 11500000, i32 868, i32 46662072 }, %struct.dif_settings { i32 11500000, i32 872, i32 -57017178 }, %struct.dif_settings { i32 11500000, i32 876, i32 60228970 }, %struct.dif_settings { i32 11500000, i32 880, i32 -51578797 }, %struct.dif_settings { i32 11500000, i32 884, i32 28117449 }, %struct.dif_settings { i32 11500000, i32 888, i32 11334829 }, %struct.dif_settings { i32 11500000, i32 892, i32 -64091161 }, %struct.dif_settings { i32 11500000, i32 896, i32 125039810 }, %struct.dif_settings { i32 11500000, i32 900, i32 -186054333 }, %struct.dif_settings { i32 11500000, i32 904, i32 238418406 }, %struct.dif_settings { i32 11500000, i32 908, i32 -273612255 }, %struct.dif_settings { i32 11500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11600000, i32 840, i32 2 }, %struct.dif_settings { i32 11600000, i32 844, i32 524278 }, %struct.dif_settings { i32 11600000, i32 848, i32 -1966060 }, %struct.dif_settings { i32 11600000, i32 852, i32 5570542 }, %struct.dif_settings { i32 11600000, i32 856, i32 -11599893 }, %struct.dif_settings { i32 11600000, i32 860, i32 20381822 }, %struct.dif_settings { i32 11600000, i32 864, i32 -30474565 }, %struct.dif_settings { i32 11600000, i32 868, i32 39846522 }, %struct.dif_settings { i32 11600000, i32 872, i32 -44958746 }, %struct.dif_settings { i32 11600000, i32 876, i32 42403333 }, %struct.dif_settings { i32 11600000, i32 880, i32 -28641282 }, %struct.dif_settings { i32 11600000, i32 884, i32 1903041 }, %struct.dif_settings { i32 11600000, i32 888, i32 38008085 }, %struct.dif_settings { i32 11600000, i32 892, i32 -88274126 }, %struct.dif_settings { i32 11600000, i32 896, i32 144176542 }, %struct.dif_settings { i32 11600000, i32 900, i32 -198702991 }, %struct.dif_settings { i32 11600000, i32 904, i32 244710012 }, %struct.dif_settings { i32 11600000, i32 908, i32 -275316245 }, %struct.dif_settings { i32 11600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11700000, i32 840, i32 -65535 }, %struct.dif_settings { i32 11700000, i32 844, i32 589821 }, %struct.dif_settings { i32 11700000, i32 848, i32 -2162689 }, %struct.dif_settings { i32 11700000, i32 852, i32 5636125 }, %struct.dif_settings { i32 11700000, i32 856, i32 -11010148 }, %struct.dif_settings { i32 11700000, i32 860, i32 18022640 }, %struct.dif_settings { i32 11700000, i32 864, i32 -24969682 }, %struct.dif_settings { i32 11700000, i32 868, i32 30016272 }, %struct.dif_settings { i32 11700000, i32 872, i32 -30016670 }, %struct.dif_settings { i32 11700000, i32 876, i32 22349402 }, %struct.dif_settings { i32 11700000, i32 880, i32 -4524046 }, %struct.dif_settings { i32 11700000, i32 884, i32 -24376969 }, %struct.dif_settings { i32 11700000, i32 888, i32 63894962 }, %struct.dif_settings { i32 11700000, i32 892, i32 -111080872 }, %struct.dif_settings { i32 11700000, i32 896, i32 161871503 }, %struct.dif_settings { i32 11700000, i32 900, i32 -210172009 }, %struct.dif_settings { i32 11700000, i32 904, i32 250346260 }, %struct.dif_settings { i32 11700000, i32 908, i32 -276823627 }, %struct.dif_settings { i32 11700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11800000, i32 840, i32 -65536 }, %struct.dif_settings { i32 11800000, i32 844, i32 524292 }, %struct.dif_settings { i32 11800000, i32 848, i32 -2031639 }, %struct.dif_settings { i32 11800000, i32 852, i32 4980807 }, %struct.dif_settings { i32 11800000, i32 856, i32 -9044136 }, %struct.dif_settings { i32 11800000, i32 860, i32 13697354 }, %struct.dif_settings { i32 11800000, i32 864, i32 -17171000 }, %struct.dif_settings { i32 11800000, i32 868, i32 17892207 }, %struct.dif_settings { i32 11800000, i32 872, i32 -13173983 }, %struct.dif_settings { i32 11800000, i32 876, i32 1181285 }, %struct.dif_settings { i32 11800000, i32 880, i32 19789870 }, %struct.dif_settings { i32 11800000, i32 884, i32 -49870612 }, %struct.dif_settings { i32 11800000, i32 888, i32 88274562 }, %struct.dif_settings { i32 11800000, i32 892, i32 -132183716 }, %struct.dif_settings { i32 11800000, i32 896, i32 177928082 }, %struct.dif_settings { i32 11800000, i32 900, i32 -220526923 }, %struct.dif_settings { i32 11800000, i32 904, i32 255392685 }, %struct.dif_settings { i32 11800000, i32 908, i32 -278134402 }, %struct.dif_settings { i32 11800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 11900000, i32 840, i32 -1 }, %struct.dif_settings { i32 11900000, i32 844, i32 458763 }, %struct.dif_settings { i32 11900000, i32 848, i32 -1572904 }, %struct.dif_settings { i32 11900000, i32 852, i32 3604584 }, %struct.dif_settings { i32 11900000, i32 856, i32 -5963992 }, %struct.dif_settings { i32 11900000, i32 860, i32 7930244 }, %struct.dif_settings { i32 11900000, i32 864, i32 -7864943 }, %struct.dif_settings { i32 11900000, i32 868, i32 4391826 }, %struct.dif_settings { i32 11900000, i32 872, i32 4520742 }, %struct.dif_settings { i32 11900000, i32 876, i32 -20052442 }, %struct.dif_settings { i32 11900000, i32 880, i32 43317426 }, %struct.dif_settings { i32 11900000, i32 884, i32 -73856987 }, %struct.dif_settings { i32 11900000, i32 888, i32 110688127 }, %struct.dif_settings { i32 11900000, i32 892, i32 -151123902 }, %struct.dif_settings { i32 11900000, i32 896, i32 192149671 }, %struct.dif_settings { i32 11900000, i32 900, i32 -229571123 }, %struct.dif_settings { i32 11900000, i32 904, i32 259783752 }, %struct.dif_settings { i32 11900000, i32 908, i32 -279314104 }, %struct.dif_settings { i32 11900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12000000, i32 840, i32 65534 }, %struct.dif_settings { i32 12000000, i32 844, i32 327696 }, %struct.dif_settings { i32 12000000, i32 848, i32 -852020 }, %struct.dif_settings { i32 12000000, i32 852, i32 1769595 }, %struct.dif_settings { i32 12000000, i32 856, i32 -2097392 }, %struct.dif_settings { i32 12000000, i32 860, i32 1311128 }, %struct.dif_settings { i32 12000000, i32 864, i32 2162062 }, %struct.dif_settings { i32 12000000, i32 868, i32 -9370763 }, %struct.dif_settings { i32 12000000, i32 872, i32 21887859 }, %struct.dif_settings { i32 12000000, i32 876, i32 -40237665 }, %struct.dif_settings { i32 12000000, i32 880, i32 65075576 }, %struct.dif_settings { i32 12000000, i32 884, i32 -95549658 }, %struct.dif_settings { i32 12000000, i32 888, i32 130611367 }, %struct.dif_settings { i32 12000000, i32 892, i32 -167770356 }, %struct.dif_settings { i32 12000000, i32 896, i32 204470729 }, %struct.dif_settings { i32 12000000, i32 900, i32 -237304610 }, %struct.dif_settings { i32 12000000, i32 904, i32 263519461 }, %struct.dif_settings { i32 12000000, i32 908, i32 -280297199 }, %struct.dif_settings { i32 12000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12100000, i32 840, i32 65533 }, %struct.dif_settings { i32 12100000, i32 844, i32 65554 }, %struct.dif_settings { i32 12100000, i32 848, i32 -56 }, %struct.dif_settings { i32 12100000, i32 852, i32 -327554 }, %struct.dif_settings { i32 12100000, i32 856, i32 1965844 }, %struct.dif_settings { i32 12100000, i32 860, i32 -5439100 }, %struct.dif_settings { i32 12100000, i32 864, i32 12058046 }, %struct.dif_settings { i32 12100000, i32 868, i32 -22478053 }, %struct.dif_settings { i32 12100000, i32 872, i32 37878785 }, %struct.dif_settings { i32 12100000, i32 876, i32 -58391338 }, %struct.dif_settings { i32 12100000, i32 880, i32 84212345 }, %struct.dif_settings { i32 12100000, i32 884, i32 -114293258 }, %struct.dif_settings { i32 12100000, i32 888, i32 147519986 }, %struct.dif_settings { i32 12100000, i32 892, i32 -181729856 }, %struct.dif_settings { i32 12100000, i32 896, i32 214694649 }, %struct.dif_settings { i32 12100000, i32 900, i32 -243727381 }, %struct.dif_settings { i32 12100000, i32 904, i32 266599811 }, %struct.dif_settings { i32 12100000, i32 908, i32 -281083685 }, %struct.dif_settings { i32 12100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12200000, i32 840, i32 65533 }, %struct.dif_settings { i32 12200000, i32 844, i32 -131055 }, %struct.dif_settings { i32 12200000, i32 848, i32 851916 }, %struct.dif_settings { i32 12200000, i32 852, i32 -2424719 }, %struct.dif_settings { i32 12200000, i32 856, i32 5832498 }, %struct.dif_settings { i32 12200000, i32 860, i32 -11599542 }, %struct.dif_settings { i32 12200000, i32 864, i32 20774431 }, %struct.dif_settings { i32 12200000, i32 868, i32 -33881462 }, %struct.dif_settings { i32 12200000, i32 872, i32 51510473 }, %struct.dif_settings { i32 12200000, i32 876, i32 -73595946 }, %struct.dif_settings { i32 12200000, i32 880, i32 99941293 }, %struct.dif_settings { i32 12200000, i32 884, i32 -129497955 }, %struct.dif_settings { i32 12200000, i32 888, i32 161086299 }, %struct.dif_settings { i32 12200000, i32 892, i32 -192805791 }, %struct.dif_settings { i32 12200000, i32 896, i32 222755890 }, %struct.dif_settings { i32 12200000, i32 900, i32 -248708364 }, %struct.dif_settings { i32 12200000, i32 904, i32 268959265 }, %struct.dif_settings { i32 12200000, i32 908, i32 -281673564 }, %struct.dif_settings { i32 12200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12300000, i32 840, i32 65534 }, %struct.dif_settings { i32 12300000, i32 844, i32 -393202 }, %struct.dif_settings { i32 12300000, i32 848, i32 1572825 }, %struct.dif_settings { i32 12300000, i32 852, i32 -4128683 }, %struct.dif_settings { i32 12300000, i32 856, i32 8978280 }, %struct.dif_settings { i32 12300000, i32 860, i32 -16514832 }, %struct.dif_settings { i32 12300000, i32 864, i32 27721383 }, %struct.dif_settings { i32 12300000, i32 868, i32 -42663476 }, %struct.dif_settings { i32 12300000, i32 872, i32 61930944 }, %struct.dif_settings { i32 12300000, i32 876, i32 -84999512 }, %struct.dif_settings { i32 12300000, i32 880, i32 111672583 }, %struct.dif_settings { i32 12300000, i32 884, i32 -140704986 }, %struct.dif_settings { i32 12300000, i32 888, i32 171048154 }, %struct.dif_settings { i32 12300000, i32 892, i32 -200867085 }, %struct.dif_settings { i32 12300000, i32 896, i32 228588914 }, %struct.dif_settings { i32 12300000, i32 900, i32 -252313094 }, %struct.dif_settings { i32 12300000, i32 904, i32 270663360 }, %struct.dif_settings { i32 12300000, i32 908, i32 -282132371 }, %struct.dif_settings { i32 12300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12400000, i32 840, i32 131071 }, %struct.dif_settings { i32 12400000, i32 844, i32 -524281 }, %struct.dif_settings { i32 12400000, i32 848, i32 2097131 }, %struct.dif_settings { i32 12400000, i32 852, i32 -5308371 }, %struct.dif_settings { i32 12400000, i32 856, i32 11075504 }, %struct.dif_settings { i32 12400000, i32 860, i32 -19726210 }, %struct.dif_settings { i32 12400000, i32 864, i32 32112460 }, %struct.dif_settings { i32 12400000, i32 868, i32 -48234258 }, %struct.dif_settings { i32 12400000, i32 872, i32 68419288 }, %struct.dif_settings { i32 12400000, i32 876, i32 -92143268 }, %struct.dif_settings { i32 12400000, i32 880, i32 118881917 }, %struct.dif_settings { i32 12400000, i32 884, i32 -147586664 }, %struct.dif_settings { i32 12400000, i32 888, i32 177077865 }, %struct.dif_settings { i32 12400000, i32 892, i32 -205717124 }, %struct.dif_settings { i32 12400000, i32 896, i32 232128184 }, %struct.dif_settings { i32 12400000, i32 900, i32 -254476035 }, %struct.dif_settings { i32 12400000, i32 904, i32 271712096 }, %struct.dif_settings { i32 12400000, i32 908, i32 -282394569 }, %struct.dif_settings { i32 12400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12500000, i32 840, i32 65536 }, %struct.dif_settings { i32 12500000, i32 844, i32 -589824 }, %struct.dif_settings { i32 12500000, i32 848, i32 2228224 }, %struct.dif_settings { i32 12500000, i32 852, i32 -5701632 }, %struct.dif_settings { i32 12500000, i32 856, i32 11730944 }, %struct.dif_settings { i32 12500000, i32 860, i32 -20840448 }, %struct.dif_settings { i32 12500000, i32 864, i32 33554432 }, %struct.dif_settings { i32 12500000, i32 868, i32 -50135040 }, %struct.dif_settings { i32 12500000, i32 872, i32 70582272 }, %struct.dif_settings { i32 12500000, i32 876, i32 -94502912 }, %struct.dif_settings { i32 12500000, i32 880, i32 121307136 }, %struct.dif_settings { i32 12500000, i32 884, i32 -149880832 }, %struct.dif_settings { i32 12500000, i32 888, i32 179044352 }, %struct.dif_settings { i32 12500000, i32 892, i32 -207355904 }, %struct.dif_settings { i32 12500000, i32 896, i32 233242624 }, %struct.dif_settings { i32 12500000, i32 900, i32 -255262720 }, %struct.dif_settings { i32 12500000, i32 904, i32 271974400 }, %struct.dif_settings { i32 12500000, i32 908, i32 -282525696 }, %struct.dif_settings { i32 12500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12600000, i32 840, i32 65537 }, %struct.dif_settings { i32 12600000, i32 844, i32 -458759 }, %struct.dif_settings { i32 12600000, i32 848, i32 2031637 }, %struct.dif_settings { i32 12600000, i32 852, i32 -5242925 }, %struct.dif_settings { i32 12600000, i32 856, i32 11010128 }, %struct.dif_settings { i32 12600000, i32 860, i32 -19660926 }, %struct.dif_settings { i32 12600000, i32 864, i32 32047284 }, %struct.dif_settings { i32 12600000, i32 868, i32 -48169198 }, %struct.dif_settings { i32 12600000, i32 872, i32 68354344 }, %struct.dif_settings { i32 12600000, i32 876, i32 -92078428 }, %struct.dif_settings { i32 12600000, i32 880, i32 118817155 }, %struct.dif_settings { i32 12600000, i32 884, i32 -147521944 }, %struct.dif_settings { i32 12600000, i32 888, i32 177013143 }, %struct.dif_settings { i32 12600000, i32 892, i32 -205652348 }, %struct.dif_settings { i32 12600000, i32 896, i32 232063304 }, %struct.dif_settings { i32 12600000, i32 900, i32 -254411005 }, %struct.dif_settings { i32 12600000, i32 904, i32 271646880 }, %struct.dif_settings { i32 12600000, i32 908, i32 -282329143 }, %struct.dif_settings { i32 12600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12700000, i32 840, i32 2 }, %struct.dif_settings { i32 12700000, i32 844, i32 -327694 }, %struct.dif_settings { i32 12700000, i32 848, i32 1507367 }, %struct.dif_settings { i32 12700000, i32 852, i32 -4063317 }, %struct.dif_settings { i32 12700000, i32 856, i32 8913048 }, %struct.dif_settings { i32 12700000, i32 860, i32 -16449776 }, %struct.dif_settings { i32 12700000, i32 864, i32 27656537 }, %struct.dif_settings { i32 12700000, i32 868, i32 -42598860 }, %struct.dif_settings { i32 12700000, i32 872, i32 61866560 }, %struct.dif_settings { i32 12700000, i32 876, i32 -84935336 }, %struct.dif_settings { i32 12700000, i32 880, i32 111608569 }, %struct.dif_settings { i32 12700000, i32 884, i32 -140641062 }, %struct.dif_settings { i32 12700000, i32 888, i32 170984230 }, %struct.dif_settings { i32 12700000, i32 892, i32 -200803059 }, %struct.dif_settings { i32 12700000, i32 896, i32 228524686 }, %struct.dif_settings { i32 12700000, i32 900, i32 -252248570 }, %struct.dif_settings { i32 12700000, i32 904, i32 270598464 }, %struct.dif_settings { i32 12700000, i32 908, i32 -282067053 }, %struct.dif_settings { i32 12700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12800000, i32 840, i32 3 }, %struct.dif_settings { i32 12800000, i32 844, i32 -65553 }, %struct.dif_settings { i32 12800000, i32 848, i32 786484 }, %struct.dif_settings { i32 12800000, i32 852, i32 -2359409 }, %struct.dif_settings { i32 12800000, i32 856, i32 5767374 }, %struct.dif_settings { i32 12800000, i32 860, i32 -11534666 }, %struct.dif_settings { i32 12800000, i32 864, i32 20709857 }, %struct.dif_settings { i32 12800000, i32 868, i32 -33817226 }, %struct.dif_settings { i32 12800000, i32 872, i32 51446583 }, %struct.dif_settings { i32 12800000, i32 876, i32 -73532374 }, %struct.dif_settings { i32 12800000, i32 880, i32 99877971 }, %struct.dif_settings { i32 12800000, i32 884, i32 -129434781 }, %struct.dif_settings { i32 12800000, i32 888, i32 161023141 }, %struct.dif_settings { i32 12800000, i32 892, i32 -192742497 }, %struct.dif_settings { i32 12800000, i32 896, i32 222692302 }, %struct.dif_settings { i32 12800000, i32 900, i32 -248644340 }, %struct.dif_settings { i32 12800000, i32 904, i32 268894687 }, %struct.dif_settings { i32 12800000, i32 908, i32 -281608356 }, %struct.dif_settings { i32 12800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 12900000, i32 840, i32 3 }, %struct.dif_settings { i32 12900000, i32 844, i32 131054 }, %struct.dif_settings { i32 12900000, i32 848, i32 -65480 }, %struct.dif_settings { i32 12900000, i32 852, i32 -262270 }, %struct.dif_settings { i32 12900000, i32 856, i32 1900780 }, %struct.dif_settings { i32 12900000, i32 860, i32 -5374340 }, %struct.dif_settings { i32 12900000, i32 864, i32 11993666 }, %struct.dif_settings { i32 12900000, i32 868, i32 -22414107 }, %struct.dif_settings { i32 12900000, i32 872, i32 37815295 }, %struct.dif_settings { i32 12900000, i32 876, i32 -58328278 }, %struct.dif_settings { i32 12900000, i32 880, i32 84149639 }, %struct.dif_settings { i32 12900000, i32 884, i32 -114230774 }, %struct.dif_settings { i32 12900000, i32 888, i32 147457550 }, %struct.dif_settings { i32 12900000, i32 892, i32 -181667264 }, %struct.dif_settings { i32 12900000, i32 896, i32 214631687 }, %struct.dif_settings { i32 12900000, i32 900, i32 -243663851 }, %struct.dif_settings { i32 12900000, i32 904, i32 266535549 }, %struct.dif_settings { i32 12900000, i32 908, i32 -281018587 }, %struct.dif_settings { i32 12900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13000000, i32 840, i32 2 }, %struct.dif_settings { i32 13000000, i32 844, i32 393200 }, %struct.dif_settings { i32 13000000, i32 848, i32 -917452 }, %struct.dif_settings { i32 13000000, i32 852, i32 1834885 }, %struct.dif_settings { i32 13000000, i32 856, i32 -2162448 }, %struct.dif_settings { i32 13000000, i32 860, i32 1375848 }, %struct.dif_settings { i32 13000000, i32 864, i32 2097778 }, %struct.dif_settings { i32 13000000, i32 868, i32 -9306997 }, %struct.dif_settings { i32 13000000, i32 872, i32 21824653 }, %struct.dif_settings { i32 13000000, i32 876, i32 -40175007 }, %struct.dif_settings { i32 13000000, i32 880, i32 65013384 }, %struct.dif_settings { i32 13000000, i32 884, i32 -95487782 }, %struct.dif_settings { i32 13000000, i32 888, i32 130549593 }, %struct.dif_settings { i32 13000000, i32 892, i32 -167708428 }, %struct.dif_settings { i32 13000000, i32 896, i32 204408375 }, %struct.dif_settings { i32 13000000, i32 900, i32 -237241566 }, %struct.dif_settings { i32 13000000, i32 904, i32 263455515 }, %struct.dif_settings { i32 13000000, i32 908, i32 -280232209 }, %struct.dif_settings { i32 13000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13100000, i32 840, i32 -65535 }, %struct.dif_settings { i32 13100000, i32 844, i32 524277 }, %struct.dif_settings { i32 13100000, i32 848, i32 -1638360 }, %struct.dif_settings { i32 13100000, i32 852, i32 3669912 }, %struct.dif_settings { i32 13100000, i32 856, i32 -6029096 }, %struct.dif_settings { i32 13100000, i32 860, i32 7995004 }, %struct.dif_settings { i32 13100000, i32 864, i32 -7929233 }, %struct.dif_settings { i32 13100000, i32 868, i32 4455534 }, %struct.dif_settings { i32 13100000, i32 872, i32 4457690 }, %struct.dif_settings { i32 13100000, i32 876, i32 -19990054 }, %struct.dif_settings { i32 13100000, i32 880, i32 43255630 }, %struct.dif_settings { i32 13100000, i32 884, i32 -73795621 }, %struct.dif_settings { i32 13100000, i32 888, i32 110626945 }, %struct.dif_settings { i32 13100000, i32 892, i32 -151062594 }, %struct.dif_settings { i32 13100000, i32 896, i32 192087897 }, %struct.dif_settings { i32 13100000, i32 900, i32 -229508557 }, %struct.dif_settings { i32 13100000, i32 904, i32 259720120 }, %struct.dif_settings { i32 13100000, i32 908, i32 -279249224 }, %struct.dif_settings { i32 13100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13200000, i32 840, i32 -65536 }, %struct.dif_settings { i32 13200000, i32 844, i32 589820 }, %struct.dif_settings { i32 13200000, i32 848, i32 -2097129 }, %struct.dif_settings { i32 13200000, i32 852, i32 5046201 }, %struct.dif_settings { i32 13200000, i32 856, i32 -9109336 }, %struct.dif_settings { i32 13200000, i32 860, i32 13762230 }, %struct.dif_settings { i32 13200000, i32 864, i32 -17235400 }, %struct.dif_settings { i32 13200000, i32 868, i32 17955985 }, %struct.dif_settings { i32 13200000, i32 872, i32 -13237025 }, %struct.dif_settings { i32 13200000, i32 876, i32 1243547 }, %struct.dif_settings { i32 13200000, i32 880, i32 19728338 }, %struct.dif_settings { i32 13200000, i32 884, i32 -49809644 }, %struct.dif_settings { i32 13200000, i32 888, i32 88213886 }, %struct.dif_settings { i32 13200000, i32 892, i32 -132122972 }, %struct.dif_settings { i32 13200000, i32 896, i32 177866862 }, %struct.dif_settings { i32 13200000, i32 900, i32 -220464821 }, %struct.dif_settings { i32 13200000, i32 904, i32 255329363 }, %struct.dif_settings { i32 13200000, i32 908, i32 -278069630 }, %struct.dif_settings { i32 13200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13300000, i32 840, i32 -1 }, %struct.dif_settings { i32 13300000, i32 844, i32 524291 }, %struct.dif_settings { i32 13300000, i32 848, i32 -2228223 }, %struct.dif_settings { i32 13300000, i32 852, i32 5701603 }, %struct.dif_settings { i32 13300000, i32 856, i32 -11075484 }, %struct.dif_settings { i32 13300000, i32 860, i32 18087696 }, %struct.dif_settings { i32 13300000, i32 864, i32 -25034286 }, %struct.dif_settings { i32 13300000, i32 868, i32 30080240 }, %struct.dif_settings { i32 13300000, i32 872, i32 -30079842 }, %struct.dif_settings { i32 13300000, i32 876, i32 22411686 }, %struct.dif_settings { i32 13300000, i32 880, i32 -4585458 }, %struct.dif_settings { i32 13300000, i32 884, i32 -24316279 }, %struct.dif_settings { i32 13300000, i32 888, i32 63834702 }, %struct.dif_settings { i32 13300000, i32 892, i32 -111020632 }, %struct.dif_settings { i32 13300000, i32 896, i32 161810801 }, %struct.dif_settings { i32 13300000, i32 900, i32 -210110359 }, %struct.dif_settings { i32 13300000, i32 904, i32 250283244 }, %struct.dif_settings { i32 13300000, i32 908, i32 -276758965 }, %struct.dif_settings { i32 13300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13400000, i32 840, i32 65534 }, %struct.dif_settings { i32 13400000, i32 844, i32 458762 }, %struct.dif_settings { i32 13400000, i32 848, i32 -1900564 }, %struct.dif_settings { i32 13400000, i32 852, i32 5505042 }, %struct.dif_settings { i32 13400000, i32 856, i32 -11665387 }, %struct.dif_settings { i32 13400000, i32 860, i32 20447106 }, %struct.dif_settings { i32 13400000, i32 864, i32 -30539451 }, %struct.dif_settings { i32 13400000, i32 868, i32 39910790 }, %struct.dif_settings { i32 13400000, i32 872, i32 -45022182 }, %struct.dif_settings { i32 13400000, i32 876, i32 42465787 }, %struct.dif_settings { i32 13400000, i32 880, i32 -28702718 }, %struct.dif_settings { i32 13400000, i32 884, i32 1963583 }, %struct.dif_settings { i32 13400000, i32 888, i32 37948139 }, %struct.dif_settings { i32 13400000, i32 892, i32 -88214322 }, %struct.dif_settings { i32 13400000, i32 896, i32 144116322 }, %struct.dif_settings { i32 13400000, i32 900, i32 -198641777 }, %struct.dif_settings { i32 13400000, i32 904, i32 244647300 }, %struct.dif_settings { i32 13400000, i32 908, i32 -275251691 }, %struct.dif_settings { i32 13400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13500000, i32 840, i32 65533 }, %struct.dif_settings { i32 13500000, i32 844, i32 262159 }, %struct.dif_settings { i32 13500000, i32 848, i32 -1376294 }, %struct.dif_settings { i32 13500000, i32 852, i32 4587581 }, %struct.dif_settings { i32 13500000, i32 856, i32 -10813500 }, %struct.dif_settings { i32 13500000, i32 860, i32 20643840 }, %struct.dif_settings { i32 13500000, i32 864, i32 -33292131 }, %struct.dif_settings { i32 13500000, i32 868, i32 46726728 }, %struct.dif_settings { i32 13500000, i32 872, i32 -57080998 }, %struct.dif_settings { i32 13500000, i32 876, i32 60291734 }, %struct.dif_settings { i32 13500000, i32 880, i32 -51640403 }, %struct.dif_settings { i32 13500000, i32 884, i32 28177975 }, %struct.dif_settings { i32 13500000, i32 888, i32 11275091 }, %struct.dif_settings { i32 13500000, i32 892, i32 -64031719 }, %struct.dif_settings { i32 13500000, i32 896, i32 124980030 }, %struct.dif_settings { i32 13500000, i32 900, i32 -185993539 }, %struct.dif_settings { i32 13500000, i32 904, i32 238355994 }, %struct.dif_settings { i32 13500000, i32 908, i32 -273547809 }, %struct.dif_settings { i32 13500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13600000, i32 840, i32 65533 }, %struct.dif_settings { i32 13600000, i32 844, i32 18 }, %struct.dif_settings { i32 13600000, i32 848, i32 -589875 }, %struct.dif_settings { i32 13600000, i32 852, i32 3080289 }, %struct.dif_settings { i32 13600000, i32 856, i32 -8650887 }, %struct.dif_settings { i32 13600000, i32 860, i32 18743422 }, %struct.dif_settings { i32 13600000, i32 864, i32 -32964632 }, %struct.dif_settings { i32 13600000, i32 868, i32 49938216 }, %struct.dif_settings { i32 13600000, i32 872, i32 -65600918 }, %struct.dif_settings { i32 13600000, i32 876, i32 75103088 }, %struct.dif_settings { i32 13600000, i32 880, i32 -72546541 }, %struct.dif_settings { i32 13600000, i32 884, i32 53474930 }, %struct.dif_settings { i32 13600000, i32 888, i32 -15725693 }, %struct.dif_settings { i32 13600000, i32 892, i32 -38800501 }, %struct.dif_settings { i32 13600000, i32 896, i32 104598532 }, %struct.dif_settings { i32 13600000, i32 900, i32 -172296715 }, %struct.dif_settings { i32 13600000, i32 904, i32 231474862 }, %struct.dif_settings { i32 13600000, i32 908, i32 -271712856 }, %struct.dif_settings { i32 13600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13700000, i32 840, i32 65533 }, %struct.dif_settings { i32 13700000, i32 844, i32 -196590 }, %struct.dif_settings { i32 13700000, i32 848, i32 327624 }, %struct.dif_settings { i32 13700000, i32 852, i32 1048696 }, %struct.dif_settings { i32 13700000, i32 856, i32 -5439682 }, %struct.dif_settings { i32 13700000, i32 860, i32 14811376 }, %struct.dif_settings { i32 13700000, i32 864, i32 -29753547 }, %struct.dif_settings { i32 13700000, i32 868, i32 49348631 }, %struct.dif_settings { i32 13700000, i32 872, i32 -70057642 }, %struct.dif_settings { i32 13700000, i32 876, i32 86113407 }, %struct.dif_settings { i32 13700000, i32 880, i32 -90438088 }, %struct.dif_settings { i32 13700000, i32 884, i32 77199086 }, %struct.dif_settings { i32 13700000, i32 888, i32 -42333316 }, %struct.dif_settings { i32 13700000, i32 892, i32 -12979419 }, %struct.dif_settings { i32 13700000, i32 896, i32 83102899 }, %struct.dif_settings { i32 13700000, i32 900, i32 -157616841 }, %struct.dif_settings { i32 13700000, i32 904, i32 224003903 }, %struct.dif_settings { i32 13700000, i32 908, i32 -269681294 }, %struct.dif_settings { i32 13700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13800000, i32 840, i32 131070 }, %struct.dif_settings { i32 13800000, i32 844, i32 -393202 }, %struct.dif_settings { i32 13800000, i32 848, i32 1179595 }, %struct.dif_settings { i32 13800000, i32 852, i32 -1048449 }, %struct.dif_settings { i32 13800000, i32 856, i32 -1573095 }, %struct.dif_settings { i32 13800000, i32 860, i32 9371978 }, %struct.dif_settings { i32 13800000, i32 864, i32 -23789933 }, %struct.dif_settings { i32 13800000, i32 868, i32 45089029 }, %struct.dif_settings { i32 13800000, i32 872, i32 -70057937 }, %struct.dif_settings { i32 13800000, i32 876, i32 92667319 }, %struct.dif_settings { i32 13800000, i32 880, i32 -104790747 }, %struct.dif_settings { i32 13800000, i32 884, i32 98498472 }, %struct.dif_settings { i32 13800000, i32 888, i32 -68023492 }, %struct.dif_settings { i32 13800000, i32 892, i32 13103849 }, %struct.dif_settings { i32 13800000, i32 896, i32 60820808 }, %struct.dif_settings { i32 13800000, i32 900, i32 -142084988 }, %struct.dif_settings { i32 13800000, i32 904, i32 215943117 }, %struct.dif_settings { i32 13800000, i32 908, i32 -267518660 }, %struct.dif_settings { i32 13800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 13900000, i32 840, i32 65536 }, %struct.dif_settings { i32 13900000, i32 844, i32 -524280 }, %struct.dif_settings { i32 13900000, i32 848, i32 1834967 }, %struct.dif_settings { i32 13900000, i32 852, i32 -3080074 }, %struct.dif_settings { i32 13900000, i32 856, i32 2555662 }, %struct.dif_settings { i32 13900000, i32 860, i32 2883972 }, %struct.dif_settings { i32 13900000, i32 864, i32 -15729136 }, %struct.dif_settings { i32 13900000, i32 868, i32 37421536 }, %struct.dif_settings { i32 13900000, i32 872, i32 -65536250 }, %struct.dif_settings { i32 13900000, i32 876, i32 94568201 }, %struct.dif_settings { i32 13900000, i32 880, i32 -114883612 }, %struct.dif_settings { i32 13900000, i32 884, i32 116717723 }, %struct.dif_settings { i32 13900000, i32 888, i32 -92140859 }, %struct.dif_settings { i32 13900000, i32 892, i32 38925017 }, %struct.dif_settings { i32 13900000, i32 896, i32 37948867 }, %struct.dif_settings { i32 13900000, i32 900, i32 -125701156 }, %struct.dif_settings { i32 13900000, i32 904, i32 207358041 }, %struct.dif_settings { i32 13900000, i32 908, i32 -265159418 }, %struct.dif_settings { i32 13900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14000000, i32 840, i32 65537 }, %struct.dif_settings { i32 14000000, i32 844, i32 -524287 }, %struct.dif_settings { i32 14000000, i32 848, i32 2228200 }, %struct.dif_settings { i32 14000000, i32 852, i32 -4587427 }, %struct.dif_settings { i32 14000000, i32 856, i32 6356767 }, %struct.dif_settings { i32 14000000, i32 860, i32 -3931752 }, %struct.dif_settings { i32 14000000, i32 864, i32 -6226507 }, %struct.dif_settings { i32 14000000, i32 868, i32 26870426 }, %struct.dif_settings { i32 14000000, i32 872, i32 -57016854 }, %struct.dif_settings { i32 14000000, i32 876, i32 91553895 }, %struct.dif_settings { i32 14000000, i32 880, i32 -120323457 }, %struct.dif_settings { i32 14000000, i32 884, i32 131398080 }, %struct.dif_settings { i32 14000000, i32 888, i32 -114161126 }, %struct.dif_settings { i32 14000000, i32 892, i32 64156403 }, %struct.dif_settings { i32 14000000, i32 896, i32 14618146 }, %struct.dif_settings { i32 14000000, i32 900, i32 -108596415 }, %struct.dif_settings { i32 14000000, i32 904, i32 198248674 }, %struct.dif_settings { i32 14000000, i32 908, i32 -262603567 }, %struct.dif_settings { i32 14000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14100000, i32 840, i32 2 }, %struct.dif_settings { i32 14100000, i32 844, i32 -393222 }, %struct.dif_settings { i32 14100000, i32 848, i32 2228221 }, %struct.dif_settings { i32 14100000, i32 852, i32 -5504968 }, %struct.dif_settings { i32 14100000, i32 856, i32 9371466 }, %struct.dif_settings { i32 14100000, i32 860, i32 -10288764 }, %struct.dif_settings { i32 14100000, i32 864, i32 3865995 }, %struct.dif_settings { i32 14100000, i32 868, i32 14287654 }, %struct.dif_settings { i32 14100000, i32 872, i32 -44958483 }, %struct.dif_settings { i32 14100000, i32 876, i32 83952064 }, %struct.dif_settings { i32 14100000, i32 880, i32 -120913661 }, %struct.dif_settings { i32 14100000, i32 884, i32 142015248 }, %struct.dif_settings { i32 14100000, i32 888, i32 -133560002 }, %struct.dif_settings { i32 14100000, i32 892, i32 88339256 }, %struct.dif_settings { i32 14100000, i32 896, i32 -8778138 }, %struct.dif_settings { i32 14100000, i32 900, i32 -90901838 }, %struct.dif_settings { i32 14100000, i32 904, i32 188680551 }, %struct.dif_settings { i32 14100000, i32 908, i32 -259916645 }, %struct.dif_settings { i32 14100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14200000, i32 840, i32 3 }, %struct.dif_settings { i32 14200000, i32 844, i32 -262157 }, %struct.dif_settings { i32 14200000, i32 848, i32 1900563 }, %struct.dif_settings { i32 14200000, i32 852, i32 -5636085 }, %struct.dif_settings { i32 14200000, i32 856, i32 11206537 }, %struct.dif_settings { i32 14200000, i32 860, i32 -15531702 }, %struct.dif_settings { i32 14200000, i32 864, i32 13565333 }, %struct.dif_settings { i32 14200000, i32 868, i32 656251 }, %struct.dif_settings { i32 14200000, i32 872, i32 -30016483 }, %struct.dif_settings { i32 14200000, i32 876, i32 72090373 }, %struct.dif_settings { i32 14200000, i32 880, i32 -116588674 }, %struct.dif_settings { i32 14200000, i32 884, i32 148241537 }, %struct.dif_settings { i32 14200000, i32 888, i32 -149944268 }, %struct.dif_settings { i32 14200000, i32 892, i32 111145895 }, %struct.dif_settings { i32 14200000, i32 896, i32 -32108915 }, %struct.dif_settings { i32 14200000, i32 900, i32 -72682959 }, %struct.dif_settings { i32 14200000, i32 904, i32 178588137 }, %struct.dif_settings { i32 14200000, i32 908, i32 -257033115 }, %struct.dif_settings { i32 14200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14300000, i32 840, i32 3 }, %struct.dif_settings { i32 14300000, i32 844, i32 -17 }, %struct.dif_settings { i32 14300000, i32 848, i32 1310757 }, %struct.dif_settings { i32 14300000, i32 852, i32 -4915235 }, %struct.dif_settings { i32 14300000, i32 856, i32 11730902 }, %struct.dif_settings { i32 14300000, i32 860, i32 -19201808 }, %struct.dif_settings { i32 14300000, i32 864, i32 22085075 }, %struct.dif_settings { i32 14300000, i32 868, i32 -13106287 }, %struct.dif_settings { i32 14300000, i32 872, i32 -13173883 }, %struct.dif_settings { i32 14300000, i32 876, i32 56493094 }, %struct.dif_settings { i32 14300000, i32 880, i32 -107676162 }, %struct.dif_settings { i32 14300000, i32 884, i32 149880331 }, %struct.dif_settings { i32 14300000, i32 888, i32 -162986238 }, %struct.dif_settings { i32 14300000, i32 892, i32 132248638 }, %struct.dif_settings { i32 14300000, i32 896, i32 -55177577 }, %struct.dif_settings { i32 14300000, i32 900, i32 -54070850 }, %struct.dif_settings { i32 14300000, i32 904, i32 168036967 }, %struct.dif_settings { i32 14300000, i32 908, i32 -254018512 }, %struct.dif_settings { i32 14300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14400000, i32 840, i32 3 }, %struct.dif_settings { i32 14400000, i32 844, i32 196590 }, %struct.dif_settings { i32 14400000, i32 848, i32 458803 }, %struct.dif_settings { i32 14400000, i32 852, i32 -3539020 }, %struct.dif_settings { i32 14400000, i32 856, i32 10747943 }, %struct.dif_settings { i32 14400000, i32 860, i32 -20774786 }, %struct.dif_settings { i32 14400000, i32 864, i32 28638783 }, %struct.dif_settings { i32 14400000, i32 868, i32 -25820311 }, %struct.dif_settings { i32 14400000, i32 872, i32 4520750 }, %struct.dif_settings { i32 14400000, i32 876, i32 38077720 }, %struct.dif_settings { i32 14400000, i32 880, i32 -94372720 }, %struct.dif_settings { i32 14400000, i32 884, i32 146931617 }, %struct.dif_settings { i32 14400000, i32 888, i32 -172227154 }, %struct.dif_settings { i32 14400000, i32 892, i32 151188732 }, %struct.dif_settings { i32 14400000, i32 896, i32 -77590907 }, %struct.dif_settings { i32 14400000, i32 900, i32 -35131046 }, %struct.dif_settings { i32 14400000, i32 904, i32 157092578 }, %struct.dif_settings { i32 14400000, i32 908, i32 -250807301 }, %struct.dif_settings { i32 14400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14500000, i32 840, i32 -65534 }, %struct.dif_settings { i32 14500000, i32 844, i32 393199 }, %struct.dif_settings { i32 14500000, i32 848, i32 -393160 }, %struct.dif_settings { i32 14500000, i32 852, i32 -1704043 }, %struct.dif_settings { i32 14500000, i32 856, i32 8519796 }, %struct.dif_settings { i32 14500000, i32 860, i32 -20185088 }, %struct.dif_settings { i32 14500000, i32 864, i32 32571088 }, %struct.dif_settings { i32 14500000, i32 868, i32 -36568316 }, %struct.dif_settings { i32 14500000, i32 872, i32 21887773 }, %struct.dif_settings { i32 14500000, i32 876, i32 17696206 }, %struct.dif_settings { i32 14500000, i32 880, i32 -77268159 }, %struct.dif_settings { i32 14500000, i32 884, i32 139329851 }, %struct.dif_settings { i32 14500000, i32 888, i32 -177667010 }, %struct.dif_settings { i32 14500000, i32 892, i32 167835101 }, %struct.dif_settings { i32 14500000, i32 896, i32 -99283371 }, %struct.dif_settings { i32 14500000, i32 900, i32 -15994620 }, %struct.dif_settings { i32 14500000, i32 904, i32 145754969 }, %struct.dif_settings { i32 14500000, i32 908, i32 -247465018 }, %struct.dif_settings { i32 14500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14600000, i32 840, i32 -65535 }, %struct.dif_settings { i32 14600000, i32 844, i32 589812 }, %struct.dif_settings { i32 14600000, i32 848, i32 -1245131 }, %struct.dif_settings { i32 14600000, i32 852, i32 393091 }, %struct.dif_settings { i32 14600000, i32 856, i32 5243060 }, %struct.dif_settings { i32 14600000, i32 860, i32 -17367166 }, %struct.dif_settings { i32 14600000, i32 864, i32 33554298 }, %struct.dif_settings { i32 14600000, i32 868, i32 -44563863 }, %struct.dif_settings { i32 14600000, i32 872, i32 37878611 }, %struct.dif_settings { i32 14600000, i32 876, i32 -3537344 }, %struct.dif_settings { i32 14600000, i32 880, i32 -57017826 }, %struct.dif_settings { i32 14600000, i32 884, i32 127533771 }, %struct.dif_settings { i32 14600000, i32 888, i32 -178978118 }, %struct.dif_settings { i32 14600000, i32 892, i32 181794528 }, %struct.dif_settings { i32 14600000, i32 896, i32 -119992822 }, %struct.dif_settings { i32 14600000, i32 900, i32 3272893 }, %struct.dif_settings { i32 14600000, i32 904, i32 134024139 }, %struct.dif_settings { i32 14600000, i32 908, i32 -243991663 }, %struct.dif_settings { i32 14600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14700000, i32 840, i32 -1 }, %struct.dif_settings { i32 14700000, i32 844, i32 655355 }, %struct.dif_settings { i32 14700000, i32 848, i32 -1834966 }, %struct.dif_settings { i32 14700000, i32 852, i32 2490242 }, %struct.dif_settings { i32 14700000, i32 856, i32 1310944 }, %struct.dif_settings { i32 14700000, i32 860, i32 -12779760 }, %struct.dif_settings { i32 14700000, i32 864, i32 31522864 }, %struct.dif_settings { i32 14700000, i32 868, i32 -49151580 }, %struct.dif_settings { i32 14700000, i32 872, i32 51510221 }, %struct.dif_settings { i32 14700000, i32 876, i32 -24639894 }, %struct.dif_settings { i32 14700000, i32 880, i32 -34473681 }, %struct.dif_settings { i32 14700000, i32 884, i32 111805513 }, %struct.dif_settings { i32 14700000, i32 888, i32 -176291544 }, %struct.dif_settings { i32 14700000, i32 892, i32 192870401 }, %struct.dif_settings { i32 14700000, i32 896, i32 -139457118 }, %struct.dif_settings { i32 14700000, i32 900, i32 22474886 }, %struct.dif_settings { i32 14700000, i32 904, i32 121965625 }, %struct.dif_settings { i32 14700000, i32 908, i32 -240321700 }, %struct.dif_settings { i32 14700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14800000, i32 840, i32 65534 }, %struct.dif_settings { i32 14800000, i32 844, i32 524290 }, %struct.dif_settings { i32 14800000, i32 848, i32 -2162663 }, %struct.dif_settings { i32 14800000, i32 852, i32 4194194 }, %struct.dif_settings { i32 14800000, i32 856, i32 -2752271 }, %struct.dif_settings { i32 14800000, i32 860, i32 -6881610 }, %struct.dif_settings { i32 14800000, i32 864, i32 26673377 }, %struct.dif_settings { i32 14800000, i32 868, i32 -50003774 }, %struct.dif_settings { i32 14800000, i32 872, i32 61930628 }, %struct.dif_settings { i32 14800000, i32 876, i32 -44497335 }, %struct.dif_settings { i32 14800000, i32 880, i32 -10618753 }, %struct.dif_settings { i32 14800000, i32 884, i32 92603818 }, %struct.dif_settings { i32 14800000, i32 888, i32 -169541743 }, %struct.dif_settings { i32 14800000, i32 892, i32 200931644 }, %struct.dif_settings { i32 14800000, i32 896, i32 -157479648 }, %struct.dif_settings { i32 14800000, i32 900, i32 41545822 }, %struct.dif_settings { i32 14800000, i32 904, i32 109579427 }, %struct.dif_settings { i32 14800000, i32 908, i32 -236520664 }, %struct.dif_settings { i32 14800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 14900000, i32 840, i32 65533 }, %struct.dif_settings { i32 14900000, i32 844, i32 393225 }, %struct.dif_settings { i32 14900000, i32 848, i32 -2162684 }, %struct.dif_settings { i32 14900000, i32 852, i32 5373872 }, %struct.dif_settings { i32 14900000, i32 856, i32 -6487832 }, %struct.dif_settings { i32 14900000, i32 860, i32 -196996 }, %struct.dif_settings { i32 14900000, i32 864, i32 19399040 }, %struct.dif_settings { i32 14900000, i32 868, i32 -46989358 }, %struct.dif_settings { i32 14900000, i32 872, i32 68418926 }, %struct.dif_settings { i32 14900000, i32 876, i32 -62061089 }, %struct.dif_settings { i32 14900000, i32 880, i32 13760530 }, %struct.dif_settings { i32 14900000, i32 884, i32 70584036 }, %struct.dif_settings { i32 14900000, i32 888, i32 -158990853 }, %struct.dif_settings { i32 14900000, i32 892, i32 205781645 }, %struct.dif_settings { i32 14900000, i32 896, i32 -173994877 }, %struct.dif_settings { i32 14900000, i32 900, i32 60420166 }, %struct.dif_settings { i32 14900000, i32 904, i32 96931080 }, %struct.dif_settings { i32 14900000, i32 908, i32 -232588557 }, %struct.dif_settings { i32 14900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15000000, i32 840, i32 65533 }, %struct.dif_settings { i32 15000000, i32 844, i32 196623 }, %struct.dif_settings { i32 15000000, i32 848, i32 -1703953 }, %struct.dif_settings { i32 15000000, i32 852, i32 5767129 }, %struct.dif_settings { i32 15000000, i32 856, i32 -9436988 }, %struct.dif_settings { i32 15000000, i32 860, i32 6487656 }, %struct.dif_settings { i32 15000000, i32 864, i32 10355199 }, %struct.dif_settings { i32 15000000, i32 868, i32 -40501530 }, %struct.dif_settings { i32 15000000, i32 872, i32 70647421 }, %struct.dif_settings { i32 15000000, i32 876, i32 -76479184 }, %struct.dif_settings { i32 15000000, i32 880, i32 37550062 }, %struct.dif_settings { i32 15000000, i32 884, i32 46335983 }, %struct.dif_settings { i32 15000000, i32 888, i32 -144769936 }, %struct.dif_settings { i32 15000000, i32 892, i32 207420399 }, %struct.dif_settings { i32 15000000, i32 896, i32 -188675122 }, %struct.dif_settings { i32 15000000, i32 900, i32 78901311 }, %struct.dif_settings { i32 15000000, i32 904, i32 84086121 }, %struct.dif_settings { i32 15000000, i32 908, i32 -228459841 }, %struct.dif_settings { i32 15000000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15100000, i32 840, i32 65533 }, %struct.dif_settings { i32 15100000, i32 844, i32 -65518 }, %struct.dif_settings { i32 15100000, i32 848, i32 -1048612 }, %struct.dif_settings { i32 15100000, i32 852, i32 5308422 }, %struct.dif_settings { i32 15100000, i32 856, i32 -11272055 }, %struct.dif_settings { i32 15100000, i32 860, i32 12516988 }, %struct.dif_settings { i32 15100000, i32 864, i32 393811 }, %struct.dif_settings { i32 15100000, i32 868, i32 -30933491 }, %struct.dif_settings { i32 15100000, i32 872, i32 68419490 }, %struct.dif_settings { i32 15100000, i32 876, i32 -86965178 }, %struct.dif_settings { i32 15100000, i32 880, i32 59832338 }, %struct.dif_settings { i32 15100000, i32 884, i32 20646083 }, %struct.dif_settings { i32 15100000, i32 888, i32 -127337738 }, %struct.dif_settings { i32 15100000, i32 892, i32 205782367 }, %struct.dif_settings { i32 15100000, i32 896, i32 -201520382 }, %struct.dif_settings { i32 15100000, i32 900, i32 96989254 }, %struct.dif_settings { i32 15100000, i32 904, i32 70979012 }, %struct.dif_settings { i32 15100000, i32 908, i32 -224265589 }, %struct.dif_settings { i32 15100000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15200000, i32 840, i32 131070 }, %struct.dif_settings { i32 15200000, i32 844, i32 -262126 }, %struct.dif_settings { i32 15200000, i32 848, i32 -262194 }, %struct.dif_settings { i32 15200000, i32 852, i32 4128819 }, %struct.dif_settings { i32 15200000, i32 856, i32 -11665345 }, %struct.dif_settings { i32 15200000, i32 860, i32 17235638 }, %struct.dif_settings { i32 15200000, i32 864, i32 -9567626 }, %struct.dif_settings { i32 15200000, i32 868, i32 -19006122 }, %struct.dif_settings { i32 15200000, i32 872, i32 61866188 }, %struct.dif_settings { i32 15200000, i32 876, i32 -93060311 }, %struct.dif_settings { i32 15200000, i32 880, i32 79689855 }, %struct.dif_settings { i32 15200000, i32 884, i32 -5633699 }, %struct.dif_settings { i32 15200000, i32 888, i32 -107021931 }, %struct.dif_settings { i32 15200000, i32 892, i32 200933080 }, %struct.dif_settings { i32 15200000, i32 896, i32 -212268513 }, %struct.dif_settings { i32 15200000, i32 900, i32 114487390 }, %struct.dif_settings { i32 15200000, i32 904, i32 57675291 }, %struct.dif_settings { i32 15200000, i32 908, i32 -219874728 }, %struct.dif_settings { i32 15200000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15300000, i32 840, i32 131071 }, %struct.dif_settings { i32 15300000, i32 844, i32 -458737 }, %struct.dif_settings { i32 15300000, i32 848, i32 655304 }, %struct.dif_settings { i32 15300000, i32 852, i32 2424921 }, %struct.dif_settings { i32 15300000, i32 856, i32 -10551314 }, %struct.dif_settings { i32 15300000, i32 860, i32 20119312 }, %struct.dif_settings { i32 15300000, i32 864, i32 -18677147 }, %struct.dif_settings { i32 15300000, i32 868, i32 -5571377 }, %struct.dif_settings { i32 15300000, i32 872, i32 51446251 }, %struct.dif_settings { i32 15300000, i32 876, i32 -94371352 }, %struct.dif_settings { i32 15300000, i32 880, i32 96336175 }, %struct.dif_settings { i32 15300000, i32 884, i32 -31782474 }, %struct.dif_settings { i32 15300000, i32 888, i32 -84215726 }, %struct.dif_settings { i32 15300000, i32 892, i32 192806997 }, %struct.dif_settings { i32 15300000, i32 896, i32 -220919511 }, %struct.dif_settings { i32 15300000, i32 900, i32 131330182 }, %struct.dif_settings { i32 15300000, i32 904, i32 44240492 }, %struct.dif_settings { i32 15300000, i32 908, i32 -215352796 }, %struct.dif_settings { i32 15300000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15400000, i32 840, i32 65537 }, %struct.dif_settings { i32 15400000, i32 844, i32 -524279 }, %struct.dif_settings { i32 15400000, i32 848, i32 1441738 }, %struct.dif_settings { i32 15400000, i32 852, i32 327796 }, %struct.dif_settings { i32 15400000, i32 856, i32 -8257633 }, %struct.dif_settings { i32 15400000, i32 860, i32 20840322 }, %struct.dif_settings { i32 15400000, i32 864, i32 -26148319 }, %struct.dif_settings { i32 15400000, i32 868, i32 8191104 }, %struct.dif_settings { i32 15400000, i32 872, i32 37815021 }, %struct.dif_settings { i32 15400000, i32 876, i32 -90963824 }, %struct.dif_settings { i32 15400000, i32 880, i32 109115934 }, %struct.dif_settings { i32 15400000, i32 884, i32 -56948275 }, %struct.dif_settings { i32 15400000, i32 888, i32 -59508938 }, %struct.dif_settings { i32 15400000, i32 892, i32 181731792 }, %struct.dif_settings { i32 15400000, i32 896, i32 -227276768 }, %struct.dif_settings { i32 15400000, i32 900, i32 147452093 }, %struct.dif_settings { i32 15400000, i32 904, i32 30674617 }, %struct.dif_settings { i32 15400000, i32 908, i32 -210634255 }, %struct.dif_settings { i32 15400000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15500000, i32 840, i32 2 }, %struct.dif_settings { i32 15500000, i32 844, i32 -524286 }, %struct.dif_settings { i32 15500000, i32 848, i32 2031573 }, %struct.dif_settings { i32 15500000, i32 852, i32 -1769345 }, %struct.dif_settings { i32 15500000, i32 856, i32 -4915365 }, %struct.dif_settings { i32 15500000, i32 860, i32 19398656 }, %struct.dif_settings { i32 15500000, i32 864, i32 -31194704 }, %struct.dif_settings { i32 15500000, i32 868, i32 21429360 }, %struct.dif_settings { i32 15500000, i32 872, i32 21824454 }, %struct.dif_settings { i32 15500000, i32 876, i32 -82772174 }, %struct.dif_settings { i32 15500000, i32 880, i32 117570369 }, %struct.dif_settings { i32 15500000, i32 884, i32 -80279135 }, %struct.dif_settings { i32 15500000, i32 888, i32 -33491388 }, %struct.dif_settings { i32 15500000, i32 892, i32 167772997 }, %struct.dif_settings { i32 15500000, i32 896, i32 -231405816 }, %struct.dif_settings { i32 15500000, i32 900, i32 162722052 }, %struct.dif_settings { i32 15500000, i32 904, i32 17108735 }, %struct.dif_settings { i32 15500000, i32 908, i32 -205850178 }, %struct.dif_settings { i32 15500000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15600000, i32 840, i32 3 }, %struct.dif_settings { i32 15600000, i32 844, i32 -393221 }, %struct.dif_settings { i32 15600000, i32 848, i32 2293734 }, %struct.dif_settings { i32 15600000, i32 852, i32 -3604358 }, %struct.dif_settings { i32 15600000, i32 856, i32 -983255 }, %struct.dif_settings { i32 15600000, i32 860, i32 15859838 }, %struct.dif_settings { i32 15600000, i32 864, i32 -33488613 }, %struct.dif_settings { i32 15600000, i32 868, i32 32963742 }, %struct.dif_settings { i32 15600000, i32 872, i32 4457575 }, %struct.dif_settings { i32 15600000, i32 876, i32 -70451746 }, %struct.dif_settings { i32 15600000, i32 880, i32 121175184 }, %struct.dif_settings { i32 15600000, i32 884, i32 -101250764 }, %struct.dif_settings { i32 15600000, i32 888, i32 -6687358 }, %struct.dif_settings { i32 15600000, i32 892, i32 151127216 }, %struct.dif_settings { i32 15600000, i32 896, i32 -233175583 }, %struct.dif_settings { i32 15600000, i32 900, i32 177074522 }, %struct.dif_settings { i32 15600000, i32 904, i32 3411777 }, %struct.dif_settings { i32 15600000, i32 908, i32 -200935029 }, %struct.dif_settings { i32 15600000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15700000, i32 840, i32 3 }, %struct.dif_settings { i32 15700000, i32 844, i32 -196620 }, %struct.dif_settings { i32 15700000, i32 848, i32 2162682 }, %struct.dif_settings { i32 15700000, i32 852, i32 -4980636 }, %struct.dif_settings { i32 15700000, i32 856, i32 3145489 }, %struct.dif_settings { i32 15700000, i32 860, i32 10748144 }, %struct.dif_settings { i32 15700000, i32 864, i32 -32702354 }, %struct.dif_settings { i32 15700000, i32 868, i32 42073353 }, %struct.dif_settings { i32 15700000, i32 872, i32 -13237047 }, %struct.dif_settings { i32 15700000, i32 876, i32 -54526814 }, %struct.dif_settings { i32 15700000, i32 880, i32 119995902 }, %struct.dif_settings { i32 15700000, i32 884, i32 -119011192 }, %struct.dif_settings { i32 15700000, i32 888, i32 20247795 }, %struct.dif_settings { i32 15700000, i32 892, i32 132187660 }, %struct.dif_settings { i32 15700000, i32 896, i32 -232586065 }, %struct.dif_settings { i32 15700000, i32 900, i32 190443966 }, %struct.dif_settings { i32 15700000, i32 904, i32 -10219651 }, %struct.dif_settings { i32 15700000, i32 908, i32 -195888807 }, %struct.dif_settings { i32 15700000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15800000, i32 840, i32 3 }, %struct.dif_settings { i32 15800000, i32 844, i32 65520 }, %struct.dif_settings { i32 15800000, i32 848, i32 1703952 }, %struct.dif_settings { i32 15800000, i32 852, i32 -5636031 }, %struct.dif_settings { i32 15800000, i32 856, i32 6815507 }, %struct.dif_settings { i32 15800000, i32 860, i32 4391242 }, %struct.dif_settings { i32 15800000, i32 864, i32 -28901447 }, %struct.dif_settings { i32 15800000, i32 868, i32 47971752 }, %struct.dif_settings { i32 15800000, i32 872, i32 -30079771 }, %struct.dif_settings { i32 15800000, i32 876, i32 -35849331 }, %struct.dif_settings { i32 15800000, i32 880, i32 113901438 }, %struct.dif_settings { i32 15800000, i32 884, i32 -133101662 }, %struct.dif_settings { i32 15800000, i32 888, i32 46789786 }, %struct.dif_settings { i32 15800000, i32 892, i32 111085395 }, %struct.dif_settings { i32 15800000, i32 896, i32 -229637261 }, %struct.dif_settings { i32 15800000, i32 900, i32 202699313 }, %struct.dif_settings { i32 15800000, i32 904, i32 -23916621 }, %struct.dif_settings { i32 15800000, i32 908, i32 -190711513 }, %struct.dif_settings { i32 15800000, i32 912, i32 286064640 }, %struct.dif_settings { i32 15900000, i32 840, i32 -65534 }, %struct.dif_settings { i32 15900000, i32 844, i32 262126 }, %struct.dif_settings { i32 15900000, i32 848, i32 983075 }, %struct.dif_settings { i32 15900000, i32 852, i32 -5505002 }, %struct.dif_settings { i32 15900000, i32 856, i32 9699121 }, %struct.dif_settings { i32 15900000, i32 860, i32 -2358908 }, %struct.dif_settings { i32 15900000, i32 864, i32 -22610167 }, %struct.dif_settings { i32 15900000, i32 868, i32 50200176 }, %struct.dif_settings { i32 15900000, i32 872, i32 -45022022 }, %struct.dif_settings { i32 15900000, i32 876, i32 -15336788 }, %struct.dif_settings { i32 15900000, i32 880, i32 103219459 }, %struct.dif_settings { i32 15900000, i32 884, i32 -143128952 }, %struct.dif_settings { i32 15900000, i32 888, i32 72217721 }, %struct.dif_settings { i32 15900000, i32 892, i32 88279171 }, %struct.dif_settings { i32 15900000, i32 896, i32 -224394703 }, %struct.dif_settings { i32 15900000, i32 900, i32 213840562 }, %struct.dif_settings { i32 15900000, i32 904, i32 -37482525 }, %struct.dif_settings { i32 15900000, i32 908, i32 -185403147 }, %struct.dif_settings { i32 15900000, i32 912, i32 286064640 }, %struct.dif_settings { i32 16000000, i32 840, i32 -65535 }, %struct.dif_settings { i32 16000000, i32 844, i32 458735 }, %struct.dif_settings { i32 16000000, i32 848, i32 131121 }, %struct.dif_settings { i32 16000000, i32 852, i32 -4522008 }, %struct.dif_settings { i32 16000000, i32 856, i32 11403110 }, %struct.dif_settings { i32 16000000, i32 860, i32 -8846952 }, %struct.dif_settings { i32 16000000, i32 864, i32 -14221714 }, %struct.dif_settings { i32 16000000, i32 868, i32 48627541 }, %struct.dif_settings { i32 16000000, i32 872, i32 -57080758 }, %struct.dif_settings { i32 16000000, i32 876, i32 6027785 }, %struct.dif_settings { i32 16000000, i32 880, i32 88408703 }, %struct.dif_settings { i32 16000000, i32 884, i32 -148699839 }, %struct.dif_settings { i32 16000000, i32 888, i32 96007312 }, %struct.dif_settings { i32 16000000, i32 892, i32 64096663 }, %struct.dif_settings { i32 16000000, i32 896, i32 -216858389 }, %struct.dif_settings { i32 16000000, i32 900, i32 223736641 }, %struct.dif_settings { i32 16000000, i32 904, i32 -50982898 }, %struct.dif_settings { i32 16000000, i32 908, i32 -180029245 }, %struct.dif_settings { i32 16000000, i32 912, i32 286064640 }], [7476 x i8] zeroinitializer }, align 32
@cx231xx_dif_set_standard.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx231xx_dif_set_standard\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: setStandard to %x\0A\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_tuner_post_channel_change.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 2, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cx231xx_tuner_post_channel_change\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: dev->tuner_type =0%d\0A\00", [38 x i8] zeroinitializer }, align 32
@cx231xx_set_power_mode.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 2, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_set_power_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mode = %d, No Change req.\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_start_stream.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 2, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx231xx_start_stream\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ep_mask = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_stop_stream.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.57, i8 2, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx231xx_stop_stream\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 2, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cx231xx_initialize_stream_xfer\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Audio enter HANC\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 2, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: set vanc registers\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 2, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: set hanc registers\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.63, i8 2, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set video registers\0A\00", [39 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.64, i8 2, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set ts1 registers\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.65, i8 2, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: MPEG\0A\00", [22 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.66, i8 2, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: BDA\0A\00", [23 x i8] zeroinitializer }, align 32
@cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.67, i8 2, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: set ts1 parallel mode registers\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_cx231xx_capture_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_capture_start = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_capture_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_capture_start to i32), ptr @__kstrtab_cx231xx_capture_start, ptr @__kstrtabns_cx231xx_capture_start }, section "___ksymtab_gpl+cx231xx_capture_start", align 4
@cx231xx_gpio_i2c_read_ack.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 2, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx231xx_gpio_i2c_read_ack\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No ACK after %d msec -GPIO I2C failed!\00", [57 x i8] zeroinitializer }, align 32
@switch.table.cx231xx_capture_start = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 8, i32 4, i32 16, i32 32, i32 1, i32 2, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.cx231xx_dif_set_standard = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 3, i32 3, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 15, i64 17, i64 19]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 83]
@__sancov_gen_cov_switch_values.81 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 73, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 146, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 155, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 162, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 403, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 566, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 584, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 614, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 634, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 644, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 676, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 721, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 796, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 832, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 976, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 983, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1010, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1037, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1221, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1351, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1368, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1541, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1561, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1595, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1639, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [14 x i8] c"Dif_set_array\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [43 x i8] c"../drivers/media/usb/cx231xx/cx231xx-dif.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 19, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1751, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2154, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2256, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2496, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2521, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2549, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2556, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2562, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2569, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2575, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2579, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2603, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2612, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [46 x i8] c"../drivers/media/usb/cx231xx/cx231xx-avcore.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2967, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [35 x i8] c"switch.table.cx231xx_capture_start\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [38 x i8] c"switch.table.cx231xx_dif_set_standard\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @__ksymtab_cx231xx_capture_start, ptr @__ksymtab_cx231xx_disable656, ptr @__ksymtab_cx231xx_enable656, ptr @__ksymtab_cx231xx_enable_i2c_port_3, ptr @__ksymtab_cx231xx_unmute_audio, ptr @cx231xx_set_audio_decoder_input._entry, ptr @cx231xx_set_audio_decoder_input._entry_ptr, ptr @cx231xx_set_decoder_video_input._entry, ptr @cx231xx_set_decoder_video_input._entry.21, ptr @cx231xx_set_decoder_video_input._entry.24, ptr @cx231xx_set_decoder_video_input._entry.27, ptr @cx231xx_set_decoder_video_input._entry.29, ptr @cx231xx_set_decoder_video_input._entry.31, ptr @cx231xx_set_decoder_video_input._entry_ptr, ptr @cx231xx_set_decoder_video_input._entry_ptr.23, ptr @cx231xx_set_decoder_video_input._entry_ptr.26, ptr @cx231xx_set_decoder_video_input._entry_ptr.28, ptr @cx231xx_set_decoder_video_input._entry_ptr.30, ptr @cx231xx_set_decoder_video_input._entry_ptr.32, ptr @cx231xx_set_video_input_mux._entry, ptr @cx231xx_set_video_input_mux._entry.14, ptr @cx231xx_set_video_input_mux._entry.16, ptr @cx231xx_set_video_input_mux._entry_ptr, ptr @cx231xx_set_video_input_mux._entry_ptr.15, ptr @cx231xx_set_video_input_mux._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @Dif_set_array, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @switch.table.cx231xx_capture_start, ptr @switch.table.cx231xx_dif_set_standard], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_video_input_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_video_input_mux._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_video_input_mux._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_decoder_video_input._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_set_audio_decoder_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Dif_set_array to i32), i32 29868, i32 37344, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx231xx_capture_start to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx231xx_dif_set_standard to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @initGPIO(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %temp.i43 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 64, i16 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @initGPIO.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@initGPIO, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 8
  %conv = and i32 %3, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @initGPIO.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i42 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 64, i16 noundef zeroext 7, i8 noundef zeroext 1, i32 noundef 244, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i43) #6
  %6 = ptrtoint ptr %temp.i43 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %temp.i43, align 4
  %call.i44 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 64, i16 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull %temp.i43, i8 noundef zeroext 1) #6
  %7 = ptrtoint ptr %temp.i43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i43) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @initGPIO.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@initGPIO, %if.then20)) #6
          to label %do.end25 [label %if.then20], !srcloc !175

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev21, align 8
  %conv22 = and i32 %8, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @initGPIO.__UNIQUE_ID_ddebug304, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %conv22) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.end
  %call26 = call i32 @cx231xx_capture_start(ptr noundef %dev, i32 noundef 1, i8 noundef zeroext 2)
  %call27 = call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 24, i32 noundef 83951104) #6
  %call28 = call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 104, i32 noundef -131073) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_send_gpio_cmd(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_capture_start(ptr noundef %dev, i32 noundef %start, i8 noundef zeroext %media_type) #0 align 64 {
entry:
  %value.i34 = alloca [4 x i8], align 4
  %value.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_num = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 11
  %0 = ptrtoint ptr %config_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %media_type)
  %2 = icmp ult i8 %media_type, 7
  %or.cond = and i1 %tobool.not, %2
  br i1 %or.cond, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = sext i8 %media_type to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.cx231xx_capture_start, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %ep_mask.0 = phi i32 [ -1, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool6.not = icmp eq i32 %start, 0
  br i1 %tobool6.not, label %if.then19, label %if.then7

if.then7:                                         ; preds = %if.end
  %conv8 = zext i8 %media_type to i32
  %call = tail call i32 @cx231xx_initialize_stream_xfer(ptr noundef %dev, i32 noundef %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.then14

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %value.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_start_stream.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_capture_start, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %dev4.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_start_stream.__UNIQUE_ID_ddebug326, ptr noundef %7, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %ep_mask.0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then14
  %call5.i = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 24, ptr noundef nonnull %value.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i.cx231xx_start_stream.exit_crit_edge, label %if.end7.i

do.end.i.cx231xx_start_stream.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_start_stream.exit

if.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #6
  %or.i = or i32 %10, %ep_mask.0
  %conv.i = trunc i32 %or.i to i8
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %value.i, align 4
  %shr.i = lshr i32 %or.i, 8
  %conv9.i = trunc i32 %shr.i to i8
  %arrayidx10.i = getelementptr inbounds [4 x i8], ptr %value.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %or.i, 16
  %conv12.i = trunc i32 %shr11.i to i8
  %arrayidx13.i = getelementptr inbounds [4 x i8], ptr %value.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv12.i, ptr %arrayidx13.i, align 2
  %shr14.i = lshr i32 %or.i, 24
  %conv15.i = trunc i32 %shr14.i to i8
  %arrayidx16.i = getelementptr inbounds [4 x i8], ptr %value.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %call18.i = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 24, ptr noundef nonnull %value.i, i32 noundef 4) #6
  br label %cx231xx_start_stream.exit

cx231xx_start_stream.exit:                        ; preds = %if.end7.i, %do.end.i.cx231xx_start_stream.exit_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.end7.i ], [ %call5.i, %do.end.i.cx231xx_start_stream.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i34) #6
  %15 = ptrtoint ptr %value.i34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %value.i34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_stop_stream.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_capture_start, %if.then.i36)) #6
          to label %do.end.i39 [label %if.then.i36], !srcloc !175

if.then.i36:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %dev4.i35 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev4.i35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4.i35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_stop_stream.__UNIQUE_ID_ddebug327, ptr noundef %17, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %ep_mask.0) #6
  br label %do.end.i39

do.end.i39:                                       ; preds = %if.then.i36, %if.then19
  %call5.i37 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 24, ptr noundef nonnull %value.i34, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i37)
  %cmp.i38 = icmp slt i32 %call5.i37, 0
  br i1 %cmp.i38, label %do.end.i39.cx231xx_stop_stream.exit_crit_edge, label %if.end7.i51

do.end.i39.cx231xx_stop_stream.exit_crit_edge:    ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_stop_stream.exit

if.end7.i51:                                      ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %value.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i34, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #6
  %neg.i = xor i32 %ep_mask.0, -1
  %and.i = and i32 %20, %neg.i
  %conv.i40 = trunc i32 %and.i to i8
  %21 = ptrtoint ptr %value.i34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i40, ptr %value.i34, align 4
  %shr.i41 = lshr i32 %and.i, 8
  %conv9.i42 = trunc i32 %shr.i41 to i8
  %arrayidx10.i43 = getelementptr inbounds [4 x i8], ptr %value.i34, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx10.i43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i42, ptr %arrayidx10.i43, align 1
  %shr11.i44 = lshr i32 %and.i, 16
  %conv12.i45 = trunc i32 %shr11.i44 to i8
  %arrayidx13.i46 = getelementptr inbounds [4 x i8], ptr %value.i34, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx13.i46 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12.i45, ptr %arrayidx13.i46, align 2
  %shr14.i47 = lshr i32 %and.i, 24
  %conv15.i48 = trunc i32 %shr14.i47 to i8
  %arrayidx16.i49 = getelementptr inbounds [4 x i8], ptr %value.i34, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx16.i49 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15.i48, ptr %arrayidx16.i49, align 1
  %call18.i50 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 24, ptr noundef nonnull %value.i34, i32 noundef 4) #6
  br label %cx231xx_stop_stream.exit

cx231xx_stop_stream.exit:                         ; preds = %if.end7.i51, %do.end.i39.cx231xx_stop_stream.exit_crit_edge
  %retval.0.i52 = phi i32 [ %call18.i50, %if.end7.i51 ], [ %call5.i37, %do.end.i39.cx231xx_stop_stream.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i34) #6
  br label %cleanup

cleanup:                                          ; preds = %cx231xx_stop_stream.exit, %cx231xx_start_stream.exit, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then7.cleanup_crit_edge ], [ %retval.0.i, %cx231xx_start_stream.exit ], [ %retval.0.i52, %cx231xx_stop_stream.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_mode_register(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uninitGPIO(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = tail call i32 @cx231xx_capture_start(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 2)
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 64, i16 noundef zeroext 7, i8 noundef zeroext 1, i32 noundef 20, i8 noundef zeroext 1) #6
  %call2 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 104, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_write_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_init_super_block(ptr noundef %dev, i32 noundef %ref_count) local_unnamed_addr #0 align 64 {
entry:
  %temp.i134 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = and i32 %ref_count, 255
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 1, i8 noundef zeroext 2, i32 noundef %conv.i, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i128 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp3 = icmp slt i32 %call.i128, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = lshr i32 %ref_count, 8
  %3 = and i32 %and7, 3
  %conv10 = or i32 %3, 64
  %call.i131 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef %conv10, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp12 = icmp slt i32 %call.i131, 0
  br i1 %cmp12, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call.i132 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 5, i8 noundef zeroext 2, i32 noundef 15, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp17 = icmp slt i32 %call.i132, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end15.while.cond_crit_edge

if.end15.while.cond_crit_edge:                    ; preds = %if.end15
  br label %while.cond

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond:                                       ; preds = %if.end59.while.cond_crit_edge, %if.end15.while.cond_crit_edge
  %afe_power_status.0.in = phi i32 [ %8, %if.end59.while.cond_crit_edge ], [ %2, %if.end15.while.cond_crit_edge ]
  %i.0 = phi i32 [ %inc, %if.end59.while.cond_crit_edge ], [ 0, %if.end15.while.cond_crit_edge ]
  %afe_power_status.0 = trunc i32 %afe_power_status.0.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %afe_power_status.0)
  %cmp22.not = icmp eq i8 %afe_power_status.0, 24
  br i1 %cmp22.not, label %if.end84, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i133 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef 24, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp25 = icmp slt i32 %call.i133, 0
  br i1 %cmp25, label %do.body, label %if.end34

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_afe_init_super_block, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !175

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev32 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev32, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end34:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i134) #6
  %6 = ptrtoint ptr %temp.i134 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %temp.i134, align 4
  %call.i135 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i134, i8 noundef zeroext 1) #6
  %7 = ptrtoint ptr %temp.i134 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp.i134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i134) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp39 = icmp slt i32 %call.i135, 0
  br i1 %cmp39, label %do.body42, label %if.end59

do.body42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_afe_init_super_block, %if.then54)) #6
          to label %cleanup [label %if.then54], !srcloc !175

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %dev55 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev55, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug306, ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end34
  %inc = add nuw nsw i32 %i.0, 1
  %cmp60 = icmp eq i32 %inc, 10
  br i1 %cmp60, label %do.body63, label %if.end59.while.cond_crit_edge

if.end59.while.cond_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.body63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_afe_init_super_block, %if.then75)) #6
          to label %cleanup [label %if.then75], !srcloc !175

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %dev76 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev76, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug307, ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end84:                                         ; preds = %while.cond
  %call.i137 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 2, i8 noundef zeroext 2, i32 noundef 64, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp86 = icmp slt i32 %call.i137, 0
  br i1 %cmp86, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 5) #6
  %call.i138 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 2, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end84.cleanup_crit_edge, %if.then75, %do.body63, %if.then54, %do.body42, %if.then31, %do.body, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i138, %if.end89 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i128, %if.end.cleanup_crit_edge ], [ %call.i131, %if.end6.cleanup_crit_edge ], [ %call.i132, %if.end15.cleanup_crit_edge ], [ %call.i137, %if.end84.cleanup_crit_edge ], [ %call.i133, %do.body ], [ %call.i135, %do.body42 ], [ -1, %do.body63 ], [ -1, %if.then75 ], [ %call.i135, %if.then54 ], [ %call.i133, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_init_channels(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %call.i43 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %call.i44 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %call.i45 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 11, i8 noundef zeroext 2, i32 noundef 2, i8 noundef zeroext 1) #6
  %call.i46 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 39, i8 noundef zeroext 2, i32 noundef 23, i8 noundef zeroext 1) #6
  %call.i47 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 71, i8 noundef zeroext 2, i32 noundef 23, i8 noundef zeroext 1) #6
  %call.i48 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 103, i8 noundef zeroext 2, i32 noundef 23, i8 noundef zeroext 1) #6
  %call.i49 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 34, i8 noundef zeroext 2, i32 noundef 16, i8 noundef zeroext 1) #6
  %call.i50 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 66, i8 noundef zeroext 2, i32 noundef 16, i8 noundef zeroext 1) #6
  %call.i51 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 98, i8 noundef zeroext 2, i32 noundef 16, i8 noundef zeroext 1) #6
  tail call void @msleep(i32 noundef 5) #6
  %call.i52 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 39, i8 noundef zeroext 2, i32 noundef 7, i8 noundef zeroext 1) #6
  %call.i53 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 71, i8 noundef zeroext 2, i32 noundef 7, i8 noundef zeroext 1) #6
  %call.i54 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 103, i8 noundef zeroext 2, i32 noundef 7, i8 noundef zeroext 1) #6
  %call.i55 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 41, i8 noundef zeroext 2, i32 noundef 240, i8 noundef zeroext 1) #6
  %call.i56 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 73, i8 noundef zeroext 2, i32 noundef 240, i8 noundef zeroext 1) #6
  %call.i57 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 105, i8 noundef zeroext 2, i32 noundef 240, i8 noundef zeroext 1) #6
  %call16 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 8, i16 noundef zeroext 42, i8 noundef zeroext 3, i8 noundef zeroext 7, i32 noundef 0) #6
  %call17 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 8, i16 noundef zeroext 74, i8 noundef zeroext 3, i8 noundef zeroext 7, i32 noundef 0) #6
  %call18 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 8, i16 noundef zeroext 106, i8 noundef zeroext 3, i8 noundef zeroext 7, i32 noundef 0) #6
  %call.i58 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 38, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 1) #6
  %call.i59 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 70, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 1) #6
  %call.i60 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 102, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 1) #6
  ret i32 %call.i60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_reg_mask_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_setup_AFE_for_baseband(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %3 = and i32 %2, 175
  %call.i5 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef %3, i8 noundef zeroext 1) #6
  ret i32 %call.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_set_input_mux(ptr noundef %dev, i32 noundef %input_mux) local_unnamed_addr #0 align 64 {
entry:
  %temp.i70 = alloca i32, align 4
  %temp.i65 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv4 = and i32 %input_mux, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp.not = icmp eq i32 %conv4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 40, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %3 = and i32 %2, 207
  %4 = shl i32 %input_mux, 4
  %5 = add i32 %4, 240
  %.masked = and i32 %5, 240
  %conv.i63 = or i32 %3, %.masked
  %call.i64 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 40, i8 noundef zeroext 2, i32 noundef %conv.i63, i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call.i64, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = and i32 %input_mux, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16.not = icmp eq i32 %6, 0
  br i1 %cmp16.not, label %if.end.if.end33_crit_edge, label %if.then18

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i65) #6
  %7 = ptrtoint ptr %temp.i65 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %temp.i65, align 4
  %call.i66 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 72, i8 noundef zeroext 2, ptr noundef nonnull %temp.i65, i8 noundef zeroext 1) #6
  %8 = ptrtoint ptr %temp.i65 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp.i65, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i65) #6
  %10 = and i32 %9, 207
  %11 = lshr i32 %input_mux, 4
  %12 = add nuw nsw i32 %11, 240
  %13 = and i32 %12, 240
  %conv28 = or i32 %10, %13
  %call.i69 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 72, i8 noundef zeroext 2, i32 noundef %conv28, i8 noundef zeroext 1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then18, %if.end.if.end33_crit_edge
  %status.1 = phi i32 [ %call.i69, %if.then18 ], [ %status.0, %if.end.if.end33_crit_edge ]
  %14 = and i32 %input_mux, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp35.not = icmp eq i32 %14, 0
  br i1 %cmp35.not, label %if.end33.if.end52_crit_edge, label %if.then37

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i70) #6
  %15 = ptrtoint ptr %temp.i70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %temp.i70, align 4
  %call.i71 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 104, i8 noundef zeroext 2, ptr noundef nonnull %temp.i70, i8 noundef zeroext 1) #6
  %16 = ptrtoint ptr %temp.i70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i70) #6
  %18 = and i32 %17, 207
  %19 = lshr i32 %input_mux, 12
  %20 = add nuw nsw i32 %19, 240
  %21 = and i32 %20, 240
  %conv47 = or i32 %18, %21
  %call.i74 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 104, i8 noundef zeroext 2, i32 noundef %conv47, i8 noundef zeroext 1) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then37, %if.end33.if.end52_crit_edge
  %status.2 = phi i32 [ %call.i74, %if.then37 ], [ %status.1, %if.end33.if.end52_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_set_mode(ptr noundef %dev, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %temp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cx231xx_Setup_AFE_for_LowIF(ptr noundef %dev)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #6
  %1 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %temp.i.i, align 4
  %call.i.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, ptr noundef nonnull %temp.i.i, i8 noundef zeroext 1) #6
  %2 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #6
  %4 = and i32 %3, 175
  %call.i5.i = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef %4, i8 noundef zeroext 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i5.i, %sw.bb1 ], [ 0, %sw.bb ]
  %afe_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 78
  %5 = ptrtoint ptr %afe_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %afe_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mode)
  %cmp.not = icmp eq i32 %6, %mode
  br i1 %cmp.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %7 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %video_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp2 = icmp eq i32 %8, 3
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @cx231xx_afe_adjust_ref_count(ptr noundef %dev, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %status.1 = phi i32 [ %call3, %if.then ], [ %status.0, %land.lhs.true.if.end_crit_edge ], [ %status.0, %sw.epilog.if.end_crit_edge ]
  %9 = ptrtoint ptr %afe_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %afe_mode, align 4
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_Setup_AFE_for_LowIF(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %temp.i118 = alloca i32, align 4
  %temp.i113 = alloca i32, align 4
  %temp.i108 = alloca i32, align 4
  %temp.i103 = alloca i32, align 4
  %temp.i98 = alloca i32, align 4
  %temp.i93 = alloca i32, align 4
  %temp.i88 = alloca i32, align 4
  %temp.i83 = alloca i32, align 4
  %temp.i78 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 97, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %3 = and i32 %2, 254
  %conv.i76 = or i32 %3, 1
  %call.i77 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 97, i8 noundef zeroext 2, i32 noundef %conv.i76, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i78) #6
  %4 = ptrtoint ptr %temp.i78 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp.i78, align 4
  %call.i79 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 97, i8 noundef zeroext 2, ptr noundef nonnull %temp.i78, i8 noundef zeroext 1) #6
  %5 = ptrtoint ptr %temp.i78 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i78) #6
  %7 = and i32 %6, 254
  %call.i82 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 97, i8 noundef zeroext 2, i32 noundef %7, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i83) #6
  %8 = ptrtoint ptr %temp.i83 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %temp.i83, align 4
  %call.i84 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 105, i8 noundef zeroext 2, ptr noundef nonnull %temp.i83, i8 noundef zeroext 1) #6
  %9 = ptrtoint ptr %temp.i83 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i83) #6
  %11 = and i32 %10, 252
  %call.i87 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 105, i8 noundef zeroext 2, i32 noundef %11, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i88) #6
  %12 = ptrtoint ptr %temp.i88 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %temp.i88, align 4
  %call.i89 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 104, i8 noundef zeroext 2, ptr noundef nonnull %temp.i88, i8 noundef zeroext 1) #6
  %13 = ptrtoint ptr %temp.i88 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp.i88, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i88) #6
  %15 = and i32 %14, 249
  %16 = or i32 %15, 2
  %call.i92 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 104, i8 noundef zeroext 2, i32 noundef %16, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i93) #6
  %17 = ptrtoint ptr %temp.i93 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %temp.i93, align 4
  %call.i94 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 103, i8 noundef zeroext 2, ptr noundef nonnull %temp.i93, i8 noundef zeroext 1) #6
  %18 = ptrtoint ptr %temp.i93 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp.i93, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i93) #6
  %20 = and i32 %19, 251
  %conv.i96 = or i32 %20, 4
  %call.i97 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 103, i8 noundef zeroext 2, i32 noundef %conv.i96, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i98) #6
  %21 = ptrtoint ptr %temp.i98 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %temp.i98, align 4
  %call.i99 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 102, i8 noundef zeroext 2, ptr noundef nonnull %temp.i98, i8 noundef zeroext 1) #6
  %22 = ptrtoint ptr %temp.i98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i98) #6
  %24 = and i32 %23, 252
  %conv.i101 = or i32 %24, 3
  %call.i102 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 102, i8 noundef zeroext 2, i32 noundef %conv.i101, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i103) #6
  %25 = ptrtoint ptr %temp.i103 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %temp.i103, align 4
  %call.i104 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 101, i8 noundef zeroext 2, ptr noundef nonnull %temp.i103, i8 noundef zeroext 1) #6
  %26 = ptrtoint ptr %temp.i103 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp.i103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i103) #6
  %28 = and i32 %27, 251
  %conv.i106 = or i32 %28, 4
  %call.i107 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 101, i8 noundef zeroext 2, i32 noundef %conv.i106, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i108) #6
  %29 = ptrtoint ptr %temp.i108 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %temp.i108, align 4
  %call.i109 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 100, i8 noundef zeroext 2, ptr noundef nonnull %temp.i108, i8 noundef zeroext 1) #6
  %30 = ptrtoint ptr %temp.i108 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %temp.i108, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i108) #6
  %32 = and i32 %31, 248
  %33 = or i32 %32, 6
  %call.i112 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 100, i8 noundef zeroext 2, i32 noundef %33, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i113) #6
  %34 = ptrtoint ptr %temp.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %temp.i113, align 4
  %call.i114 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 100, i8 noundef zeroext 2, ptr noundef nonnull %temp.i113, i8 noundef zeroext 1) #6
  %35 = ptrtoint ptr %temp.i113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp.i113, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i113) #6
  %37 = and i32 %36, 143
  %38 = or i32 %37, 64
  %call.i117 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 100, i8 noundef zeroext 2, i32 noundef %38, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i118) #6
  %39 = ptrtoint ptr %temp.i118 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %temp.i118, align 4
  %call.i119 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, ptr noundef nonnull %temp.i118, i8 noundef zeroext 1) #6
  %40 = ptrtoint ptr %temp.i118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %temp.i118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i118) #6
  %42 = and i32 %41, 223
  %conv.i121 = or i32 %42, 32
  %call.i122 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef %conv.i121, i8 noundef zeroext 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_adjust_ref_count(ptr noundef %dev, i32 noundef %video_input) local_unnamed_addr #0 align 64 {
entry:
  %temp.i35 = alloca i32, align 4
  %temp.i32 = alloca i32, align 4
  %temp.i29 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %video_input1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %video_input1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %video_input, ptr %video_input1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %video_input)
  %cmp = icmp eq i32 %video_input, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 104, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i29) #6
  %4 = ptrtoint ptr %temp.i29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp.i29, align 4
  %call.i30 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 105, i8 noundef zeroext 2, ptr noundef nonnull %temp.i29, i8 noundef zeroext 1) #6
  %5 = ptrtoint ptr %temp.i29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i29) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i32) #6
  %7 = ptrtoint ptr %temp.i32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %temp.i32, align 4
  %call.i33 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 40, i8 noundef zeroext 2, ptr noundef nonnull %temp.i32, i8 noundef zeroext 1) #6
  %8 = ptrtoint ptr %temp.i32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i32) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i35) #6
  %10 = ptrtoint ptr %temp.i35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %temp.i35, align 4
  %call.i36 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 41, i8 noundef zeroext 2, ptr noundef nonnull %temp.i35, i8 noundef zeroext 1) #6
  %11 = ptrtoint ptr %temp.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i35) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %input_mode.0.in = phi i32 [ %3, %if.then ], [ %9, %if.else ]
  %ntf_mode.0.in = phi i32 [ %6, %if.then ], [ %12, %if.else ]
  %13 = and i32 %ntf_mode.0.in, 3
  %14 = shl i32 %input_mode.0.in, 1
  %15 = and i32 %14, 12
  %or28 = or i32 %13, %15
  %16 = zext i32 %or28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %or28, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb9
    i32 9, label %sw.bb11
    i32 10, label %sw.bb13
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 608, %sw.bb13 ], [ 600, %sw.bb11 ], [ 588, %sw.bb9 ], [ 572, %if.end.sw.epilog.sink.split_crit_edge ]
  %afe_ref_count14 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 79
  %17 = ptrtoint ptr %afe_ref_count14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %afe_ref_count14, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %afe_ref_count15 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 79
  %18 = ptrtoint ptr %afe_ref_count15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %afe_ref_count15, align 8
  %call16 = call i32 @cx231xx_afe_init_super_block(ptr noundef %dev, i32 noundef %19)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_afe_update_power_control(ptr noundef %dev, i32 noundef %avmode) local_unnamed_addr #0 align 64 {
entry:
  %temp.i244 = alloca i32, align 4
  %temp.i238 = alloca i32, align 4
  %temp.i229 = alloca i32, align 4
  %temp.i222 = alloca i32, align 4
  %temp.i216 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge259
    i32 2, label %entry.sw.bb_crit_edge260
    i32 7, label %entry.sw.bb_crit_edge261
    i32 3, label %entry.sw.bb_crit_edge262
    i32 4, label %entry.sw.bb_crit_edge263
    i32 5, label %entry.sw.bb_crit_edge264
    i32 8, label %entry.sw.bb_crit_edge265
    i32 19, label %entry.sw.bb_crit_edge266
    i32 9, label %entry.sw.bb_crit_edge267
    i32 10, label %entry.sw.bb_crit_edge268
    i32 14, label %entry.sw.bb_crit_edge269
    i32 15, label %entry.sw.bb_crit_edge270
    i32 17, label %entry.sw.bb_crit_edge271
  ]

entry.sw.bb_crit_edge271:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge270:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge269:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge268:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge267:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge266:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge265:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge264:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge263:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge262:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge261:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge260:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge259:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge259, %entry.sw.bb_crit_edge260, %entry.sw.bb_crit_edge261, %entry.sw.bb_crit_edge262, %entry.sw.bb_crit_edge263, %entry.sw.bb_crit_edge264, %entry.sw.bb_crit_edge265, %entry.sw.bb_crit_edge266, %entry.sw.bb_crit_edge267, %entry.sw.bb_crit_edge268, %entry.sw.bb_crit_edge269, %entry.sw.bb_crit_edge270, %entry.sw.bb_crit_edge271
  %3 = zext i32 %avmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %avmode, label %do.body [
    i32 32, label %sw.bb.while.cond_crit_edge
    i32 16, label %if.then14
    i32 48, label %sw.bb.while.body35_crit_edge
  ]

sw.bb.while.body35_crit_edge:                     ; preds = %sw.bb
  br label %while.body35

sw.bb.while.cond_crit_edge:                       ; preds = %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %sw.bb.while.cond_crit_edge
  %afe_power_status.0 = phi i8 [ %conv.i, %while.body.while.cond_crit_edge ], [ 0, %sw.bb.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %afe_power_status.0)
  %cmp1.not = icmp eq i8 %afe_power_status.0, 24
  br i1 %cmp1.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call.i = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef 24, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %4 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp.i, align 4
  %call.i209 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %5 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp.i, align 4
  %conv.i = trunc i32 %6 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %or = or i32 %call.i209, %call.i
  %cmp4 = icmp slt i32 %or, 0
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call.i210 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %call.i211 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or9 = or i32 %call.i211, %call.i210
  %call.i212 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or11 = or i32 %or9, %call.i212
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i213 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %call.i214 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %or17 = or i32 %call.i214, %call.i213
  %call.i215 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %or19 = or i32 %or17, %call.i215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i216) #6
  %7 = ptrtoint ptr %temp.i216 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %temp.i216, align 4
  %call.i217 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i216, i8 noundef zeroext 1) #6
  %8 = ptrtoint ptr %temp.i216 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp.i216, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i216) #6
  %or21 = or i32 %or19, %call.i217
  %10 = and i32 %9, 248
  %conv.i219 = or i32 %10, 7
  %call.i220 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef %conv.i219, i8 noundef zeroext 1) #6
  %or26 = or i32 %or21, %call.i220
  br label %sw.epilog

while.body35:                                     ; preds = %while.body35.while.body35_crit_edge, %sw.bb.while.body35_crit_edge
  %call.i221 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef 24, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i222) #6
  %11 = ptrtoint ptr %temp.i222 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %temp.i222, align 4
  %call.i223 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i222, i8 noundef zeroext 1) #6
  %12 = ptrtoint ptr %temp.i222 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp.i222, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i222) #6
  %or38 = or i32 %call.i223, %call.i221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or38)
  %cmp39 = icmp slt i32 %or38, 0
  %conv.i224 = trunc i32 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %conv.i224)
  %cmp33.not = icmp eq i8 %conv.i224, 24
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %while.end43, label %while.body35.while.body35_crit_edge

while.body35.while.body35_crit_edge:              ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body35

while.end43:                                      ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #8
  %call.i225 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or45 = or i32 %call.i225, %or38
  %call.i226 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or47 = or i32 %or45, %call.i226
  %call.i227 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or49 = or i32 %or47, %call.i227
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_afe_update_power_control, %if.then54)) #6
          to label %sw.epilog [label %if.then54], !srcloc !175

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev55 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev55, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug308, ptr noundef %15, ptr noundef nonnull @.str.9) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = zext i32 %avmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %avmode, label %do.body122 [
    i32 32, label %sw.default.while.body67_crit_edge
    i32 16, label %if.then85
    i32 48, label %sw.default.while.body106_crit_edge
  ]

sw.default.while.body106_crit_edge:               ; preds = %sw.default
  br label %while.body106

sw.default.while.body67_crit_edge:                ; preds = %sw.default
  br label %while.body67

while.body67:                                     ; preds = %while.body67.while.body67_crit_edge, %sw.default.while.body67_crit_edge
  %call.i228 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef 24, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i229) #6
  %17 = ptrtoint ptr %temp.i229 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %temp.i229, align 4
  %call.i230 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i229, i8 noundef zeroext 1) #6
  %18 = ptrtoint ptr %temp.i229 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp.i229, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i229) #6
  %or70 = or i32 %call.i230, %call.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or70)
  %cmp71 = icmp slt i32 %or70, 0
  %conv.i231 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %conv.i231)
  %cmp65.not = icmp eq i8 %conv.i231, 24
  %or.cond257 = select i1 %cmp71, i1 true, i1 %cmp65.not
  br i1 %or.cond257, label %while.end75, label %while.body67.while.body67_crit_edge

while.body67.while.body67_crit_edge:              ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body67

while.end75:                                      ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #8
  %call.i232 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 64, i8 noundef zeroext 1) #6
  %or77 = or i32 %call.i232, %or70
  %call.i233 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 64, i8 noundef zeroext 1) #6
  %or79 = or i32 %or77, %call.i233
  %call.i234 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or81 = or i32 %or79, %call.i234
  br label %sw.epilog

if.then85:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call.i235 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %call.i236 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %or88 = or i32 %call.i236, %call.i235
  %call.i237 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 112, i8 noundef zeroext 1) #6
  %or90 = or i32 %or88, %call.i237
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i238) #6
  %20 = ptrtoint ptr %temp.i238 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %temp.i238, align 4
  %call.i239 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i238, i8 noundef zeroext 1) #6
  %21 = ptrtoint ptr %temp.i238 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temp.i238, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i238) #6
  %or92 = or i32 %or90, %call.i239
  %23 = and i32 %22, 248
  %conv.i241 = or i32 %23, 7
  %call.i242 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef %conv.i241, i8 noundef zeroext 1) #6
  %or97 = or i32 %or92, %call.i242
  br label %sw.epilog

while.body106:                                    ; preds = %while.body106.while.body106_crit_edge, %sw.default.while.body106_crit_edge
  %call.i243 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef 24, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i244) #6
  %24 = ptrtoint ptr %temp.i244 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %temp.i244, align 4
  %call.i245 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i244, i8 noundef zeroext 1) #6
  %25 = ptrtoint ptr %temp.i244 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temp.i244, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i244) #6
  %or109 = or i32 %call.i245, %call.i243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or109)
  %cmp110 = icmp slt i32 %or109, 0
  %conv.i246 = trunc i32 %26 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %conv.i246)
  %cmp104.not = icmp eq i8 %conv.i246, 24
  %or.cond258 = select i1 %cmp110, i1 true, i1 %cmp104.not
  br i1 %or.cond258, label %while.end114, label %while.body106.while.body106_crit_edge

while.body106.while.body106_crit_edge:            ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body106

while.end114:                                     ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #8
  %call.i247 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 35, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or116 = or i32 %call.i247, %or109
  %call.i248 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  %or118 = or i32 %or116, %call.i248
  %call.i249 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 99, i8 noundef zeroext 2, i32 noundef 64, i8 noundef zeroext 1) #6
  %or120 = or i32 %or118, %call.i249
  br label %sw.epilog

do.body122:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_afe_update_power_control, %if.then134)) #6
          to label %sw.epilog [label %if.then134], !srcloc !175

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #8
  %dev135 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %27 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev135, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug309, ptr noundef %28, ptr noundef nonnull @.str.9) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then134, %do.body122, %while.end114, %if.then85, %while.end75, %if.then54, %do.body, %while.end43, %if.then14, %while.end
  %status.6 = phi i32 [ %or81, %while.end75 ], [ %or97, %if.then85 ], [ %or120, %while.end114 ], [ %or11, %while.end ], [ %or26, %if.then14 ], [ %or49, %while.end43 ], [ -1, %if.then54 ], [ -1, %if.then134 ], [ -1, %do.body ], [ -1, %do.body122 ]
  ret i32 %status.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_check_fw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2048, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %conv = and i32 %2, 255
  %retval.0 = select i1 %cmp, i32 %call.i, i32 %conv
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_video_input_mux(ptr noundef %dev, i8 noundef zeroext %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %idxprom = zext i8 %input to i32
  %arrayidx2 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1, i32 26, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %3, label %do.end80 [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge125
    i32 3, label %entry.sw.bb26_crit_edge
    i32 4, label %entry.sw.bb26_crit_edge126
  ]

entry.sw.bb26_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

entry.sw.bb_crit_edge125:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge125
  %type3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 1
  %5 = ptrtoint ptr %type3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end11_crit_edge

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %sw.bb
  %power_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 77
  %7 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %8)
  %cmp5.not = icmp eq i32 %8, 48
  br i1 %cmp5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @cx231xx_set_power_mode(ptr noundef %dev, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %do.end, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %sw.bb.if.end11_crit_edge
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %model, align 8
  %arrayidx16 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %12, i32 26, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16, align 4
  %conv18 = trunc i32 %14 to i8
  %vmux = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %12, i32 26, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %vmux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vmux, align 8
  %conv24 = trunc i32 %16 to i8
  %call25 = tail call i32 @cx231xx_set_decoder_video_input(ptr noundef %dev, i8 noundef zeroext %conv18, i8 noundef zeroext %conv24)
  br label %sw.epilog88

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge126
  %type28 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 1
  %17 = ptrtoint ptr %type28 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp30 = icmp eq i8 %18, 1
  br i1 %cmp30, label %land.lhs.true32, label %sw.bb26.if.end46_crit_edge

sw.bb26.if.end46_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true32:                                  ; preds = %sw.bb26
  %power_mode33 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 77
  %19 = ptrtoint ptr %power_mode33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_mode33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp34.not = icmp eq i32 %20, 32
  br i1 %cmp34.not, label %land.lhs.true32.if.end46_crit_edge, label %if.then36

land.lhs.true32.if.end46_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then36:                                        ; preds = %land.lhs.true32
  %call37 = tail call i32 @cx231xx_set_power_mode(ptr noundef %dev, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.then36.if.end46_crit_edge

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %dev44 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call37) #9
  br label %cleanup

if.end46:                                         ; preds = %if.then36.if.end46_crit_edge, %land.lhs.true32.if.end46_crit_edge, %sw.bb26.if.end46_crit_edge
  %23 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %model, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %24, label %sw.default [
    i32 20, label %if.end46.sw.bb48_crit_edge
    i32 26, label %if.end46.sw.bb48_crit_edge127
    i32 21, label %if.end46.sw.bb48_crit_edge128
    i32 27, label %if.end46.sw.bb48_crit_edge129
    i32 23, label %if.end46.sw.bb48_crit_edge130
  ]

if.end46.sw.bb48_crit_edge130:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end46.sw.bb48_crit_edge129:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end46.sw.bb48_crit_edge128:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end46.sw.bb48_crit_edge127:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end46.sw.bb48_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

sw.bb48:                                          ; preds = %if.end46.sw.bb48_crit_edge, %if.end46.sw.bb48_crit_edge127, %if.end46.sw.bb48_crit_edge128, %if.end46.sw.bb48_crit_edge129, %if.end46.sw.bb48_crit_edge130
  %vmux54 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %24, i32 26, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %vmux54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vmux54, align 8
  %conv55 = trunc i32 %27 to i8
  %call56 = tail call i32 @cx231xx_set_decoder_video_input(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv55)
  br label %sw.epilog88

sw.default:                                       ; preds = %if.end46
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %28 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %29)
  %cmp57 = icmp eq i32 %29, 83
  %vmux65 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %24, i32 26, i32 %idxprom, i32 1
  %30 = ptrtoint ptr %vmux65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vmux65, align 8
  %conv66 = trunc i32 %31 to i8
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = tail call i32 @cx231xx_set_decoder_video_input(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv66)
  br label %sw.epilog88

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 @cx231xx_set_decoder_video_input(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext %conv66)
  br label %sw.epilog88

do.end80:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev81 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %32 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef %3) #9
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %do.end80, %if.else, %if.then59, %sw.bb48, %if.end11
  %status.0 = phi i32 [ 0, %do.end80 ], [ %call67, %if.then59 ], [ %call75, %if.else ], [ %call56, %sw.bb48 ], [ %call25, %if.end11 ]
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %34 = ptrtoint ptr %video_input to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %idxprom, ptr %video_input, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog88, %do.end43, %do.end
  %retval.0 = phi i32 [ %status.0, %sw.epilog88 ], [ %call37, %do.end43 ], [ %call, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_power_mode(ptr noundef %dev, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %power_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 77
  %1 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %power_mode, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mode)
  %cmp.not = icmp eq i32 %2, %mode
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %power_mode, align 8
  %call8 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.cleanup_crit_edge, label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_set_power_mode.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_set_power_mode, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !175

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_set_power_mode.__UNIQUE_ID_ddebug325, ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %mode) #6
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %mode, label %if.end11.if.end279_crit_edge [
    i32 48, label %sw.bb
    i32 32, label %sw.bb51
    i32 16, label %sw.bb154
  ]

if.end11.if.end279_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %8, -384
  %10 = trunc i32 %and to i8
  %conv = or i8 %10, 8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %value, align 4
  %shr = lshr i32 %and, 8
  %conv13 = trunc i32 %shr to i8
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %8, 16
  %conv16 = trunc i32 %shr15 to i8
  %arrayidx17 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16, ptr %arrayidx17, align 2
  %shr18 = lshr i32 %8, 24
  %conv19 = trunc i32 %shr18 to i8
  %arrayidx20 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv19, ptr %arrayidx20, align 1
  %call22 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  %conv24 = or i8 %10, 72
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv24, ptr %value, align 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %arrayidx14, align 1
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %arrayidx17, align 2
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %arrayidx20, align 1
  %call36 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  %conv38 = or i8 %10, 120
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv38, ptr %value, align 4
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx14, align 1
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %arrayidx17, align 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %arrayidx20, align 1
  %call50 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  %xc_fw_load_done = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 23
  %23 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %xc_fw_load_done, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %xc_fw_load_done, align 4
  br label %if.end279

sw.bb51:                                          ; preds = %if.end11
  %or52 = or i32 %8, 2
  %conv53 = trunc i32 %or52 to i8
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv53, ptr %value, align 4
  %shr55 = lshr i32 %8, 8
  %conv56 = trunc i32 %shr55 to i8
  %arrayidx57 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv56, ptr %arrayidx57, align 1
  %shr58 = lshr i32 %8, 16
  %conv59 = trunc i32 %shr58 to i8
  %arrayidx60 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv59, ptr %arrayidx60, align 2
  %shr61 = lshr i32 %8, 24
  %conv62 = trunc i32 %shr61 to i8
  %arrayidx63 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv62, ptr %arrayidx63, align 1
  %call65 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  %and66 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then68, label %sw.bb51.if.end83_crit_edge

sw.bb51.if.end83_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then68:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %or69 = or i32 %8, 6
  %conv70 = trunc i32 %or69 to i8
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv70, ptr %value, align 4
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv56, ptr %arrayidx57, align 1
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv59, ptr %arrayidx60, align 2
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv62, ptr %arrayidx63, align 1
  %call82 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then68, %sw.bb51.if.end83_crit_edge
  %tmp.0 = phi i32 [ %or52, %sw.bb51.if.end83_crit_edge ], [ %or69, %if.then68 ]
  %and84 = and i32 %tmp.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end83.if.end101_crit_edge

if.end83.if.end101_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %or87 = or i32 %tmp.0, 8
  %conv88 = trunc i32 %or87 to i8
  %32 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv88, ptr %value, align 4
  %shr90 = lshr i32 %tmp.0, 8
  %conv91 = trunc i32 %shr90 to i8
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv91, ptr %arrayidx57, align 1
  %shr93 = lshr i32 %tmp.0, 16
  %conv94 = trunc i32 %shr93 to i8
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv94, ptr %arrayidx60, align 2
  %shr96 = lshr i32 %tmp.0, 24
  %conv97 = trunc i32 %shr96 to i8
  %35 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv97, ptr %arrayidx63, align 1
  %call100 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then86, %if.end83.if.end101_crit_edge
  %tmp.1 = phi i32 [ %tmp.0, %if.end83.if.end101_crit_edge ], [ %or87, %if.then86 ]
  %and102 = and i32 %tmp.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end101.if.end119_crit_edge

if.end101.if.end119_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %or105 = or i32 %tmp.1, 64
  %conv106 = trunc i32 %or105 to i8
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv106, ptr %value, align 4
  %shr108 = lshr i32 %tmp.1, 8
  %conv109 = trunc i32 %shr108 to i8
  %37 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv109, ptr %arrayidx57, align 1
  %shr111 = lshr i32 %tmp.1, 16
  %conv112 = trunc i32 %shr111 to i8
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv112, ptr %arrayidx60, align 2
  %shr114 = lshr i32 %tmp.1, 24
  %conv115 = trunc i32 %shr114 to i8
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv115, ptr %arrayidx63, align 1
  %call118 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then104, %if.end101.if.end119_crit_edge
  %tmp.2 = phi i32 [ %tmp.1, %if.end101.if.end119_crit_edge ], [ %or105, %if.then104 ]
  %and120 = and i32 %tmp.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %if.end119.if.end137_crit_edge

if.end119.if.end137_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %40 = trunc i32 %tmp.2 to i8
  %conv124 = or i8 %40, 32
  %41 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv124, ptr %value, align 4
  %shr126 = lshr i32 %tmp.2, 8
  %conv127 = trunc i32 %shr126 to i8
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv127, ptr %arrayidx57, align 1
  %shr129 = lshr i32 %tmp.2, 16
  %conv130 = trunc i32 %shr129 to i8
  %43 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv130, ptr %arrayidx60, align 2
  %shr132 = lshr i32 %tmp.2, 24
  %conv133 = trunc i32 %shr132 to i8
  %44 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv133, ptr %arrayidx63, align 1
  %call136 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end137

if.end137:                                        ; preds = %if.then122, %if.end119.if.end137_crit_edge
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp138.not = icmp eq i32 %46, 4
  br i1 %cmp138.not, label %if.end137.if.end279_crit_edge, label %if.then140

if.end137.if.end279_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

if.then140:                                       ; preds = %if.end137
  %tuner_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 10
  %47 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner_gpio, align 4
  %tobool142.not = icmp eq ptr %48, null
  br i1 %tobool142.not, label %if.then140.if.end147_crit_edge, label %if.then143

if.then140.if.end147_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then143:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %call146 = call i32 @cx231xx_gpio_set(ptr noundef %dev, ptr noundef nonnull %48) #6
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.then140.if.end147_crit_edge
  %cx231xx_reset_analog_tuner = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 68
  %49 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cx231xx_reset_analog_tuner, align 4
  %tobool148.not = icmp eq ptr %50, null
  br i1 %tobool148.not, label %if.end147.if.end279_crit_edge, label %if.then149

if.end147.if.end279_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

if.then149:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = call i32 %50(ptr noundef %dev) #6
  br label %if.end279

sw.bb154:                                         ; preds = %if.end11
  %and155 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.then157, label %sw.bb154.if.end172_crit_edge

sw.bb154.if.end172_crit_edge:                     ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then157:                                       ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #8
  %or158 = or i32 %8, 4
  %conv159 = trunc i32 %or158 to i8
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv159, ptr %value, align 4
  %shr161 = lshr i32 %8, 8
  %conv162 = trunc i32 %shr161 to i8
  %arrayidx163 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv162, ptr %arrayidx163, align 1
  %shr164 = lshr i32 %8, 16
  %conv165 = trunc i32 %shr164 to i8
  %arrayidx166 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv165, ptr %arrayidx166, align 2
  %shr167 = lshr i32 %8, 24
  %conv168 = trunc i32 %shr167 to i8
  %arrayidx169 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv168, ptr %arrayidx169, align 1
  %call171 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end172

if.end172:                                        ; preds = %if.then157, %sw.bb154.if.end172_crit_edge
  %tmp.4 = phi i32 [ %8, %sw.bb154.if.end172_crit_edge ], [ %or158, %if.then157 ]
  %and173 = and i32 %tmp.4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.then175, label %if.end172.if.end190_crit_edge

if.end172.if.end190_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %or176 = or i32 %tmp.4, 8
  %conv177 = trunc i32 %or176 to i8
  %55 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv177, ptr %value, align 4
  %shr179 = lshr i32 %tmp.4, 8
  %conv180 = trunc i32 %shr179 to i8
  %arrayidx181 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv180, ptr %arrayidx181, align 1
  %shr182 = lshr i32 %tmp.4, 16
  %conv183 = trunc i32 %shr182 to i8
  %arrayidx184 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv183, ptr %arrayidx184, align 2
  %shr185 = lshr i32 %tmp.4, 24
  %conv186 = trunc i32 %shr185 to i8
  %arrayidx187 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv186, ptr %arrayidx187, align 1
  %call189 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end190

if.end190:                                        ; preds = %if.then175, %if.end172.if.end190_crit_edge
  %tmp.5 = phi i32 [ %tmp.4, %if.end172.if.end190_crit_edge ], [ %or176, %if.then175 ]
  %and191 = and i32 %tmp.5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.then193, label %if.end190.if.end208_crit_edge

if.end190.if.end208_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end208

if.then193:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %or194 = or i32 %tmp.5, 64
  %conv195 = trunc i32 %or194 to i8
  %59 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv195, ptr %value, align 4
  %shr197 = lshr i32 %tmp.5, 8
  %conv198 = trunc i32 %shr197 to i8
  %arrayidx199 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv198, ptr %arrayidx199, align 1
  %shr200 = lshr i32 %tmp.5, 16
  %conv201 = trunc i32 %shr200 to i8
  %arrayidx202 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv201, ptr %arrayidx202, align 2
  %shr203 = lshr i32 %tmp.5, 24
  %conv204 = trunc i32 %shr203 to i8
  %arrayidx205 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv204, ptr %arrayidx205, align 1
  %call207 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end208

if.end208:                                        ; preds = %if.then193, %if.end190.if.end208_crit_edge
  %tmp.6 = phi i32 [ %tmp.5, %if.end190.if.end208_crit_edge ], [ %or194, %if.then193 ]
  %and209 = and i32 %tmp.6, -49
  %or210 = or i32 %and209, 16
  %conv211 = trunc i32 %or210 to i8
  %63 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv211, ptr %value, align 4
  %shr213 = lshr i32 %tmp.6, 8
  %conv214 = trunc i32 %shr213 to i8
  %arrayidx215 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv214, ptr %arrayidx215, align 1
  %shr216 = lshr i32 %tmp.6, 16
  %conv217 = trunc i32 %shr216 to i8
  %arrayidx218 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv217, ptr %arrayidx218, align 2
  %shr219 = lshr i32 %tmp.6, 24
  %conv220 = trunc i32 %shr219 to i8
  %arrayidx221 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv220, ptr %arrayidx221, align 1
  %call223 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  %and224 = and i32 %tmp.6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.then226, label %if.end208.if.end241_crit_edge

if.end208.if.end241_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

if.then226:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  %or227 = or i32 %and209, 18
  %conv228 = trunc i32 %or227 to i8
  %67 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv228, ptr %value, align 4
  %68 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv214, ptr %arrayidx215, align 1
  %69 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv217, ptr %arrayidx218, align 2
  %70 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv220, ptr %arrayidx221, align 1
  %call240 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  br label %if.end241

if.end241:                                        ; preds = %if.then226, %if.end208.if.end241_crit_edge
  %tmp.7 = phi i32 [ %or210, %if.end208.if.end241_crit_edge ], [ %or227, %if.then226 ]
  %tuner_type243 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %tuner_type243 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tuner_type243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp244.not = icmp eq i32 %72, 4
  br i1 %cmp244.not, label %if.end241.if.end279.thread_crit_edge, label %if.then246

if.end241.if.end279.thread_crit_edge:             ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279.thread

if.then246:                                       ; preds = %if.end241
  %tuner_gpio248 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 10
  %73 = ptrtoint ptr %tuner_gpio248 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tuner_gpio248, align 4
  %tobool249.not = icmp eq ptr %74, null
  br i1 %tobool249.not, label %if.then246.if.end254_crit_edge, label %if.then250

if.then246.if.end254_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then250:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #8
  %call253 = call i32 @cx231xx_gpio_set(ptr noundef %dev, ptr noundef nonnull %74) #6
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.then246.if.end254_crit_edge
  %cx231xx_reset_analog_tuner255 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 68
  %75 = ptrtoint ptr %cx231xx_reset_analog_tuner255 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cx231xx_reset_analog_tuner255, align 4
  %tobool256.not = icmp eq ptr %76, null
  br i1 %tobool256.not, label %if.end254.if.end279.thread_crit_edge, label %if.then257

if.end254.if.end279.thread_crit_edge:             ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279.thread

if.then257:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  %call259 = call i32 %76(ptr noundef %dev) #6
  br label %if.end279.thread

if.end279.thread:                                 ; preds = %if.then257, %if.end254.if.end279.thread_crit_edge, %if.end241.if.end279.thread_crit_edge
  call void @msleep(i32 noundef 10) #6
  %conv266 = trunc i32 %tmp.7 to i8
  %77 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv266, ptr %value, align 4
  %or265 = lshr i32 %tmp.7, 8
  %78 = trunc i32 %or265 to i8
  %conv269 = or i8 %78, 1
  %79 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv269, ptr %arrayidx215, align 1
  %shr271 = lshr i32 %tmp.7, 16
  %conv272 = trunc i32 %shr271 to i8
  %80 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv272, ptr %arrayidx218, align 2
  %shr274 = lshr i32 %tmp.7, 24
  %conv275 = trunc i32 %shr274 to i8
  %81 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv275, ptr %arrayidx221, align 1
  %call278 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @msleep(i32 noundef 10) #6
  %call280414 = call i32 @cx231xx_afe_update_power_control(ptr noundef %dev, i32 noundef 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %82 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %value.i, align 4
  br label %if.then.i

if.end279:                                        ; preds = %if.then149, %if.end147.if.end279_crit_edge, %if.end137.if.end279_crit_edge, %sw.bb, %if.end11.if.end279_crit_edge
  call void @msleep(i32 noundef 10) #6
  %call280 = call i32 @cx231xx_afe_update_power_control(ptr noundef %dev, i32 noundef %mode)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %83 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %mode)
  %cmp.not.i = icmp eq i32 %mode, 48
  br i1 %cmp.not.i, label %if.end279.cx231xx_i2s_blk_update_power_control.exit_crit_edge, label %if.end279.if.then.i_crit_edge

if.end279.if.then.i_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end279.cx231xx_i2s_blk_update_power_control.exit_crit_edge: ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_i2s_blk_update_power_control.exit

if.then.i:                                        ; preds = %if.end279.if.then.i_crit_edge, %if.end279.thread
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull %value.i, i8 noundef zeroext 1) #6
  %84 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value.i, align 4
  %or.i = or i32 %85, 254
  store i32 %or.i, ptr %value.i, align 4
  br label %cx231xx_i2s_blk_update_power_control.exit

cx231xx_i2s_blk_update_power_control.exit:        ; preds = %if.then.i, %if.end279.cx231xx_i2s_blk_update_power_control.exit_crit_edge
  %or.i.sink = phi i32 [ %or.i, %if.then.i ], [ 0, %if.end279.cx231xx_i2s_blk_update_power_control.exit_crit_edge ]
  %call1.i = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef %or.i.sink, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %call283 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %cx231xx_i2s_blk_update_power_control.exit, %if.then5, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call283, %cx231xx_i2s_blk_update_power_control.exit ], [ 0, %if.then5 ], [ %call8, %if.then.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_decoder_video_input(ptr noundef %dev, i8 noundef zeroext %pin_type, i8 noundef zeroext %input) local_unnamed_addr #0 align 64 {
entry:
  %temp.i.i.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %conv = zext i8 %pin_type to i32
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %1 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %video_input, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp eq i32 %2, %conv
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @cx231xx_afe_adjust_ref_count(ptr noundef %dev, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %conv8 = zext i8 %input to i32
  %call9 = tail call i32 @cx231xx_afe_set_input_mux(ptr noundef %dev, i32 noundef %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev16 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %call9) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %7 = zext i8 %pin_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %pin_type, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end17
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %or = and i32 %9, -33521713
  %or21 = or i32 %or, 16777232
  store i32 %or21, ptr %value, align 4
  %call.i239 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef %or21, i8 noundef zeroext 4) #6
  %call.i240 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %or24 = or i32 %11, 128
  store i32 %or24, ptr %value, align 4
  %call.i241 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, i32 noundef %or24, i8 noundef zeroext 4) #6
  %output_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 25
  %12 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output_mode, align 8
  %call26 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i32 noundef 3, i32 noundef %13) #6
  %call27 = call i32 @cx231xx_dif_set_standard(ptr noundef %dev, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end35

do.end33:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %call27) #9
  br label %cleanup

if.end35:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i242 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %or38 = or i32 %17, 402653184
  store i32 %or38, ptr %value, align 4
  %call.i243 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, i32 noundef %or38, i8 noundef zeroext 4) #6
  %call40 = call i32 @cx231xx_set_field(i32 noundef 32, i32 noundef 1) #6
  %call41 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 32, i32 noundef %call40) #6
  %call42 = call i32 @cx231xx_set_field(i32 noundef 1536, i32 noundef 0) #6
  %call43 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 1536, i32 noundef %call42) #6
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end17
  %call.i244 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %and46 = and i32 %19, -33521681
  %or47 = or i32 %and46, 16777232
  store i32 %or47, ptr %value, align 4
  %call.i245 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef %or47, i8 noundef zeroext 4) #6
  %call49 = call i32 @cx231xx_dif_set_standard(ptr noundef %dev, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end57

do.end55:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev56, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %call49) #9
  br label %cleanup

if.end57:                                         ; preds = %sw.bb44
  %call.i246 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  %or60 = or i32 %23, 402653184
  store i32 %or60, ptr %value, align 4
  %call.i247 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, i32 noundef %or60, i8 noundef zeroext 4) #6
  %call62 = call i32 @cx231xx_set_field(i32 noundef 32, i32 noundef 1) #6
  %call63 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 32, i32 noundef %call62) #6
  %call64 = call i32 @cx231xx_set_field(i32 noundef 1536, i32 noundef 1) #6
  %call65 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 1536, i32 noundef %call64) #6
  %call.i248 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %or67 = and i32 %25, -4481
  %and68 = or i32 %or67, 4096
  store i32 %and68, ptr %value, align 4
  %call.i249 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef %and68, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i.i) #6
  %26 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %temp.i.i.i, align 4
  %call.i.i.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, ptr noundef nonnull %temp.i.i.i, i8 noundef zeroext 1) #6
  %27 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i.i) #6
  %29 = and i32 %28, 175
  %call.i5.i.i = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext 96, i16 noundef zeroext 67, i8 noundef zeroext 2, i32 noundef %29, i8 noundef zeroext 1) #6
  %afe_mode.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 78
  %30 = ptrtoint ptr %afe_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %afe_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 1
  br i1 %cmp.not.i, label %if.end57.cx231xx_afe_set_mode.exit_crit_edge, label %land.lhs.true.i

if.end57.cx231xx_afe_set_mode.exit_crit_edge:     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_afe_set_mode.exit

land.lhs.true.i:                                  ; preds = %if.end57
  %32 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %video_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp2.i = icmp eq i32 %33, 3
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge

land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_afe_set_mode.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @cx231xx_afe_adjust_ref_count(ptr noundef %dev, i32 noundef 3) #6
  br label %cx231xx_afe_set_mode.exit

cx231xx_afe_set_mode.exit:                        ; preds = %if.then.i, %land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge, %if.end57.cx231xx_afe_set_mode.exit_crit_edge
  %34 = ptrtoint ptr %afe_mode.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %afe_mode.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end17
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %36)
  %cmp73 = icmp eq i32 %36, 76
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %sw.default
  %call.i250 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value, align 4
  %or77 = and i32 %38, -33521713
  %or80 = or i32 %or77, 16777232
  store i32 %or80, ptr %value, align 4
  %call.i251 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef %or80, i8 noundef zeroext 4) #6
  %call.i252 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value, align 4
  %or83 = or i32 %40, 128
  store i32 %or83, ptr %value, align 4
  %call.i253 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, i32 noundef %or83, i8 noundef zeroext 4) #6
  %output_mode86 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 25
  %41 = ptrtoint ptr %output_mode86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %output_mode86, align 8
  %call87 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i32 noundef 3, i32 noundef %42) #6
  %call88 = call i32 @cx231xx_dif_set_standard(ptr noundef %dev, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %dev95 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %43 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev95, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %call88) #9
  br label %cleanup

if.end96:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %call.i254 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %45 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value, align 4
  %or99 = or i32 %46, 402653184
  store i32 %or99, ptr %value, align 4
  %call.i255 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, i32 noundef %or99, i8 noundef zeroext 4) #6
  %call101 = call i32 @cx231xx_set_field(i32 noundef 32, i32 noundef 1) #6
  %call102 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 32, i32 noundef %call101) #6
  %call103 = call i32 @cx231xx_set_field(i32 noundef 1536, i32 noundef 0) #6
  %call104 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 1536, i32 noundef %call103) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %47 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %norm, align 8
  %conv105 = trunc i64 %48 to i32
  %call106 = tail call i32 @cx231xx_dif_set_standard(ptr noundef %dev, i32 noundef %conv105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %do.end112, label %if.end114

do.end112:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev113 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %49 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev113, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %call106) #9
  br label %cleanup

if.end114:                                        ; preds = %if.else
  %call.i256 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %51 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %value, align 4
  %and116 = and i32 %52, 2147483647
  store i32 %and116, ptr %value, align 4
  %call.i257 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, i32 noundef %and116, i8 noundef zeroext 4) #6
  %call.i258 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %53 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value, align 4
  %and119 = and i32 %54, -1478492161
  %or120 = or i32 %and119, 1344274432
  store i32 %or120, ptr %value, align 4
  %call.i259 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, i32 noundef %or120, i8 noundef zeroext 4) #6
  call void @msleep(i32 noundef 1) #6
  %55 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value, align 4
  %and122 = and i32 %56, -268435457
  store i32 %and122, ptr %value, align 4
  %call.i260 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1160, i8 noundef zeroext 2, i32 noundef %and122, i8 noundef zeroext 4) #6
  %call.i261 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %57 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value, align 4
  %or125 = or i32 %58, 7
  store i32 %or125, ptr %value, align 4
  %call.i262 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, i32 noundef %or125, i8 noundef zeroext 4) #6
  %output_mode128 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 25
  %59 = ptrtoint ptr %output_mode128 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %output_mode128, align 8
  %call129 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i32 noundef 3, i32 noundef %60) #6
  %call130 = call i32 @cx231xx_set_field(i32 noundef 32, i32 noundef 1) #6
  %call131 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 32, i32 noundef %call130) #6
  %call132 = call i32 @cx231xx_set_field(i32 noundef 1536, i32 noundef 0) #6
  %call133 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1024, i32 noundef 1536, i32 noundef %call132) #6
  %call.i263 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %61 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value, align 4
  %and135 = and i32 %62, -25166209
  %or137 = or i32 %and135, 8388992
  store i32 %or137, ptr %value, align 4
  %call.i264 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef %or137, i8 noundef zeroext 4) #6
  %tuner_type139 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %63 = ptrtoint ptr %tuner_type139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tuner_type139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %64)
  %cmp140 = icmp eq i32 %64, 83
  br i1 %cmp140, label %if.then142, label %if.end114.sw.epilog_crit_edge

if.end114.sw.epilog_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then142:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %call.i265 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %65 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value, align 4
  %and144 = and i32 %66, -17
  %call.i266 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, i32 noundef %and144, i8 noundef zeroext 4) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then142, %if.end114.sw.epilog_crit_edge, %if.end96, %cx231xx_afe_set_mode.exit, %if.end35
  %call148 = call i32 @cx231xx_set_field(i32 noundef 8, i32 noundef 1) #6
  %call149 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i32 noundef 8, i32 noundef %call148) #6
  %call.i267 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %67 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value, align 4
  %and151 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool.not = icmp eq i32 %and151, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then152

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then152:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or153 = or i32 %68, 524288
  %69 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or153, ptr %value, align 4
  %call.i268 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1028, i8 noundef zeroext 2, i32 noundef %or153, i8 noundef zeroext 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %sw.epilog.cleanup_crit_edge, %do.end112, %do.end94, %do.end55, %do.end33, %do.end15, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %do.end15 ], [ %call88, %do.end94 ], [ %call106, %do.end112 ], [ %call49, %do.end55 ], [ %call27, %do.end33 ], [ %call.i268, %if.then152 ], [ %call.i267, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_dif_set_standard(ptr noundef %dev, i32 noundef %standard) local_unnamed_addr #0 align 64 {
entry:
  %dif_misc_ctrl_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dif_misc_ctrl_value) #6
  %0 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dif_misc_ctrl_value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dif_set_standard.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dif_set_standard, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dif_set_standard.__UNIQUE_ID_ddebug323, ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %standard) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, ptr noundef nonnull %dif_misc_ctrl_value, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %standard)
  %cmp.not = icmp eq i32 %standard, -1
  br i1 %cmp.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %standard to i64
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %3 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %norm, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.cx231xx_dif_set_standard, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end6.sw.epilog_crit_edge
  %func_mode.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.end6.sw.epilog_crit_edge ]
  %active_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 81
  %8 = ptrtoint ptr %active_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_mode, align 8
  %call8 = call i32 @cx231xx_dif_configure_C2HH_for_low_IF(ptr noundef %dev, i32 noundef %9, i32 noundef %func_mode.0, i32 noundef %standard)
  br i1 %cmp.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call.i358 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 832, i8 noundef zeroext 2, i32 noundef 234348419, i8 noundef zeroext 4) #6
  %call.i359 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, ptr noundef nonnull %dif_misc_ctrl_value, i8 noundef zeroext 4) #6
  %10 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dif_misc_ctrl_value, align 4
  %or = or i32 %11, -2147483648
  store i32 %or, ptr %dif_misc_ctrl_value, align 4
  %call.i360 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, i32 noundef %or, i8 noundef zeroext 4) #6
  br label %if.end200

if.else:                                          ; preds = %sw.epilog
  %conv15 = zext i32 %standard to i64
  %and = and i64 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %if.else37, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 772, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1694743564) #6
  %call19 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 776, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1123840891) #6
  %call20 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 780, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 498361354) #6
  %call21 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 784, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 34816) #6
  %call22 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 788, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1145836416) #6
  %call23 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 792, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -634378752) #6
  %call24 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 796, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635037952) #6
  %call25 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 800, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635034112) #6
  %call26 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 804, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 637540096) #6
  %call27 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 808, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 9824) #6
  %call28 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 812, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1917847552) #6
  %call29 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 816, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 654311680) #6
  %call30 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 820, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1060713706) #6
  %call31 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 824, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call32 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 832, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 468696838) #6
  %call33 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 836, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 13800) #6
  %call34 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 916, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %12 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and35 = and i32 %13, 2097152
  %or36 = or i32 %and35, 973225745
  store i32 %or36, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else37:                                        ; preds = %if.else
  %and39 = and i64 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.else61, label %if.then41

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 772, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1694743564) #6
  %call43 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 776, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1123840891) #6
  %call44 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 780, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 498361354) #6
  %call45 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 784, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 34816) #6
  %call46 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 788, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1145836416) #6
  %call47 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 792, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -634378752) #6
  %call48 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 796, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635037952) #6
  %call49 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 800, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635034112) #6
  %call50 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 804, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 637540096) #6
  %call51 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 808, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 9824) #6
  %call52 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 812, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1917847552) #6
  %call53 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 816, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 654311680) #6
  %call54 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 820, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1597614388) #6
  %call55 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 824, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call56 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 832, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 468696838) #6
  %call57 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 836, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 13800) #6
  %call58 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 916, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %14 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and59 = and i32 %15, 2097152
  %or60 = or i32 %and59, 973291281
  store i32 %or60, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else61:                                        ; preds = %if.else37
  %and63 = and i64 %conv15, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63)
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.else82, label %if.then65

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  %call.i361 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 772, i8 noundef zeroext 2, i32 noundef -16646388, i8 noundef zeroext 4) #6
  %call.i362 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 776, i8 noundef zeroext 2, i32 noundef -1123840891, i8 noundef zeroext 4) #6
  %call.i363 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 780, i8 noundef zeroext 2, i32 noundef 498361354, i8 noundef zeroext 4) #6
  %call.i364 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 784, i8 noundef zeroext 2, i32 noundef 34816, i8 noundef zeroext 4) #6
  %call.i365 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, i32 noundef 1145836416, i8 noundef zeroext 4) #6
  %call.i366 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 804, i8 noundef zeroext 2, i32 noundef 637540096, i8 noundef zeroext 4) #6
  %call.i367 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 808, i8 noundef zeroext 2, i32 noundef 9824, i8 noundef zeroext 4) #6
  %call.i368 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 812, i8 noundef zeroext 2, i32 noundef 1917847552, i8 noundef zeroext 4) #6
  %call.i369 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 816, i8 noundef zeroext 2, i32 noundef 654311680, i8 noundef zeroext 4) #6
  %call.i370 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 820, i8 noundef zeroext 2, i32 noundef 19677277, i8 noundef zeroext 4) #6
  %call.i371 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 824, i8 noundef zeroext 2, i32 noundef 10440897, i8 noundef zeroext 4) #6
  %call.i372 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 832, i8 noundef zeroext 2, i32 noundef 468696838, i8 noundef zeroext 4) #6
  %call.i373 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 836, i8 noundef zeroext 2, i32 noundef 13800, i8 noundef zeroext 4) #6
  %call.i374 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 920, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 4) #6
  %16 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and80 = and i32 %17, 2097152
  %or81 = or i32 %and80, 973750032
  store i32 %or81, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else82:                                        ; preds = %if.else61
  %and84 = and i64 %conv15, 1536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84)
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.else102, label %if.then86

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #8
  %call.i375 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 772, i8 noundef zeroext 2, i32 noundef -16646388, i8 noundef zeroext 4) #6
  %call.i376 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 776, i8 noundef zeroext 2, i32 noundef -1123840891, i8 noundef zeroext 4) #6
  %call.i377 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 780, i8 noundef zeroext 2, i32 noundef 498361354, i8 noundef zeroext 4) #6
  %call.i378 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 784, i8 noundef zeroext 2, i32 noundef 34816, i8 noundef zeroext 4) #6
  %call.i379 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, i32 noundef 1145836416, i8 noundef zeroext 4) #6
  %call.i380 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 804, i8 noundef zeroext 2, i32 noundef 637540096, i8 noundef zeroext 4) #6
  %call.i381 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 808, i8 noundef zeroext 2, i32 noundef 9824, i8 noundef zeroext 4) #6
  %call.i382 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 812, i8 noundef zeroext 2, i32 noundef 1917847552, i8 noundef zeroext 4) #6
  %call.i383 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 816, i8 noundef zeroext 2, i32 noundef 654311680, i8 noundef zeroext 4) #6
  %call.i384 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 820, i8 noundef zeroext 2, i32 noundef 19677277, i8 noundef zeroext 4) #6
  %call.i385 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 824, i8 noundef zeroext 2, i32 noundef 10440897, i8 noundef zeroext 4) #6
  %call.i386 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 832, i8 noundef zeroext 2, i32 noundef 468696838, i8 noundef zeroext 4) #6
  %call.i387 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 836, i8 noundef zeroext 2, i32 noundef 13800, i8 noundef zeroext 4) #6
  %call.i388 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 920, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 4) #6
  %18 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 973684496, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else102:                                       ; preds = %if.else82
  %and104 = and i64 %conv15, 3604480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and104)
  %tobool105.not = icmp eq i64 %and104, 0
  br i1 %tobool105.not, label %if.else126, label %if.then106

if.then106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  %call107 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 772, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1694743564) #6
  %call108 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 776, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1123840891) #6
  %call109 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 780, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 498361354) #6
  %call110 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 784, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 34816) #6
  %call111 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 788, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -2004089984) #6
  %call112 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 792, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -534370816) #6
  %call113 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 796, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1038674176) #6
  %call114 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 800, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1037687296) #6
  %call115 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 804, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 637540096) #6
  %call116 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 808, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 9824) #6
  %call117 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 816, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 654311680) #6
  %call118 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 820, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1060450540) #6
  %call119 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 824, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call120 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 832, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 468696838) #6
  %call121 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 836, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 13800) #6
  %call122 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 916, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call123 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 812, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -201326592) #6
  %19 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and124 = and i32 %20, 2097152
  %or125 = or i32 %and124, 973225745
  store i32 %or125, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else126:                                       ; preds = %if.else102
  %and128 = and i64 %conv15, 12582912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and128)
  %tobool129.not = icmp eq i64 %and128, 0
  br i1 %tobool129.not, label %if.else150, label %if.then130

if.then130:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 772, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1694743564) #6
  %call132 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 776, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1123840891) #6
  %call133 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 780, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 498361354) #6
  %call134 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 784, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 34816) #6
  %call135 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 788, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -2004089984) #6
  %call136 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 792, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -534370816) #6
  %call137 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 796, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1038674176) #6
  %call138 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 800, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1037687296) #6
  %call139 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 804, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 637540096) #6
  %call140 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 808, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 9824) #6
  %call141 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 816, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 654311680) #6
  %call142 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 820, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1060450540) #6
  %call143 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 824, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call144 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 832, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 468696838) #6
  %call145 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 836, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 13800) #6
  %call146 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 916, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %call147 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 812, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -229244928) #6
  %21 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and148 = and i32 %22, 2097152
  %or149 = or i32 %and148, 973225745
  store i32 %or149, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else150:                                       ; preds = %if.else126
  %and152 = and i64 %conv15, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and152)
  %tobool153.not = icmp eq i64 %and152, 0
  br i1 %tobool153.not, label %if.else173, label %if.then154

if.then154:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #8
  %call.i389 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 772, i8 noundef zeroext 2, i32 noundef 1694743564, i8 noundef zeroext 4) #6
  %call.i390 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 776, i8 noundef zeroext 2, i32 noundef -1123840891, i8 noundef zeroext 4) #6
  %call.i391 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 780, i8 noundef zeroext 2, i32 noundef 498361354, i8 noundef zeroext 4) #6
  %call.i392 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 784, i8 noundef zeroext 2, i32 noundef 34816, i8 noundef zeroext 4) #6
  %call.i393 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, i32 noundef 1145832320, i8 noundef zeroext 4) #6
  %call.i394 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 804, i8 noundef zeroext 2, i32 noundef 637540096, i8 noundef zeroext 4) #6
  %call.i395 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 808, i8 noundef zeroext 2, i32 noundef 9824, i8 noundef zeroext 4) #6
  %call.i396 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 812, i8 noundef zeroext 2, i32 noundef 67110912, i8 noundef zeroext 4) #6
  %call.i397 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 816, i8 noundef zeroext 2, i32 noundef 654311680, i8 noundef zeroext 4) #6
  %call.i398 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 820, i8 noundef zeroext 2, i32 noundef 19492383, i8 noundef zeroext 4) #6
  %call.i399 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 824, i8 noundef zeroext 2, i32 noundef 10440897, i8 noundef zeroext 4) #6
  %call.i400 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 832, i8 noundef zeroext 2, i32 noundef 468696838, i8 noundef zeroext 4) #6
  %call.i401 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 836, i8 noundef zeroext 2, i32 noundef 13800, i8 noundef zeroext 4) #6
  %call.i402 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 792, i8 noundef zeroext 2, i32 noundef -1037687296, i8 noundef zeroext 4) #6
  %call.i403 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 796, i8 noundef zeroext 2, i32 noundef -1037687296, i8 noundef zeroext 4) #6
  %call.i404 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 800, i8 noundef zeroext 2, i32 noundef -1037687296, i8 noundef zeroext 4) #6
  %23 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and171 = and i32 %24, 2097152
  %or172 = or i32 %and171, 973094672
  store i32 %or172, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.else173:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #8
  %call174 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 772, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1694743564) #6
  %call175 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 776, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -1123840891) #6
  %call176 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 780, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 498361354) #6
  %call177 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 784, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 34816) #6
  %call178 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 788, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1145836416) #6
  %call179 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 792, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -634378752) #6
  %call180 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 796, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635037952) #6
  %call181 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 800, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef -635034112) #6
  %call182 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 804, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 637540096) #6
  %call183 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 808, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 9824) #6
  %call184 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 812, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1917847552) #6
  %call185 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 816, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 654311680) #6
  %call186 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 820, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 1060450540) #6
  %call187 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 824, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 10900392) #6
  %call188 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 832, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 468696838) #6
  %call189 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 836, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 13800) #6
  %call190 = call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 916, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 0) #6
  %25 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and191 = and i32 %26, 2097152
  %or192 = or i32 %and191, 973160209
  store i32 %or192, ptr %dif_misc_ctrl_value, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.else173, %if.then154, %if.then130, %if.then106, %if.then86, %if.then65, %if.then41, %if.then17, %if.then11
  %27 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and201 = and i32 %28, -524289
  %29 = ptrtoint ptr %active_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp203 = icmp eq i32 %30, 1
  %spec.store.select = select i1 %cmp203, i32 2047344640, i32 %and201
  %31 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select, ptr %dif_misc_ctrl_value, align 4
  %call.i405 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, i32 noundef %spec.store.select, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dif_misc_ctrl_value) #6
  ret i32 %call.i405
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_field(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_enable656(ptr noundef %dev) #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 7, i8 noundef zeroext 2, i32 noundef 255, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i6 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %3 = and i32 %2, 251
  %conv.i7 = or i32 %3, 4
  %call.i8 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef %conv.i7, i8 noundef zeroext 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_disable656(ptr noundef %dev) #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 7, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  %call.i6 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %3 = and i32 %2, 251
  %call.i8 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 8, i8 noundef zeroext 2, i32 noundef %3, i8 noundef zeroext 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_do_mode_ctrl_overrides, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  %conv = trunc i64 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1168, i8 noundef zeroext 2, i32 noundef -851508608, i8 noundef zeroext 4) #6
  %norm5 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %4 = ptrtoint ptr %norm5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norm5, align 8
  %and = and i64 %5, 45312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.else, label %do.body8

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_do_mode_ctrl_overrides, %if.then20)) #6
          to label %do.end24 [label %if.then20], !srcloc !175

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug311, ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body8
  %call25 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 1023, i32 noundef 24) #6
  %call26 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 4190208, i32 noundef 1994752) #6
  br label %if.end84

if.else:                                          ; preds = %do.end
  %and31 = and i64 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %do.body59, label %do.body34

do.body34:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_do_mode_ctrl_overrides, %if.then46)) #6
          to label %do.end50 [label %if.then46], !srcloc !175

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug312, ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body34
  %call51 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 1023, i32 noundef 32) #6
  %call52 = tail call i32 @cx231xx_set_field(i32 noundef 4190208, i32 noundef 580) #6
  %call53 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 4190208, i32 noundef %call52) #6
  %call54 = tail call i32 @cx231xx_set_field(i32 noundef -16777216, i32 noundef 36) #6
  br label %if.end84

do.body59:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_do_mode_ctrl_overrides, %if.then71)) #6
          to label %do.end75 [label %if.then71], !srcloc !175

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %dev72 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug313, ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body59
  %call76 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 1023, i32 noundef 32) #6
  %call77 = tail call i32 @cx231xx_set_field(i32 noundef 4190208, i32 noundef 580) #6
  %call78 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef 4190208, i32 noundef %call77) #6
  %call79 = tail call i32 @cx231xx_set_field(i32 noundef -16777216, i32 noundef 36) #6
  br label %if.end84

if.end84:                                         ; preds = %do.end75, %do.end50, %do.end24
  %call54.sink = phi i32 [ %call54, %do.end50 ], [ %call79, %do.end75 ], [ 469762048, %do.end24 ]
  %.sink = phi i32 [ 133, %do.end50 ], [ 133, %do.end75 ], [ 121, %do.end24 ]
  %call55 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1140, i32 noundef -16777216, i32 noundef %call54.sink) #6
  %call56 = tail call i32 @cx231xx_set_field(i32 noundef 1023, i32 noundef %.sink) #6
  %call57 = tail call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 1136, i32 noundef 1023, i32 noundef %call56) #6
  ret i32 %call57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_unmute_audio(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2260, i8 noundef zeroext 2, i32 noundef 36, i8 noundef zeroext 1) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_audio_input(ptr noundef %dev, i8 noundef zeroext %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %idxprom = zext i8 %input to i32
  %amux = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1, i32 26, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amux, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %input)
  %cond.i = icmp eq i8 %input, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb3.cx231xx_i2s_blk_set_audio_input.exit_crit_edge

sw.bb3.cx231xx_i2s_blk_set_audio_input.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_i2s_blk_set_audio_input.exit

sw.bb.i:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #6
  %call1.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 14, i8 noundef zeroext 1, i32 noundef 128, i8 noundef zeroext 1) #6
  br label %cx231xx_i2s_blk_set_audio_input.exit

cx231xx_i2s_blk_set_audio_input.exit:             ; preds = %sw.bb.i, %sw.bb3.cx231xx_i2s_blk_set_audio_input.exit_crit_edge
  %ctl_ainput.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %ctl_ainput.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idxprom, ptr %ctl_ainput.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cx231xx_i2s_blk_set_audio_input.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %ainput.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 1, %cx231xx_i2s_blk_set_audio_input.exit ], [ 2, %sw.bb ]
  %call4 = tail call i32 @cx231xx_set_audio_decoder_input(ptr noundef %dev, i32 noundef %ainput.0)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2s_blk_set_audio_input(ptr noundef %dev, i8 noundef zeroext %audio_input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %audio_input)
  %cond = icmp eq i8 %audio_input, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #6
  %call1 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 14, i8 noundef zeroext 1, i32 noundef 128, i8 noundef zeroext 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call1, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %conv = zext i8 %audio_input to i32
  %ctl_ainput = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %ctl_ainput, align 4
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_audio_decoder_input(ptr noundef %dev, i32 noundef %audio_input) local_unnamed_addr #0 align 64 {
entry:
  %temp.i124 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  %dwval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwval) #6
  %0 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dwval, align 4, !annotation !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %1 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %temp.i, align 4
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2064, i8 noundef zeroext 2, ptr noundef nonnull %temp.i, i8 noundef zeroext 1) #6
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %4 = and i32 %3, 254
  %conv.i106 = or i32 %4, 1
  %call.i107 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2064, i8 noundef zeroext 2, i32 noundef %conv.i106, i8 noundef zeroext 1) #6
  %5 = zext i32 %audio_input to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %audio_input, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb74
    i32 4, label %entry.sw.epilog76_crit_edge
  ]

entry.sw.epilog76_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @cx231xx_set_field(i32 noundef 3, i32 noundef 0) #6
  %call.i108 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 292, i8 noundef zeroext 2, i32 noundef %call3, i8 noundef zeroext 4) #6
  %call.i109 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2332, i8 noundef zeroext 2, ptr noundef nonnull %dwval, i8 noundef zeroext 4) #6
  %6 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dwval, align 4
  %or6 = or i32 %7, 16777216
  %call.i110 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2332, i8 noundef zeroext 2, i32 noundef %or6, i8 noundef zeroext 4) #6
  %call8 = call i32 @cx231xx_set_field(i32 noundef 786432, i32 noundef 0) #6
  %call9 = call i32 @cx231xx_set_field(i32 noundef 196608, i32 noundef 0) #6
  %or10 = or i32 %call9, %call8
  %call11 = call i32 @cx231xx_set_field(i32 noundef 3, i32 noundef 0) #6
  %or12 = or i32 %or10, %call11
  %call.i111 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2320, i8 noundef zeroext 2, i32 noundef %or12, i8 noundef zeroext 4) #6
  %call.i112 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2048, i8 noundef zeroext 2, i32 noundef 50331649, i8 noundef zeroext 4) #6
  %call.i113 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2256, i8 noundef zeroext 2, i32 noundef 405619, i8 noundef zeroext 4) #6
  %call.i114 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2260, i8 noundef zeroext 2, ptr noundef nonnull %dwval, i8 noundef zeroext 4) #6
  %8 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dwval, align 4
  %or17 = or i32 %9, 2147418112
  %call.i115 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2260, i8 noundef zeroext 2, i32 noundef %or17, i8 noundef zeroext 4) #6
  %call.i116 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2268, i8 noundef zeroext 2, ptr noundef nonnull %dwval, i8 noundef zeroext 4) #6
  %10 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dwval, align 4
  %or20 = or i32 %11, 2147418112
  %call.i117 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2268, i8 noundef zeroext 2, i32 noundef %or20, i8 noundef zeroext 4) #6
  br label %sw.epilog76

sw.default:                                       ; preds = %entry
  %call.i.i = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2051, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 1) #6
  %call24 = call i32 @cx231xx_set_field(i32 noundef -1073741824, i32 noundef 0) #6
  %call25 = call i32 @cx231xx_set_field(i32 noundef 805306368, i32 noundef 1) #6
  %or26 = or i32 %call25, %call24
  %call27 = call i32 @cx231xx_set_field(i32 noundef 201326592, i32 noundef 0) #6
  %or28 = or i32 %or26, %call27
  %call29 = call i32 @cx231xx_set_field(i32 noundef 50331648, i32 noundef 2) #6
  %or30 = or i32 %or28, %call29
  %call31 = call i32 @cx231xx_set_field(i32 noundef 12582912, i32 noundef 2) #6
  %or32 = or i32 %or30, %call31
  %call33 = call i32 @cx231xx_set_field(i32 noundef 3145728, i32 noundef 3) #6
  %or34 = or i32 %or32, %call33
  %call35 = call i32 @cx231xx_set_field(i32 noundef 786432, i32 noundef 0) #6
  %or36 = or i32 %or34, %call35
  %call37 = call i32 @cx231xx_set_field(i32 noundef 196608, i32 noundef 0) #6
  %or38 = or i32 %or36, %call37
  %call39 = call i32 @cx231xx_set_field(i32 noundef 65280, i32 noundef 0) #6
  %or40 = or i32 %or38, %call39
  %call41 = call i32 @cx231xx_set_field(i32 noundef 192, i32 noundef 3) #6
  %or42 = or i32 %or40, %call41
  %call43 = call i32 @cx231xx_set_field(i32 noundef 48, i32 noundef 0) #6
  %or44 = or i32 %or42, %call43
  %call45 = call i32 @cx231xx_set_field(i32 noundef 12, i32 noundef 2) #6
  %or46 = or i32 %or44, %call45
  %call47 = call i32 @cx231xx_set_field(i32 noundef 3, i32 noundef 1) #6
  %or48 = or i32 %or46, %call47
  %call.i118 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2320, i8 noundef zeroext 2, i32 noundef %or48, i8 noundef zeroext 4) #6
  %call50 = call i32 @cx231xx_set_field(i32 noundef 128, i32 noundef 0) #6
  %call51 = call i32 @cx231xx_set_field(i32 noundef 64, i32 noundef 0) #6
  %or52 = or i32 %call51, %call50
  %call53 = call i32 @cx231xx_set_field(i32 noundef 48, i32 noundef 0) #6
  %or54 = or i32 %or52, %call53
  %call55 = call i32 @cx231xx_set_field(i32 noundef 12, i32 noundef 0) #6
  %or56 = or i32 %or54, %call55
  %call57 = call i32 @cx231xx_set_field(i32 noundef 3, i32 noundef 3) #6
  %or58 = or i32 %or56, %call57
  %call.i119 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 292, i8 noundef zeroext 2, i32 noundef %or58, i8 noundef zeroext 4) #6
  %call.i120 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2256, i8 noundef zeroext 2, i32 noundef 520501360, i8 noundef zeroext 4) #6
  %call.i121 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2256, i8 noundef zeroext 2, i32 noundef 407664, i8 noundef zeroext 4) #6
  %call.i.i122 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2051, i8 noundef zeroext 2, i32 noundef 19, i8 noundef zeroext 1) #6
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tuner_type, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %13, label %sw.default69 [
    i32 76, label %sw.bb63
    i32 83, label %sw.bb66
  ]

sw.bb63:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 @cx231xx_set_field(i32 noundef 131072, i32 noundef 1) #6
  %call65 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 256, i32 noundef 131072, i32 noundef %call64) #6
  br label %sw.epilog76

sw.bb66:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 @cx231xx_set_field(i32 noundef 131072, i32 noundef 0) #6
  %call68 = call i32 @cx231xx_read_modify_write_i2c_dword(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 256, i32 noundef 131072, i32 noundef %call67) #6
  br label %sw.epilog76

sw.default69:                                     ; preds = %sw.default
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %model, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %16, label %do.end [
    i32 20, label %sw.default69.sw.epilog76_crit_edge
    i32 26, label %sw.default69.sw.epilog76_crit_edge130
    i32 21, label %sw.default69.sw.epilog76_crit_edge131
    i32 27, label %sw.default69.sw.epilog76_crit_edge132
    i32 23, label %sw.default69.sw.epilog76_crit_edge133
  ]

sw.default69.sw.epilog76_crit_edge133:            ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.default69.sw.epilog76_crit_edge132:            ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.default69.sw.epilog76_crit_edge131:            ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.default69.sw.epilog76_crit_edge130:            ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

sw.default69.sw.epilog76_crit_edge:               ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog76

do.end:                                           ; preds = %sw.default69
  call void @__sanitizer_cov_trace_pc() #8
  %dev72 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev72, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.38) #9
  br label %sw.epilog76

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i123 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2256, i8 noundef zeroext 2, i32 noundef 520163346, i8 noundef zeroext 4) #6
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %sw.bb74, %do.end, %sw.default69.sw.epilog76_crit_edge, %sw.default69.sw.epilog76_crit_edge130, %sw.default69.sw.epilog76_crit_edge131, %sw.default69.sw.epilog76_crit_edge132, %sw.default69.sw.epilog76_crit_edge133, %sw.bb66, %sw.bb63, %sw.bb, %entry.sw.epilog76_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i124) #6
  %20 = ptrtoint ptr %temp.i124 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %temp.i124, align 4
  %call.i125 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2064, i8 noundef zeroext 2, ptr noundef nonnull %temp.i124, i8 noundef zeroext 1) #6
  %21 = ptrtoint ptr %temp.i124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temp.i124, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i124) #6
  %23 = and i32 %22, 254
  %call.i128 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 2064, i8 noundef zeroext 2, i32 noundef %23, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwval) #6
  ret i32 %call.i128
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_init_ctrl_pin_status(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !176
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  %ctl_pin_status_mask = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 14
  %1 = ptrtoint ptr %ctl_pin_status_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ctl_pin_status_mask, align 4
  %neg = xor i32 %2, -1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %or = or i32 %4, %neg
  store i32 %or, ptr %value, align 4
  %call.i4 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 288, i8 noundef zeroext 2, i32 noundef %or, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %call.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_agc_analog_digital_mux_select(ptr noundef %dev, i8 noundef zeroext %analog_or_digital) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i38.i = alloca i32, align 4
  %gpio_val.addr.i.i11 = alloca i32, align 4
  %gpio_val.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %agc_analog_digital_select_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %agc_analog_digital_select_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %agc_analog_digital_select_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp.i = icmp ugt i8 %1, 31
  br i1 %cmp.i, label %entry.cx231xx_set_gpio_value.exit.thread_crit_edge, label %cx231xx_set_gpio_direction.exit

entry.cx231xx_set_gpio_value.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_set_gpio_value.exit.thread

cx231xx_set_gpio_direction.exit:                  ; preds = %entry
  %conv = zext i8 %1 to i32
  %gpio_dir.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir.i, align 8
  %shl.i = shl nuw i32 1, %conv
  %or.i = or i32 %3, %shl.i
  %gpio_val.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %4 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_val.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i.i) #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %7 = ptrtoint ptr %gpio_val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gpio_val.addr.i.i, align 4
  %call.i.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or.i, ptr noundef nonnull %gpio_val.addr.i.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i.i) #6
  %8 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %gpio_dir.i, align 8
  %9 = ptrtoint ptr %agc_analog_digital_select_gpio to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %agc_analog_digital_select_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %.pr)
  %cmp.i12 = icmp ugt i8 %.pr, 31
  br i1 %cmp.i12, label %cx231xx_set_gpio_direction.exit.cx231xx_set_gpio_value.exit.thread_crit_edge, label %if.end.i16

cx231xx_set_gpio_direction.exit.cx231xx_set_gpio_value.exit.thread_crit_edge: ; preds = %cx231xx_set_gpio_direction.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_set_gpio_value.exit.thread

if.end.i16:                                       ; preds = %cx231xx_set_gpio_direction.exit
  %conv3 = zext i8 %.pr to i32
  %gpio_dir.i13 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %10 = ptrtoint ptr %gpio_dir.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_dir.i13, align 8
  %shl.i14 = shl nuw i32 1, %conv3
  %and.i15 = and i32 %11, %shl.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %cmp1.i = icmp eq i32 %and.i15, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i16.cx231xx_set_gpio_value.exit_crit_edge

if.end.i16.cx231xx_set_gpio_value.exit_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_set_gpio_value.exit

if.then2.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %or.i17 = or i32 %11, %shl.i14
  %12 = ptrtoint ptr %gpio_dir.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i17, ptr %gpio_dir.i13, align 8
  %gpio_val.i18 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %13 = ptrtoint ptr %gpio_val.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_val.i18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i.i11) #6
  %15 = call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %gpio_val.addr.i.i11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gpio_val.addr.i.i11, align 4
  %call.i.i19 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or.i17, ptr noundef nonnull %gpio_val.addr.i.i11, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i.i11) #6
  br label %cx231xx_set_gpio_value.exit

cx231xx_set_gpio_value.exit:                      ; preds = %if.then2.i, %if.end.i16.cx231xx_set_gpio_value.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %analog_or_digital)
  %cmp8.i = icmp eq i8 %analog_or_digital, 0
  %gpio_val10.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %17 = ptrtoint ptr %gpio_val10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_val10.i, align 4
  %neg.i20 = xor i32 %shl.i14, -1
  %and12.i = and i32 %18, %neg.i20
  %or15.i = or i32 %18, %shl.i14
  %value.0.i = select i1 %cmp8.i, i32 %and12.i, i32 %or15.i
  store i32 %value.0.i, ptr %gpio_val10.i, align 4
  %19 = ptrtoint ptr %gpio_dir.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_dir.i13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i38.i) #6
  %21 = call i32 @llvm.bswap.i32(i32 %value.0.i) #6
  %22 = ptrtoint ptr %gpio_val.addr.i38.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %gpio_val.addr.i38.i, align 4
  %call.i39.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull %gpio_val.addr.i38.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i38.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp = icmp slt i32 %call.i39.i, 0
  br i1 %cmp, label %cx231xx_set_gpio_value.exit.cx231xx_set_gpio_value.exit.thread_crit_edge, label %cx231xx_set_gpio_value.exit._crit_edge

cx231xx_set_gpio_value.exit._crit_edge:           ; preds = %cx231xx_set_gpio_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %23

cx231xx_set_gpio_value.exit.cx231xx_set_gpio_value.exit.thread_crit_edge: ; preds = %cx231xx_set_gpio_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_set_gpio_value.exit.thread

cx231xx_set_gpio_value.exit.thread:               ; preds = %cx231xx_set_gpio_value.exit.cx231xx_set_gpio_value.exit.thread_crit_edge, %cx231xx_set_gpio_direction.exit.cx231xx_set_gpio_value.exit.thread_crit_edge, %entry.cx231xx_set_gpio_value.exit.thread_crit_edge
  %retval.0.i2124 = phi i32 [ %call.i39.i, %cx231xx_set_gpio_value.exit.cx231xx_set_gpio_value.exit.thread_crit_edge ], [ -22, %cx231xx_set_gpio_direction.exit.cx231xx_set_gpio_value.exit.thread_crit_edge ], [ -22, %entry.cx231xx_set_gpio_value.exit.thread_crit_edge ]
  br label %23

23:                                               ; preds = %cx231xx_set_gpio_value.exit.thread, %cx231xx_set_gpio_value.exit._crit_edge
  %24 = phi i32 [ %retval.0.i2124, %cx231xx_set_gpio_value.exit.thread ], [ 0, %cx231xx_set_gpio_value.exit._crit_edge ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_gpio_direction(ptr noundef %dev, i32 noundef %pin_number, i32 noundef %pin_value) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %pin_number)
  %cmp = icmp sgt i32 %pin_number, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin_value)
  %cmp1 = icmp eq i32 %pin_value, 0
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_dir, align 8
  %shl = shl nuw i32 1, %pin_number
  %neg = xor i32 %shl, -1
  %and = and i32 %1, %neg
  %or = or i32 %1, %shl
  %value.0 = select i1 %cmp1, i32 %and, i32 %or
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %2 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %5 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %value.0, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %gpio_dir6 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %6 = ptrtoint ptr %gpio_dir6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %value.0, ptr %gpio_dir6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef %pin_number, i32 noundef %pin_value) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i38 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %pin_number)
  %cmp = icmp sgt i32 %pin_number, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_dir, align 8
  %shl = shl nuw i32 1, %pin_number
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %1, %shl
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %3 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %6 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin_value)
  %cmp8 = icmp eq i32 %pin_value, 0
  %gpio_val10 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %7 = ptrtoint ptr %gpio_val10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_val10, align 4
  %neg = xor i32 %shl, -1
  %and12 = and i32 %8, %neg
  %or15 = or i32 %8, %shl
  %value.0 = select i1 %cmp8, i32 %and12, i32 %or15
  %gpio_val17 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %9 = ptrtoint ptr %gpio_val17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %value.0, ptr %gpio_val17, align 4
  %10 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i38)
  %12 = call i32 @llvm.bswap.i32(i32 %value.0) #6
  %13 = ptrtoint ptr %gpio_val.addr.i38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gpio_val.addr.i38, align 4
  %call.i39 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull %gpio_val.addr.i38, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i38)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i39, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_enable_i2c_port_3(ptr noundef %dev, i1 noundef zeroext %is_port_3) #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 4
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %4 = icmp eq i8 %3, 0
  %cmp7 = xor i1 %4, %is_port_3
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and18 = and i8 %2, -2
  %masksel = zext i1 %is_port_3 to i8
  %storemerge = or i8 %and18, %masksel
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %value, align 4
  %call22 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, -1
  br i1 %cmp23, label %if.then25, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %port_3_switch_enabled = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %port_3_switch_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %port_3_switch_enabled, align 4
  %bf.shl = select i1 %is_port_3, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %port_3_switch_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call22, %if.then25 ], [ %call22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_HH_register_after_set_DIF(ptr nocapture noundef %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_dump_HH_reg(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1157649296, ptr %value, align 4
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef 1157649296, i8 noundef zeroext 4) #6
  %dev6 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 256, %entry ], [ %indvars.iv.next, %do.end.for.body_crit_edge ]
  %1 = trunc i32 %indvars.iv to i16
  %call.i144 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext %1, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dump_HH_reg, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug314, ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %indvars.iv, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4
  %cmp = icmp ult i32 %indvars.iv, 316
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body14:                                       ; preds = %do.end33.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %indvars.iv161 = phi i32 [ %indvars.iv.next162, %do.end33.for.body14_crit_edge ], [ 768, %do.end.for.body14_crit_edge ]
  %6 = trunc i32 %indvars.iv161 to i16
  %call.i145 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext %6, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dump_HH_reg, %if.then28)) #6
          to label %do.end33 [label %if.then28], !srcloc !175

if.then28:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug315, ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef %indvars.iv161, i32 noundef %10) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %for.body14
  %indvars.iv.next162 = add nuw nsw i32 %indvars.iv161, 4
  %cmp12 = icmp ult i32 %indvars.iv161, 1020
  br i1 %cmp12, label %do.end33.for.body14_crit_edge, label %do.end33.for.body44_crit_edge

do.end33.for.body44_crit_edge:                    ; preds = %do.end33
  br label %for.body44

do.end33.for.body14_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.body44:                                       ; preds = %do.end63.for.body44_crit_edge, %do.end33.for.body44_crit_edge
  %indvars.iv163 = phi i32 [ %indvars.iv.next164, %do.end63.for.body44_crit_edge ], [ 1024, %do.end33.for.body44_crit_edge ]
  %11 = trunc i32 %indvars.iv163 to i16
  %call.i146 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext %11, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dump_HH_reg, %if.then58)) #6
          to label %do.end63 [label %if.then58], !srcloc !175

if.then58:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 8
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug316, ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef %indvars.iv163, i32 noundef %15) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %for.body44
  %indvars.iv.next164 = add nuw nsw i32 %indvars.iv163, 4
  %cmp42 = icmp ult i32 %indvars.iv163, 1084
  br i1 %cmp42, label %do.end63.for.body44_crit_edge, label %for.end69

do.end63.for.body44_crit_edge:                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.end69:                                        ; preds = %do.end63
  %call.i147 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dump_HH_reg, %if.then83)) #6
          to label %do.end87 [label %if.then83], !srcloc !175

if.then83:                                        ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 8
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug317, ptr noundef %17, ptr noundef nonnull @.str.43, i32 noundef %19) #6
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %for.end69
  %call.i148 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, i32 noundef 1149621136, i8 noundef zeroext 4) #6
  %call.i149 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 260, i8 noundef zeroext 2, ptr noundef nonnull %value, i8 noundef zeroext 4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_dump_HH_reg, %if.then102)) #6
          to label %do.end106 [label %if.then102], !srcloc !175

if.then102:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 8
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug318, ptr noundef %21, ptr noundef nonnull @.str.43, i32 noundef %23) #6
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.end87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_set_Colibri_For_LowIF(ptr noundef %dev, i32 noundef %if_freq, i8 noundef zeroext %spectral_invert, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_set_Colibri_For_LowIF, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug319, ptr noundef %1, ptr noundef nonnull @.str.45) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1869573999, ptr %value, align 4
  %call7 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @cx231xx_Setup_AFE_for_LowIF(ptr noundef %dev) #6
  %afe_mode.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 78
  %3 = ptrtoint ptr %afe_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %afe_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %do.end.cx231xx_afe_set_mode.exit_crit_edge, label %land.lhs.true.i

do.end.cx231xx_afe_set_mode.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_afe_set_mode.exit

land.lhs.true.i:                                  ; preds = %do.end
  %video_input.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %5 = ptrtoint ptr %video_input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp2.i = icmp eq i32 %6, 3
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge

land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_afe_set_mode.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @cx231xx_afe_adjust_ref_count(ptr noundef %dev, i32 noundef 3) #6
  br label %cx231xx_afe_set_mode.exit

cx231xx_afe_set_mode.exit:                        ; preds = %if.then.i, %land.lhs.true.i.cx231xx_afe_set_mode.exit_crit_edge, %do.end.cx231xx_afe_set_mode.exit_crit_edge
  %7 = ptrtoint ptr %afe_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %afe_mode.i, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %8 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %norm, align 8
  %conv = trunc i64 %9 to i32
  %active_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 81
  %10 = ptrtoint ptr %active_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_mode, align 8
  %call9 = call i32 @cx231xx_dif_configure_C2HH_for_low_IF(ptr noundef %dev, i32 noundef %11, i32 noundef 1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 0
  br i1 %cmp.i, label %cx231xx_afe_set_mode.exit.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge, label %if.else.i

cx231xx_afe_set_mode.exit.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge: ; preds = %cx231xx_afe_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_Get_Colibri_CarrierOffset.exit

if.else.i:                                        ; preds = %cx231xx_afe_set_mode.exit
  %and.i = and i64 %9, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else2.i, label %if.else.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge

if.else.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_Get_Colibri_CarrierOffset.exit

if.else2.i:                                       ; preds = %if.else.i
  %and4.i = and i64 %9, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4.i)
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.else2.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge

if.else2.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge: ; preds = %if.else2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx231xx_Get_Colibri_CarrierOffset.exit

if.else7.i:                                       ; preds = %if.else2.i
  call void @__sanitizer_cov_trace_pc() #8
  %and9.i = and i64 %9, 16711728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 2100000
  br label %cx231xx_Get_Colibri_CarrierOffset.exit

cx231xx_Get_Colibri_CarrierOffset.exit:           ; preds = %if.else7.i, %if.else2.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge, %if.else.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge, %cx231xx_afe_set_mode.exit.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge
  %colibri_carrier_offset.0.i = phi i32 [ 1100000, %cx231xx_afe_set_mode.exit.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge ], [ 4832000, %if.else.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge ], [ 2700000, %if.else2.i.cx231xx_Get_Colibri_CarrierOffset.exit_crit_edge ], [ %spec.select.i, %if.else7.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_set_Colibri_For_LowIF, %if.then23)) #6
          to label %do.end27 [label %if.then23], !srcloc !175

if.then23:                                        ; preds = %cx231xx_Get_Colibri_CarrierOffset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug320, ptr noundef %13, ptr noundef nonnull @.str.46, i32 noundef %colibri_carrier_offset.0.i, i32 noundef %conv) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %cx231xx_Get_Colibri_CarrierOffset.exit
  %add = add i32 %colibri_carrier_offset.0.i, %if_freq
  call void @cx231xx_set_DIF_bandpass(ptr noundef %dev, i32 noundef %add, i8 noundef zeroext %spectral_invert, i32 noundef %mode)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_dif_configure_C2HH_for_low_IF(ptr noundef %dev, i32 noundef %mode, i32 noundef %function_mode, i32 noundef %standard) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 30, i8 noundef zeroext 31, i32 noundef 1) #6
  %call1 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 23, i8 noundef zeroext 24, i32 noundef %function_mode) #6
  %call2 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 15, i8 noundef zeroext 22, i32 noundef 255) #6
  %call3 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 9, i8 noundef zeroext 9, i32 noundef 1) #6
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %standard)
  %cmp4.not = icmp eq i32 %standard, -1
  br i1 %cmp4.not, label %if.else.if.end35_crit_edge, label %if.then5

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then5:                                         ; preds = %if.else
  %conv = zext i32 %standard to i64
  %and = and i64 %conv, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 30, i8 noundef zeroext 31, i32 noundef 1) #6
  %call8 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 23, i8 noundef zeroext 24, i32 noundef %function_mode) #6
  %call9 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 15, i8 noundef zeroext 22, i32 noundef 11) #6
  %call10 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 9, i8 noundef zeroext 9, i32 noundef 1) #6
  %call11 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 292, i8 noundef zeroext 0, i8 noundef zeroext 31, i32 noundef 3) #6
  br label %if.end35

if.else12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %standard)
  %cmp14 = icmp eq i32 %standard, 16
  %0 = zext i1 %cmp14 to i64
  %and18 = and i64 %conv, 32
  %or = or i64 %and18, %0
  %and20 = and i64 %conv, 16711680
  %or21 = or i64 %or, %and20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or21)
  %tobool22.not = icmp eq i64 %or21, 0
  %call29 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 30, i8 noundef zeroext 31, i32 noundef 1) #6
  %call30 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 23, i8 noundef zeroext 24, i32 noundef %function_mode) #6
  br i1 %tobool22.not, label %if.else28, label %if.then23

if.then23:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 15, i8 noundef zeroext 22, i32 noundef 15) #6
  %call27 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 9, i8 noundef zeroext 9, i32 noundef 1) #6
  br label %if.end35

if.else28:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 15, i8 noundef zeroext 22, i32 noundef 14) #6
  %call32 = tail call i32 @cx231xx_reg_mask_write(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext 32, i16 noundef zeroext 260, i8 noundef zeroext 9, i8 noundef zeroext 9, i32 noundef 1) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.then23, %if.then6, %if.else.if.end35_crit_edge, %if.then
  %status.0 = phi i32 [ %call3, %if.then ], [ %call11, %if.then6 ], [ %call27, %if.then23 ], [ %call32, %if.else28 ], [ 0, %if.else.if.end35_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cx231xx_Get_Colibri_CarrierOffset(i32 noundef %mode, i32 noundef %standerd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %entry.if.end14_crit_edge, label %if.else

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else:                                          ; preds = %entry
  %conv = zext i32 %standerd to i64
  %and = and i64 %conv, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else2, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else2:                                         ; preds = %if.else
  %and4 = and i64 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.else2.if.end14_crit_edge

if.else2.if.end14_crit_edge:                      ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else7:                                         ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i64 %conv, 16711728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 2100000
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.else2.if.end14_crit_edge, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %colibri_carrier_offset.0 = phi i32 [ 1100000, %entry.if.end14_crit_edge ], [ 4832000, %if.else.if.end14_crit_edge ], [ 2700000, %if.else2.if.end14_crit_edge ], [ %spec.select, %if.else7 ]
  ret i32 %colibri_carrier_offset.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_set_DIF_bandpass(ptr noundef %dev, i32 noundef %if_freq, i8 noundef zeroext %spectral_invert, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %dif_misc_ctrl_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dif_misc_ctrl_value) #6
  %0 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dif_misc_ctrl_value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_set_DIF_bandpass, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 8
  %conv = zext i8 %spectral_invert to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug321, ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %if_freq, i32 noundef %conv, i32 noundef %mode) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 768, i8 noundef zeroext 2, i32 noundef -1873142612, i8 noundef zeroext 4) #6
  br label %do.body226

if.else:                                          ; preds = %do.end
  %conv7 = zext i32 %if_freq to i64
  %shl = shl nuw nsw i64 %conv7, 28
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %shl) #10, !srcloc !177
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %shl, i64 %3, i32 0) #10, !srcloc !178
  %asmresult10.i = extractvalue { i64, i32 } %4, 0
  %div175357 = lshr i64 %asmresult10.i, 25
  %conv201 = trunc i64 %div175357 to i32
  %call.i361 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 768, i8 noundef zeroext 2, i32 noundef %conv201, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spectral_invert)
  %tobool203.not = icmp eq i8 %spectral_invert, 0
  br i1 %tobool203.not, label %if.else209, label %if.then204

if.then204:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub205 = add i32 %if_freq, -400000
  %call.i362 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, ptr noundef nonnull %dif_misc_ctrl_value, i8 noundef zeroext 4) #6
  %5 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dif_misc_ctrl_value, align 4
  %or207 = or i32 %6, 2097152
  br label %if.end214

if.else209:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add210 = add i32 %if_freq, 400000
  %call.i364 = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, ptr noundef nonnull %dif_misc_ctrl_value, i8 noundef zeroext 4) #6
  %7 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dif_misc_ctrl_value, align 4
  %and212 = and i32 %8, -2097153
  br label %if.end214

if.end214:                                        ; preds = %if.else209, %if.then204
  %storemerge = phi i32 [ %or207, %if.then204 ], [ %and212, %if.else209 ]
  %if_freq.addr.0 = phi i32 [ %sub205, %if.then204 ], [ %add210, %if.else209 ]
  %9 = ptrtoint ptr %dif_misc_ctrl_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %dif_misc_ctrl_value, align 4
  %call.i365 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 828, i8 noundef zeroext 2, i32 noundef %storemerge, i8 noundef zeroext 4) #6
  %10 = urem i32 %if_freq.addr.0, 100000
  %mul216 = sub i32 %if_freq.addr.0, %10
  %11 = call i32 @llvm.umax.i32(i32 %mul216, i32 3000000)
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 16000000)
  br label %do.body226

do.body226:                                       ; preds = %if.end214, %if.then5
  %if_freq.addr.1 = phi i32 [ %if_freq, %if.then5 ], [ %12, %if.end214 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_set_DIF_bandpass, %if.then238)) #6
          to label %for.body [label %if.then238], !srcloc !175

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #8
  %dev239 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %dev239 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev239, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug322, ptr noundef %14, ptr noundef nonnull @.str.49, i32 noundef 2489) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then238, %do.body226
  %i.0369 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body226 ], [ 0, %if.then238 ]
  %arrayidx = getelementptr [2489 x %struct.dif_settings], ptr @Dif_set_array, i32 0, i32 %i.0369
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %if_freq.addr.1)
  %cmp246 = icmp eq i32 %16, %if_freq.addr.1
  br i1 %cmp246, label %if.then248, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then248:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %register_address = getelementptr [2489 x %struct.dif_settings], ptr @Dif_set_array, i32 0, i32 %i.0369, i32 1
  %17 = ptrtoint ptr %register_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %register_address, align 4
  %conv250 = trunc i32 %18 to i16
  %value = getelementptr [2489 x %struct.dif_settings], ptr @Dif_set_array, i32 0, i32 %i.0369, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %call.i366 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext %conv250, i8 noundef zeroext 2, i32 noundef %20, i8 noundef zeroext 4) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then248, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0369, 1
  %exitcond.not = icmp eq i32 %inc, 2489
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dif_misc_ctrl_value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_tuner_pre_channel_change(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %dwval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwval) #6
  %0 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dwval, align 4, !annotation !176
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, ptr noundef nonnull %dwval, i8 noundef zeroext 4) #6
  %1 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dwval, align 4
  %and = and i32 %2, 16777215
  %or = or i32 %and, 855638016
  store i32 %or, ptr %dwval, align 4
  %call.i3 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, i32 noundef %or, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwval) #6
  ret i32 %call.i3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_tuner_post_channel_change(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %dwval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwval) #6
  %0 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dwval, align 4, !annotation !176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_tuner_post_channel_change.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_tuner_post_channel_change, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 8
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuner_type, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_tuner_post_channel_change.__UNIQUE_ID_ddebug324, ptr noundef %2, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, ptr noundef nonnull %dwval, i8 noundef zeroext 4) #6
  %5 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dwval, align 4
  %and = and i32 %6, 16777215
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %7 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %norm, align 8
  %and5 = and i64 %8, 4390912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  %tuner_type14 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %tuner_type14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tuner_type14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %10)
  %cmp15 = icmp eq i32 %10, 83
  br i1 %tobool6.not, label %if.else13, label %if.then7

if.then7:                                         ; preds = %do.end
  br i1 %cmp15, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %6, 16773120
  %or = or i32 %and10, -2013265152
  %11 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %dwval, align 4
  br label %if.end22

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %or11 = or i32 %and, -2013265920
  %12 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or11, ptr %dwval, align 4
  br label %if.end22

if.else13:                                        ; preds = %do.end
  br i1 %cmp15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  %and17 = and i32 %6, 16773120
  %or18 = or i32 %and17, -872414464
  %13 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or18, ptr %dwval, align 4
  br label %if.end22

if.else19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %and, 1140850688
  %14 = ptrtoint ptr %dwval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or20, ptr %dwval, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then16, %if.else, %if.then9
  %15 = ptrtoint ptr %dwval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dwval, align 4
  %call.i31 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -120, i16 noundef zeroext 788, i8 noundef zeroext 2, i32 noundef %16, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i31)
  %cmp24 = icmp eq i32 %call.i31, 4
  %cond = select i1 %cmp24, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwval) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2s_blk_initialize(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !176
  %call = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 14, i8 noundef zeroext 1, ptr noundef nonnull %value, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %or = or i32 %2, 128
  store i32 %or, ptr %value, align 4
  %call1 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 14, i8 noundef zeroext 1, i32 noundef %or, i8 noundef zeroext 1) #6
  %call2 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_i2c_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_write_i2c_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2s_blk_update_power_control(ptr noundef %dev, i32 noundef %avmode) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %avmode)
  %cmp.not = icmp eq i32 %avmode, 48
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @cx231xx_read_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull %value, i8 noundef zeroext 1) #6
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %or = or i32 %2, 254
  store i32 %or, ptr %value, align 4
  %call1 = call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef %or, i8 noundef zeroext 1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %dev, i8 noundef zeroext -104, i16 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %status.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_gpio_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_power_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %3 = and i32 %2, -2130771969
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %value, align 4
  %shr = lshr i32 %4, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %arrayidx3, align 1
  %shr4 = lshr i32 %4, 16
  %conv5 = trunc i32 %shr4 to i8
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx6, align 2
  %shr7 = lshr i32 %4, 24
  %conv8 = trunc i32 %shr7 to i8
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %arrayidx9, align 1
  %call11 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 116, ptr noundef nonnull %value, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_start_stream(ptr noundef %dev, i32 noundef %ep_mask) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_start_stream.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_start_stream, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_start_stream.__UNIQUE_ID_ddebug326, ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %ep_mask) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 24, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %or = or i32 %5, %ep_mask
  %conv = trunc i32 %or to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %value, align 4
  %shr = lshr i32 %or, 8
  %conv9 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %or, 16
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx13 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %arrayidx13, align 2
  %shr14 = lshr i32 %or, 24
  %conv15 = trunc i32 %shr14 to i8
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %arrayidx16, align 1
  %call18 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 24, ptr noundef nonnull %value, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end7 ], [ %call5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_stop_stream(ptr noundef %dev, i32 noundef %ep_mask) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_stop_stream.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_stop_stream, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_stop_stream.__UNIQUE_ID_ddebug327, ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %ep_mask) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 24, ptr noundef nonnull %value, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %neg = xor i32 %ep_mask, -1
  %and = and i32 %5, %neg
  %conv = trunc i32 %and to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %value, align 4
  %shr = lshr i32 %and, 8
  %conv9 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %and, 16
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx13 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %arrayidx13, align 2
  %shr14 = lshr i32 %and, 24
  %conv15 = trunc i32 %shr14 to i8
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %arrayidx16, align 1
  %call18 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 24, ptr noundef nonnull %value, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end7 ], [ %call5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_initialize_stream_xfer(ptr noundef %dev, i32 noundef %media_type) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 77806336, ptr %val, align 4
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 8
  %speed = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else151

if.then:                                          ; preds = %entry
  %5 = zext i32 %media_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %media_type, label %if.then.if.end153_crit_edge [
    i32 1, label %do.body
    i32 2, label %do.body7
    i32 3, label %do.body26
    i32 0, label %do.body45
    i32 4, label %do.body64
    i32 6, label %do.body132
  ]

if.then.if.end153_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then3)) #6
          to label %do.end [label %if.then3], !srcloc !175

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug328, ptr noundef %7, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59) #6
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %call5 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 37632) #6
  br label %if.end153

do.body7:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !175

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug329, ptr noundef %9, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %call24 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 768) #6
  br label %if.end153

do.body26:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then38)) #6
          to label %do.end42 [label %if.then38], !srcloc !175

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %dev39 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug330, ptr noundef %11, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %call43 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 4864) #6
  br label %if.end153

do.body45:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then57)) #6
          to label %do.end61 [label %if.then57], !srcloc !175

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %dev58 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug331, ptr noundef %13, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59) #6
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body45
  %call62 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 256) #6
  br label %if.end153

do.body64:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then76)) #6
          to label %do.end80 [label %if.then76], !srcloc !175

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %dev77 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev77, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug332, ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body64
  %has_417 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 21
  %16 = ptrtoint ptr %has_417 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %has_417, align 8
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool81.not = icmp eq i8 %17, 0
  br i1 %tobool81.not, label %do.body111, label %do.body83

do.body83:                                        ; preds = %do.end80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then95)) #6
          to label %do.end99 [label %if.then95], !srcloc !175

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  %dev96 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev96, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug333, ptr noundef %19, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59) #6
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body83
  %call100 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 3) #6
  %arrayidx101 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [4 x i8], ptr %val, i32 0, i32 3
  %call104 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 8, ptr noundef nonnull %val, i32 noundef 4) #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %val, align 4
  %21 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %arrayidx101, align 1
  %22 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx102, align 2
  %23 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %arrayidx103, align 1
  %call110 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 12, ptr noundef nonnull %val, i32 noundef 4) #6
  br label %if.end153

do.body111:                                       ; preds = %do.end80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then123)) #6
          to label %do.end127 [label %if.then123], !srcloc !175

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %dev124 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev124, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug334, ptr noundef %25, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59) #6
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %do.body111
  %call128 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 257) #6
  %call129 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef 16) #6
  br label %if.end153

do.body132:                                       ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_initialize_stream_xfer, %if.then144)) #6
          to label %do.end148 [label %if.then144], !srcloc !175

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  %dev145 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev145, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug335, ptr noundef %27, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59) #6
  br label %do.end148

do.end148:                                        ; preds = %if.then144, %do.body132
  %call149 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 256) #6
  %call150 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef 1024) #6
  br label %if.end153

if.else151:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = tail call i32 @cx231xx_mode_register(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 257) #6
  br label %if.end153

if.end153:                                        ; preds = %if.else151, %do.end148, %do.end127, %do.end99, %do.end61, %do.end42, %do.end23, %do.end, %if.then.if.end153_crit_edge
  %status.0 = phi i32 [ 0, %if.then.if.end153_crit_edge ], [ %call150, %do.end148 ], [ %call110, %do.end99 ], [ %call129, %do.end127 ], [ %call62, %do.end61 ], [ %call43, %do.end42 ], [ %call24, %do.end23 ], [ %call5, %do.end ], [ %call152, %if.else151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i96 = alloca i32, align 4
  %gpio_val.addr.i94 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_scl_gpio, align 1
  %conv86 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv86
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %or = or i32 %shl, %3
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_sda_gpio, align 2
  %conv287 = zext i8 %5 to i32
  %shl3 = shl nuw i32 1, %conv287
  %or5 = or i32 %shl3, %or
  store i32 %or5, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %6 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_val, align 4
  %or10 = or i32 %7, %shl
  %or16 = or i32 %or10, %shl3
  store i32 %or16, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %8 = tail call i32 @llvm.bswap.i32(i32 %or16) #6
  %9 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or5, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner_scl_gpio, align 1
  %conv2290 = zext i8 %11 to i32
  %shl23 = shl nuw i32 1, %conv2290
  %12 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_val, align 4
  %or25 = or i32 %shl23, %13
  %14 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tuner_sda_gpio, align 2
  %conv2891 = zext i8 %15 to i32
  %shl29 = shl nuw i32 1, %conv2891
  %neg = xor i32 %shl29, -1
  %and = and i32 %or25, %neg
  store i32 %and, ptr %gpio_val, align 4
  %16 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i94)
  %18 = call i32 @llvm.bswap.i32(i32 %and) #6
  %19 = ptrtoint ptr %gpio_val.addr.i94 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gpio_val.addr.i94, align 4
  %call.i95 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull %gpio_val.addr.i94, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp34 = icmp slt i32 %call.i95, 0
  br i1 %cmp34, label %if.end.cleanup_crit_edge, label %if.end37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tuner_scl_gpio, align 1
  %conv4092 = zext i8 %21 to i32
  %shl41 = shl nuw i32 1, %conv4092
  %22 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_val, align 4
  %24 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tuner_sda_gpio, align 2
  %conv4793 = zext i8 %25 to i32
  %shl48 = shl nuw i32 1, %conv4793
  %26 = or i32 %shl41, %shl48
  %27 = xor i32 %26, -1
  %and51 = and i32 %23, %27
  store i32 %and51, ptr %gpio_val, align 4
  %28 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i96)
  %30 = call i32 @llvm.bswap.i32(i32 %and51) #6
  %31 = ptrtoint ptr %gpio_val.addr.i96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gpio_val.addr.i96, align 4
  %call.i97 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull %gpio_val.addr.i96, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp55 = icmp slt i32 %call.i97, 0
  %.call54 = select i1 %cmp55, i32 -22, i32 %call.i97
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %.call54, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_end(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i98 = alloca i32, align 4
  %gpio_val.addr.i96 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_scl_gpio, align 1
  %conv88 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv88
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %or = or i32 %shl, %3
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_sda_gpio, align 2
  %conv289 = zext i8 %5 to i32
  %shl3 = shl nuw i32 1, %conv289
  %or5 = or i32 %shl3, %or
  store i32 %or5, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %6 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_val, align 4
  %8 = or i32 %shl3, %shl
  %9 = xor i32 %8, -1
  %and16 = and i32 %7, %9
  store i32 %and16, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %10 = tail call i32 @llvm.bswap.i32(i32 %and16) #6
  %11 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or5, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner_scl_gpio, align 1
  %conv2292 = zext i8 %13 to i32
  %shl23 = shl nuw i32 1, %conv2292
  %14 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_val, align 4
  %or25 = or i32 %shl23, %15
  %16 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuner_sda_gpio, align 2
  %conv2893 = zext i8 %17 to i32
  %shl29 = shl nuw i32 1, %conv2893
  %neg30 = xor i32 %shl29, -1
  %and32 = and i32 %or25, %neg30
  store i32 %and32, ptr %gpio_val, align 4
  %18 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i96)
  %20 = call i32 @llvm.bswap.i32(i32 %and32) #6
  %21 = ptrtoint ptr %gpio_val.addr.i96 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gpio_val.addr.i96, align 4
  %call.i97 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull %gpio_val.addr.i96, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp36 = icmp slt i32 %call.i97, 0
  br i1 %cmp36, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tuner_scl_gpio, align 1
  %conv4294 = zext i8 %23 to i32
  %shl43 = shl nuw i32 1, %conv4294
  %24 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_dir, align 8
  %26 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tuner_sda_gpio, align 2
  %conv4995 = zext i8 %27 to i32
  %shl50 = shl nuw i32 1, %conv4995
  %28 = or i32 %shl43, %shl50
  %29 = xor i32 %28, -1
  %and53 = and i32 %25, %29
  store i32 %and53, ptr %gpio_dir, align 8
  %30 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i98)
  %32 = call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %gpio_val.addr.i98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %gpio_val.addr.i98, align 4
  %call.i99 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %and53, ptr noundef nonnull %gpio_val.addr.i98, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp57 = icmp slt i32 %call.i99, 0
  %.call56 = select i1 %cmp57, i32 -22, i32 %call.i99
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %.call56, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i138 = alloca i32, align 4
  %gpio_val.addr.i136 = alloca i32, align 4
  %gpio_val.addr.i134 = alloca i32, align 4
  %gpio_val.addr.i132 = alloca i32, align 4
  %gpio_val.addr.i130 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_scl_gpio, align 1
  %conv120 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv120
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %or = or i32 %shl, %3
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_sda_gpio, align 2
  %conv2121 = zext i8 %5 to i32
  %shl3 = shl nuw i32 1, %conv2121
  %or5 = or i32 %shl3, %or
  store i32 %or5, ptr %gpio_dir, align 8
  %conv8 = zext i8 %data to i32
  %gpio_val51 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %6 = lshr i32 128, %indvars.iv
  %7 = and i32 %6, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_scl_gpio, align 1
  %conv15126 = zext i8 %9 to i32
  %shl16 = shl nuw i32 1, %conv15126
  %neg = xor i32 %shl16, -1
  %10 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_val51, align 4
  %and17 = and i32 %11, %neg
  %12 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner_sda_gpio, align 2
  %conv20127 = zext i8 %13 to i32
  %shl21 = shl nuw i32 1, %conv20127
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %neg22 = xor i32 %shl21, -1
  %and24 = and i32 %and17, %neg22
  %14 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and24, ptr %gpio_val51, align 4
  %15 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %17 = call i32 @llvm.bswap.i32(i32 %and24) #6
  %18 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %19 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tuner_scl_gpio, align 1
  %conv29128 = zext i8 %20 to i32
  %shl30 = shl nuw i32 1, %conv29128
  %21 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_val51, align 4
  %or32 = or i32 %shl30, %22
  store i32 %or32, ptr %gpio_val51, align 4
  %23 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i130)
  %25 = call i32 @llvm.bswap.i32(i32 %or32) #6
  %26 = ptrtoint ptr %gpio_val.addr.i130 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gpio_val.addr.i130, align 4
  %call.i131 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull %gpio_val.addr.i130, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i130)
  %27 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tuner_scl_gpio, align 1
  %conv38129 = zext i8 %28 to i32
  %shl39 = shl nuw i32 1, %conv38129
  %neg40 = xor i32 %shl39, -1
  %29 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpio_val51, align 4
  %and42 = and i32 %30, %neg40
  store i32 %and42, ptr %gpio_val51, align 4
  %31 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i132)
  %33 = call i32 @llvm.bswap.i32(i32 %and42) #6
  %34 = ptrtoint ptr %gpio_val.addr.i132 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %gpio_val.addr.i132, align 4
  %call.i133 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull %gpio_val.addr.i132, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i132)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or58 = or i32 %shl21, %and17
  %35 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or58, ptr %gpio_val51, align 4
  %36 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i134)
  %38 = call i32 @llvm.bswap.i32(i32 %or58) #6
  %39 = ptrtoint ptr %gpio_val.addr.i134 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %gpio_val.addr.i134, align 4
  %call.i135 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %37, ptr noundef nonnull %gpio_val.addr.i134, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i134)
  %40 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tuner_scl_gpio, align 1
  %conv64124 = zext i8 %41 to i32
  %shl65 = shl nuw i32 1, %conv64124
  %42 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpio_val51, align 4
  %or67 = or i32 %shl65, %43
  store i32 %or67, ptr %gpio_val51, align 4
  %44 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i136)
  %46 = call i32 @llvm.bswap.i32(i32 %or67) #6
  %47 = ptrtoint ptr %gpio_val.addr.i136 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %gpio_val.addr.i136, align 4
  %call.i137 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %45, ptr noundef nonnull %gpio_val.addr.i136, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i136)
  %48 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tuner_scl_gpio, align 1
  %conv73125 = zext i8 %49 to i32
  %shl74 = shl nuw i32 1, %conv73125
  %neg75 = xor i32 %shl74, -1
  %50 = ptrtoint ptr %gpio_val51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gpio_val51, align 4
  %and77 = and i32 %51, %neg75
  store i32 %and77, ptr %gpio_val51, align 4
  %52 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i138)
  %54 = call i32 @llvm.bswap.i32(i32 %and77) #6
  %55 = ptrtoint ptr %gpio_val.addr.i138 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %gpio_val.addr.i138, align 4
  %call.i139 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %53, ptr noundef nonnull %gpio_val.addr.i138, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i138)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %status.1 = phi i32 [ %call.i133, %if.then ], [ %call.i139, %if.else ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_read_byte(ptr noundef %dev, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i74 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %gpio_val.addr.i71 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %value.076 = phi i8 [ 0, %entry ], [ %value.1, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_scl_gpio, align 1
  %conv268 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv268
  %neg = xor i32 %shl, -1
  %2 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_val, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %gpio_val, align 4
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %6 = call i32 @llvm.bswap.i32(i32 %and) #6
  %7 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %8 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_scl_gpio, align 1
  %conv669 = zext i8 %9 to i32
  %shl7 = shl nuw i32 1, %conv669
  %10 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_val, align 4
  %or = or i32 %shl7, %11
  store i32 %or, ptr %gpio_val, align 4
  %12 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i71)
  %14 = call i32 @llvm.bswap.i32(i32 %or) #6
  %15 = ptrtoint ptr %gpio_val.addr.i71 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gpio_val.addr.i71, align 4
  %call.i72 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %13, ptr noundef nonnull %gpio_val.addr.i71, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i71)
  %16 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_val, align 4
  %18 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmp.i, align 4, !annotation !176
  %call.i73 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull %tmp.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %24 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tuner_sda_gpio, align 2
  %conv1870 = zext i8 %25 to i32
  %shl19 = shl nuw i32 1, %conv1870
  %and20 = and i32 %shl19, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  %sub24 = sub nuw nsw i32 7, %indvars.iv
  %shl25 = shl nuw nsw i32 1, %sub24
  %26 = trunc i32 %shl25 to i8
  %conv28 = select i1 %cmp21.not, i8 0, i8 %26
  %value.1 = or i8 %conv28, %value.076
  %27 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %17, ptr %gpio_val, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tuner_scl_gpio, align 1
  %conv3267 = zext i8 %29 to i32
  %shl33 = shl nuw i32 1, %conv3267
  %neg34 = xor i32 %shl33, -1
  %30 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_val, align 4
  %and36 = and i32 %31, %neg34
  store i32 %and36, ptr %gpio_val, align 4
  %32 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i74)
  %34 = call i32 @llvm.bswap.i32(i32 %and36) #6
  %35 = ptrtoint ptr %gpio_val.addr.i74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gpio_val.addr.i74, align 4
  %call.i75 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull %gpio_val.addr.i74, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i74)
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %value.1, ptr %buf, align 1
  ret i32 %call.i75
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_read_ack(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i123 = alloca i32, align 4
  %tmp.i121 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %0 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_sda_gpio, align 2
  %conv113 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv113
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %4 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_scl_gpio, align 1
  %conv2114 = zext i8 %5 to i32
  %shl3 = shl nuw i32 1, %conv2114
  %6 = or i32 %shl, %shl3
  %7 = xor i32 %6, -1
  %and6 = and i32 %3, %7
  store i32 %and6, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %8 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %and6, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %nCnt.0 = phi i32 [ 10, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  call void @msleep(i32 noundef 2) #6
  %12 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i, align 4, !annotation !176
  %call.i120 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %13, ptr noundef nonnull %tmp.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio_val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %dec = add nsw i32 %nCnt.0, -1
  %19 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tuner_scl_gpio, align 1
  %conv15115 = zext i8 %20 to i32
  %shl16 = shl nuw i32 1, %conv15115
  %and17 = and i32 %shl16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp = icmp eq i32 %and17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp19 = icmp ne i32 %dec, 0
  %or.cond = select i1 %cmp, i1 %cmp19, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp eq i32 %dec, 0
  br i1 %cmp21, label %do.body23, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_gpio_i2c_read_ack.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_gpio_i2c_read_ack, %if.then27)) #6
          to label %if.end31 [label %if.then27], !srcloc !175

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev28, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_gpio_i2c_read_ack.__UNIQUE_ID_ddebug336, ptr noundef %22, ptr noundef nonnull @.str.69, i32 noundef 100) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.body23, %do.end.if.end31_crit_edge
  %23 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i121) #6
  %25 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp.i121, align 4, !annotation !176
  %call.i122 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull %tmp.i121, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i121) #6
  %26 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tuner_scl_gpio, align 1
  %conv62118 = zext i8 %27 to i32
  %shl63 = shl nuw i32 1, %conv62118
  %28 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gpio_dir, align 8
  %or65 = or i32 %shl63, %29
  store i32 %or65, ptr %gpio_dir, align 8
  %neg70 = xor i32 %shl63, -1
  %and72 = and i32 %9, %neg70
  %30 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and72, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i123)
  %31 = call i32 @llvm.bswap.i32(i32 %and72) #6
  %32 = ptrtoint ptr %gpio_val.addr.i123 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %gpio_val.addr.i123, align 4
  %call.i124 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or65, ptr noundef nonnull %gpio_val.addr.i123, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i123)
  ret i32 %call.i124
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_write_ack(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i83 = alloca i32, align 4
  %gpio_val.addr.i81 = alloca i32, align 4
  %gpio_val.addr.i79 = alloca i32, align 4
  %gpio_val.addr.i77 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %0 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_sda_gpio, align 2
  %conv71 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv71
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %or = or i32 %shl, %3
  store i32 %or, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %4 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %7 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %or, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %8 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_sda_gpio, align 2
  %conv472 = zext i8 %9 to i32
  %shl5 = shl nuw i32 1, %conv472
  %10 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_val, align 4
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %12 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner_scl_gpio, align 1
  %conv873 = zext i8 %13 to i32
  %shl9 = shl nuw i32 1, %conv873
  %14 = or i32 %shl5, %shl9
  %15 = xor i32 %14, -1
  %and12 = and i32 %11, %15
  store i32 %and12, ptr %gpio_val, align 4
  %16 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i77)
  %18 = call i32 @llvm.bswap.i32(i32 %and12) #6
  %19 = ptrtoint ptr %gpio_val.addr.i77 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gpio_val.addr.i77, align 4
  %call.i78 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull %gpio_val.addr.i77, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i77)
  %20 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tuner_scl_gpio, align 1
  %conv1874 = zext i8 %21 to i32
  %shl19 = shl nuw i32 1, %conv1874
  %22 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_val, align 4
  %or21 = or i32 %shl19, %23
  store i32 %or21, ptr %gpio_val, align 4
  %24 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i79)
  %26 = call i32 @llvm.bswap.i32(i32 %or21) #6
  %27 = ptrtoint ptr %gpio_val.addr.i79 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %gpio_val.addr.i79, align 4
  %call.i80 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull %gpio_val.addr.i79, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i79)
  %28 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tuner_scl_gpio, align 1
  %conv2775 = zext i8 %29 to i32
  %shl28 = shl nuw i32 1, %conv2775
  %neg29 = xor i32 %shl28, -1
  %30 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_val, align 4
  %and31 = and i32 %31, %neg29
  store i32 %and31, ptr %gpio_val, align 4
  %32 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i81)
  %34 = call i32 @llvm.bswap.i32(i32 %and31) #6
  %35 = ptrtoint ptr %gpio_val.addr.i81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gpio_val.addr.i81, align 4
  %call.i82 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull %gpio_val.addr.i81, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i81)
  %36 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tuner_sda_gpio, align 2
  %conv3776 = zext i8 %37 to i32
  %shl38 = shl nuw i32 1, %conv3776
  %neg39 = xor i32 %shl38, -1
  %38 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpio_dir, align 8
  %and41 = and i32 %39, %neg39
  store i32 %and41, ptr %gpio_dir, align 8
  %40 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i83)
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  %43 = ptrtoint ptr %gpio_val.addr.i83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %gpio_val.addr.i83, align 4
  %call.i84 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %and41, ptr noundef nonnull %gpio_val.addr.i83, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i83)
  ret i32 %call.i84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_write_nak(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i47 = alloca i32, align 4
  %gpio_val.addr.i45 = alloca i32, align 4
  %gpio_val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_scl_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tuner_scl_gpio, align 1
  %conv41 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv41
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %or = or i32 %shl, %3
  %tuner_sda_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tuner_sda_gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_sda_gpio, align 2
  %conv242 = zext i8 %5 to i32
  %shl3 = shl nuw i32 1, %conv242
  %neg = xor i32 %shl3, -1
  %and = and i32 %or, %neg
  store i32 %and, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %6 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %gpio_val.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gpio_val.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %and, ptr noundef nonnull %gpio_val.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i)
  %10 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner_scl_gpio, align 1
  %conv843 = zext i8 %11 to i32
  %shl9 = shl nuw i32 1, %conv843
  %neg10 = xor i32 %shl9, -1
  %12 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_val, align 4
  %and12 = and i32 %13, %neg10
  store i32 %and12, ptr %gpio_val, align 4
  %14 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i45)
  %16 = call i32 @llvm.bswap.i32(i32 %and12) #6
  %17 = ptrtoint ptr %gpio_val.addr.i45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %gpio_val.addr.i45, align 4
  %call.i46 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull %gpio_val.addr.i45, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i45)
  %18 = ptrtoint ptr %tuner_scl_gpio to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tuner_scl_gpio, align 1
  %conv1844 = zext i8 %19 to i32
  %shl19 = shl nuw i32 1, %conv1844
  %20 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_val, align 4
  %or21 = or i32 %shl19, %21
  store i32 %or21, ptr %gpio_val, align 4
  %22 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_dir, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i47)
  %24 = call i32 @llvm.bswap.i32(i32 %or21) #6
  %25 = ptrtoint ptr %gpio_val.addr.i47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %gpio_val.addr.i47, align 4
  %call.i48 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %23, ptr noundef nonnull %gpio_val.addr.i47, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i47)
  ret i32 %call.i48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_read(ptr noundef %dev, i8 noundef zeroext %dev_addr, ptr nocapture noundef writeonly %buf, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  %gpio_val.addr.i47.i = alloca i32, align 4
  %gpio_val.addr.i45.i = alloca i32, align 4
  %gpio_val.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_i2c_lock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %gpio_i2c_lock, i32 noundef 0) #6
  %call = tail call i32 @cx231xx_gpio_i2c_start(ptr noundef %dev)
  %shl = shl i8 %dev_addr, 1
  %add = or i8 %shl, 1
  %call2 = tail call i32 @cx231xx_gpio_i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %add)
  %call3 = tail call i32 @cx231xx_gpio_i2c_read_ack(ptr noundef %dev)
  %conv4 = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp30.not = icmp eq i8 %len, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %add8, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.031
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %call7 = tail call i32 @cx231xx_gpio_i2c_read_byte(ptr noundef %dev, ptr noundef %arrayidx)
  %add8 = add nuw nsw i32 %i.031, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %conv4)
  %cmp10.not = icmp eq i32 %add8, %conv4
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @cx231xx_gpio_i2c_write_ack(ptr noundef %dev)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add8, %conv4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tuner_scl_gpio.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 12
  %1 = ptrtoint ptr %tuner_scl_gpio.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tuner_scl_gpio.i, align 1
  %conv41.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %conv41.i
  %gpio_dir.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 75
  %3 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_dir.i, align 8
  %or.i = or i32 %shl.i, %4
  %tuner_sda_gpio.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 13
  %5 = ptrtoint ptr %tuner_sda_gpio.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tuner_sda_gpio.i, align 2
  %conv242.i = zext i8 %6 to i32
  %shl3.i = shl nuw i32 1, %conv242.i
  %neg.i = xor i32 %shl3.i, -1
  %and.i = and i32 %or.i, %neg.i
  store i32 %and.i, ptr %gpio_dir.i, align 8
  %gpio_val.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 76
  %7 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_val.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i.i) #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %gpio_val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gpio_val.addr.i.i, align 4
  %call.i.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %and.i, ptr noundef nonnull %gpio_val.addr.i.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i.i) #6
  %11 = ptrtoint ptr %tuner_scl_gpio.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tuner_scl_gpio.i, align 1
  %conv843.i = zext i8 %12 to i32
  %shl9.i = shl nuw i32 1, %conv843.i
  %neg10.i = xor i32 %shl9.i, -1
  %13 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_val.i, align 4
  %and12.i = and i32 %14, %neg10.i
  store i32 %and12.i, ptr %gpio_val.i, align 4
  %15 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_dir.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i45.i) #6
  %17 = call i32 @llvm.bswap.i32(i32 %and12.i) #6
  %18 = ptrtoint ptr %gpio_val.addr.i45.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio_val.addr.i45.i, align 4
  %call.i46.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull %gpio_val.addr.i45.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i45.i) #6
  %19 = ptrtoint ptr %tuner_scl_gpio.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tuner_scl_gpio.i, align 1
  %conv1844.i = zext i8 %20 to i32
  %shl19.i = shl nuw i32 1, %conv1844.i
  %21 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_val.i, align 4
  %or21.i = or i32 %shl19.i, %22
  store i32 %or21.i, ptr %gpio_val.i, align 4
  %23 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_dir.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_val.addr.i47.i) #6
  %25 = call i32 @llvm.bswap.i32(i32 %or21.i) #6
  %26 = ptrtoint ptr %gpio_val.addr.i47.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gpio_val.addr.i47.i, align 4
  %call.i48.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull %gpio_val.addr.i47.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_val.addr.i47.i) #6
  %call14 = call i32 @cx231xx_gpio_i2c_end(ptr noundef %dev)
  call void @mutex_unlock(ptr noundef %gpio_i2c_lock) #6
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_gpio_i2c_write(ptr noundef %dev, i8 noundef zeroext %dev_addr, ptr nocapture noundef readonly %buf, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_i2c_lock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %gpio_i2c_lock, i32 noundef 0) #6
  %call = tail call i32 @cx231xx_gpio_i2c_start(ptr noundef %dev)
  %shl = shl i8 %dev_addr, 1
  %call2 = tail call i32 @cx231xx_gpio_i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %shl)
  %call3 = tail call i32 @cx231xx_gpio_i2c_read_ack(ptr noundef %dev)
  %conv4 = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp19.not = icmp eq i8 %len, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call6 = tail call i32 @cx231xx_gpio_i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %1)
  %call7 = tail call i32 @cx231xx_gpio_i2c_read_ack(ptr noundef %dev)
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call8 = tail call i32 @cx231xx_gpio_i2c_end(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %gpio_i2c_lock) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !82, !83, !84, !85, !87, !89, !90, !91, !93, !95, !97, !98, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !162, !163, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 73, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @initGPIO.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @initGPIO.__UNIQUE_ID_ddebug304, !7, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 76, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 146, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug305, !9, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 155, i32 4}
!14 = !{ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug306, !13, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 162, i32 4}
!17 = !{ptr @cx231xx_afe_init_super_block.__UNIQUE_ID_ddebug307, !16, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 403, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug308, !19, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!22 = !{ptr @cx231xx_afe_update_power_control.__UNIQUE_ID_ddebug309, !23, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 460, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 566, i32 5}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cx231xx_set_video_input_mux._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx231xx_set_video_input_mux._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @cx231xx_set_video_input_mux._entry.14, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 584, i32 5}
!33 = !{ptr @cx231xx_set_video_input_mux._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 614, i32 3}
!36 = !{ptr @cx231xx_set_video_input_mux._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cx231xx_set_video_input_mux._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 634, i32 4}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cx231xx_set_decoder_video_input._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 644, i32 3}
!45 = !{ptr @cx231xx_set_decoder_video_input._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 676, i32 4}
!49 = !{ptr @cx231xx_set_decoder_video_input._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @cx231xx_set_decoder_video_input._entry.27, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 721, i32 4}
!53 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cx231xx_set_decoder_video_input._entry.29, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 796, i32 5}
!56 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cx231xx_set_decoder_video_input._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 832, i32 5}
!59 = !{ptr @cx231xx_set_decoder_video_input._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_cx231xx_enable656, !61, !"__ksymtab_cx231xx_enable656", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 952, i32 1}
!62 = !{ptr @__ksymtab_cx231xx_disable656, !63, !"__ksymtab_cx231xx_disable656", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 965, i32 1}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 976, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug310, !65, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 983, i32 3}
!70 = !{ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug311, !69, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1010, i32 3}
!73 = !{ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug312, !72, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1037, i32 3}
!76 = !{ptr @cx231xx_do_mode_ctrl_overrides.__UNIQUE_ID_ddebug313, !75, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!77 = !{ptr @__ksymtab_cx231xx_unmute_audio, !78, !"__ksymtab_cx231xx_unmute_audio", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1073, i32 1}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1221, i32 5}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cx231xx_set_audio_decoder_input._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx231xx_set_audio_decoder_input._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__ksymtab_cx231xx_enable_i2c_port_3, !86, !"__ksymtab_cx231xx_enable_i2c_port_3", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1323, i32 1}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1351, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug314, !88, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!91 = !{ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug315, !92, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1357, i32 3}
!93 = !{ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug316, !94, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1363, i32 3}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1368, i32 2}
!97 = !{ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug317, !96, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!98 = !{ptr @cx231xx_dump_HH_reg.__UNIQUE_ID_ddebug318, !99, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1371, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1541, i32 2}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug319, !101, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1561, i32 2}
!106 = !{ptr @cx231xx_set_Colibri_For_LowIF.__UNIQUE_ID_ddebug320, !105, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1595, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug321, !108, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1639, i32 2}
!113 = !{ptr @cx231xx_set_DIF_bandpass.__UNIQUE_ID_ddebug322, !112, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 1751, i32 2}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cx231xx_dif_set_standard.__UNIQUE_ID_ddebug323, !115, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2154, i32 2}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cx231xx_tuner_post_channel_change.__UNIQUE_ID_ddebug324, !119, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2256, i32 3}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cx231xx_set_power_mode.__UNIQUE_ID_ddebug325, !123, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2496, i32 2}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @cx231xx_start_stream.__UNIQUE_ID_ddebug326, !127, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2521, i32 2}
!132 = !{ptr @cx231xx_stop_stream.__UNIQUE_ID_ddebug327, !131, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2549, i32 4}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug328, !134, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2556, i32 4}
!139 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug329, !138, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2562, i32 4}
!142 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug330, !141, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2569, i32 4}
!145 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug331, !144, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2575, i32 4}
!148 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug332, !147, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2579, i32 5}
!151 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug333, !150, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2603, i32 5}
!154 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug334, !153, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2612, i32 4}
!157 = !{ptr @cx231xx_initialize_stream_xfer.__UNIQUE_ID_ddebug335, !156, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!158 = !{ptr @__ksymtab_cx231xx_capture_start, !159, !"__ksymtab_cx231xx_capture_start", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2676, i32 1}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/cx231xx/cx231xx-avcore.c", i32 2967, i32 3}
!162 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cx231xx_gpio_i2c_read_ack.__UNIQUE_ID_ddebug336, !161, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!164 = !{ptr @Dif_set_array, !165, !"Dif_set_array", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/cx231xx/cx231xx-dif.h", i32 19, i32 28}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 2148876908, i64 2148876913, i64 2148876926, i64 2148876970, i64 2148877004, i64 2148877025}
!176 = !{!"auto-init"}
!177 = !{i64 633450, i64 633477}
!178 = !{i64 634145, i64 634172, i64 634205, i64 634226, i64 634253, i64 634279}
