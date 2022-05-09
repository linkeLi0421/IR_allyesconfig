; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-video.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx88_video_mux\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_video_mux\09\09\09\09"
module asm "\09.long\09__crc_cx88_video_mux\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_video_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_video_mux\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_video_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_querycap\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_querycap\09\09\09\09"
module asm "\09.long\09__crc_cx88_querycap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_querycap:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_querycap\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_querycap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_enum_input\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_enum_input\09\09\09\09"
module asm "\09.long\09__crc_cx88_enum_input\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_enum_input:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_enum_input\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_enum_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_set_freq\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_set_freq\09\09\09\09"
module asm "\09.long\09__crc_cx88_set_freq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_set_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_set_freq\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_set_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx88_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx8800_fmt = type { i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx8800_dev = type { ptr, %struct.spinlock, i32, %struct.video_device, %struct.video_device, %struct.video_device, ptr, i8, i8, ptr, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx8800_suspend_state }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx8800_suspend_state = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.163, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.163 = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.130, %union.anon.131, i32, ptr, i32, %struct.anon.132, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { ptr }
%struct.anon.132 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.cx88_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx88_riscmem }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }
%struct.cx88_riscmem = type { i32, ptr, ptr, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.136 }
%union.anon.136 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.138, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.138 = type { i8 }
%struct.cx8802_dev = type { ptr, %struct.spinlock, ptr, i8, i8, %struct.cx88_dmaqueue, %struct.vb2_queue, i32, i32, %struct.cx8802_suspend_state, %struct.list_head, %struct.video_device, i32, %struct.cx2341x_handler, %struct.vb2_dvb_frontends, ptr, i8, %struct.list_head, %struct.work_struct }
%struct.cx8802_suspend_state = type { i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.165 = type { ptr, ptr }
%struct.anon.166 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr }
%struct.anon.169 = type { ptr, ptr }
%struct.anon.170 = type { ptr, ptr }
%struct.anon.171 = type { ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.129 }
%union.anon.129 = type { i32, [28 x i8] }

@__UNIQUE_ID_description385 = internal constant [65 x i8] c"cx8800.description=v4l2 driver module for cx2388x based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [58 x i8] c"cx8800.author=Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [42 x i8] c"cx8800.file=drivers/media/pci/cx88/cx8800\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [22 x i8] c"cx8800.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version389 = internal constant [21 x i8] c"cx8800.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cx8800\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_video_nr = internal constant [16 x i8] c"cx8800.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype390 = internal constant [38 x i8] c"cx8800.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__param_str_vbi_nr = internal constant [14 x i8] c"cx8800.vbi_nr\00", align 1
@__param_arr_vbi_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_nr }, align 4
@__param_vbi_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_vbi_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_nrtype391 = internal constant [36 x i8] c"cx8800.parmtype=vbi_nr:array of int\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [16 x i8] c"cx8800.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype392 = internal constant [38 x i8] c"cx8800.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr393 = internal constant [42 x i8] c"cx8800.parm=video_nr:video device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_nr394 = internal constant [38 x i8] c"cx8800.parm=vbi_nr:vbi device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr395 = internal constant [42 x i8] c"cx8800.parm=radio_nr:radio device numbers\00", section ".modinfo", align 1
@__param_str_video_debug = internal constant [19 x i8] c"cx8800.video_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_video_debug = internal constant %struct.kernel_param { ptr @__param_str_video_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @video_debug } }, section "__param", align 4
@__UNIQUE_ID_video_debugtype396 = internal constant [32 x i8] c"cx8800.parmtype=video_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_debug397 = internal constant [54 x i8] c"cx8800.parm=video_debug:enable debug messages [video]\00", section ".modinfo", align 1
@__param_str_irq_debug = internal constant [17 x i8] c"cx8800.irq_debug\00", align 1
@irq_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_debug = internal constant %struct.kernel_param { ptr @__param_str_irq_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @irq_debug } }, section "__param", align 4
@__UNIQUE_ID_irq_debugtype398 = internal constant [30 x i8] c"cx8800.parmtype=irq_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_debug399 = internal constant [58 x i8] c"cx8800.parm=irq_debug:enable debug messages [IRQ handler]\00", section ".modinfo", align 1
@cx88_video_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017cx8800: %s: video:video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx88_video_mux\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/cx88/cx88-video.c\00", [60 x i8] zeroinitializer }, align 32
@cx88_video_mux._entry_ptr = internal global ptr @cx88_video_mux._entry, section ".printk_index", align 4
@__kstrtab_cx88_video_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_video_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_video_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_video_mux to i32), ptr @__kstrtab_cx88_video_mux, ptr @__kstrtabns_cx88_video_mux }, section "___ksymtab+cx88_video_mux", align 4
@__kstrtab_cx88_querycap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_querycap = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_querycap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_querycap to i32), ptr @__kstrtab_cx88_querycap, ptr @__kstrtabns_cx88_querycap }, section "___ksymtab+cx88_querycap", align 4
@cx88_enum_input.iname = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite1\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite2\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite3\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite4\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cable TV\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVB\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"for debug only\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_cx88_enum_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_enum_input = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_enum_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_enum_input to i32), ptr @__kstrtab_cx88_enum_input, ptr @__kstrtabns_cx88_enum_input }, section "___ksymtab+cx88_enum_input", align 4
@__kstrtab_cx88_set_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_set_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_set_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_set_freq to i32), ptr @__kstrtab_cx88_set_freq, ptr @__kstrtabns_cx88_set_freq }, section "___ksymtab+cx88_set_freq", align 4
@__initcall__kmod_cx8800__400_1634_cx8800_pci_driver_init6 = internal global ptr @cx8800_pci_driver_init, section ".initcall6.init", align 4
@cx8800_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cx8800_pci_tbl, ptr @cx8800_initdev, ptr @cx8800_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx8800_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cx8800_pci_driver_exit = internal global ptr @cx8800_pci_driver_exit, section ".exitcall.exit", align 4
@video_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@vbi_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx8800_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5361, i32 34816, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cx8800_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cx8800_suspend, ptr @cx8800_resume, ptr @cx8800_suspend, ptr @cx8800_resume, ptr @cx8800_suspend, ptr @cx8800_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016cx8800: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx8800_initdev\00", [17 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr = internal global ptr @cx8800_initdev._entry, section ".printk_index", align 4
@cx8800_initdev._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013cx8800: Oops: no 32bit PCI DMA ???\0A\00", [58 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.19 = internal global ptr @cx8800_initdev._entry.17, section ".printk_index", align 4
@cx8800_initdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.5, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013cx8800: can't get IRQ %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.23 = internal global ptr @cx8800_initdev._entry.21, section ".printk_index", align 4
@cx8800_aud_ctls = internal constant { [3 x %struct.cx88_ctrl], [40 x i8] } { [3 x %struct.cx88_ctrl] [%struct.cx88_ctrl { i32 9963785, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3278228, i32 1, i32 64, i32 6 }, %struct.cx88_ctrl { i32 9963781, i32 0, i32 63, i32 1, i32 63, i32 0, i32 3278228, i32 1, i32 63, i32 0 }, %struct.cx88_ctrl { i32 9963782, i32 0, i32 127, i32 1, i32 64, i32 0, i32 3278232, i32 2, i32 127, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cx8800_ctrl_aud_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx8800_s_aud_ctrl }, [20 x i8] zeroinitializer }, align 32
@cx8800_vid_ctls = internal constant { [8 x %struct.cx88_ctrl], [64 x i8] } { [8 x %struct.cx88_ctrl] [%struct.cx88_ctrl { i32 9963776, i32 0, i32 255, i32 1, i32 127, i32 128, i32 3211536, i32 0, i32 255, i32 0 }, %struct.cx88_ctrl { i32 9963777, i32 0, i32 255, i32 1, i32 63, i32 0, i32 3211536, i32 0, i32 65280, i32 8 }, %struct.cx88_ctrl { i32 9963779, i32 0, i32 255, i32 1, i32 127, i32 128, i32 3211544, i32 0, i32 255, i32 0 }, %struct.cx88_ctrl { i32 9963778, i32 0, i32 255, i32 1, i32 127, i32 0, i32 3211540, i32 0, i32 255, i32 0 }, %struct.cx88_ctrl { i32 9963803, i32 0, i32 4, i32 1, i32 0, i32 0, i32 3211616, i32 0, i32 896, i32 7 }, %struct.cx88_ctrl { i32 9963805, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3211524, i32 0, i32 1024, i32 10 }, %struct.cx88_ctrl { i32 9963806, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3211524, i32 0, i32 512, i32 9 }, %struct.cx88_ctrl { i32 9963809, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3211552, i32 0, i32 6144, i32 11 }], [64 x i8] zeroinitializer }, align 32
@cx8800_ctrl_vid_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx8800_s_vid_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8775\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvaudio\00", [24 x i8] zeroinitializer }, align 32
@cx8800_initdev.rtc_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"isl1208\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 111, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-isl1208\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ir-kbd-i2c\00", [21 x i8] zeroinitializer }, align 32
@cx8800_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx8800_vbi_qops = external dso_local constant %struct.vb2_ops, align 4
@cx8800_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx8800-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 8355831, ptr null, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.5, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx8800: can't register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.31 = internal global ptr @cx8800_initdev._entry.29, section ".printk_index", align 4
@cx8800_initdev._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.5, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016cx8800: registered device %s [v4l2]\0A\00", [57 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.34 = internal global ptr @cx8800_initdev._entry.32, section ".printk_index", align 4
@cx8800_vbi_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx8800-vbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 8355831, ptr null, ptr @vbi_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbi\00", [28 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.5, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cx8800: can't register vbi device\0A\00", [59 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.38 = internal global ptr @cx8800_initdev._entry.36, section ".printk_index", align 4
@cx8800_initdev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.5, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx8800: registered device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.41 = internal global ptr @cx8800_initdev._entry.39, section ".printk_index", align 4
@cx8800_radio_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @radio_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx8800-radio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr null, ptr @radio_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.16, ptr @.str.5, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx8800: can't register radio device\0A\00", [57 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.45 = internal global ptr @cx8800_initdev._entry.43, section ".printk_index", align 4
@cx8800_initdev._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.5, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.47 = internal global ptr @cx8800_initdev._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx88 tvaudio\00", [19 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.16, ptr @.str.5, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013cx8800: failed to create cx88 audio thread, err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx8800_initdev._entry_ptr.51 = internal global ptr @cx8800_initdev._entry.49, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx8800_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014cx8800: irq loop -- clearing mask\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx8800_irq\00", [21 x i8] zeroinitializer }, align 32
@cx8800_irq._entry_ptr = internal global ptr @cx8800_irq._entry, section ".printk_index", align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq vid\00", [24 x i8] zeroinitializer }, align 32
@cx8800_vid_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014cx8800: video risc op code error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx8800_vid_irq\00", [17 x i8] zeroinitializer }, align 32
@cx8800_vid_irq._entry_ptr = internal global ptr @cx8800_vid_irq._entry, section ".printk_index", align 4
@cx88_sram_channels = external dso_local constant [0 x %struct.sram_channel], align 4
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"y_risci1\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u_risci1\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v_risci1\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbi_risc1\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"y_risci2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u_risci2\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v_risci2\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbi_risc2\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"y_oflow\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u_oflow\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v_oflow\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbi_oflow\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"y_sync\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u_sync\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v_sync\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbi_sync\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opc_err\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"par_err\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rip_err\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_abort\00", [22 x i8] zeroinitializer }, align 32
@cx88_vid_irqs = internal global { <{ [20 x ptr], [12 x ptr] }>, [32 x i8] } { <{ [20 x ptr], [12 x ptr] }> <{ [20 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [12 x ptr] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@cx8800_s_aud_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\017cx8800: %s: video:set_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx8800_s_aud_ctrl\00", [46 x i8] zeroinitializer }, align 32
@cx8800_s_aud_ctrl._entry_ptr = internal global ptr @cx8800_s_aud_ctrl._entry, section ".printk_index", align 4
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" [shadowed]\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cx8800_s_vid_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.82, ptr @.str.5, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx8800_s_vid_ctrl\00", [46 x i8] zeroinitializer }, align 32
@cx8800_s_vid_ctrl._entry_ptr = internal global ptr @cx8800_s_vid_ctrl._entry, section ".printk_index", align 4
@formats = internal constant { [10 x %struct.cx8800_fmt], [32 x i8] } { [10 x %struct.cx8800_fmt] [%struct.cx8800_fmt { i32 1497715271, i32 8, i32 1, i32 102 }, %struct.cx8800_fmt { i32 1329743698, i32 16, i32 1, i32 51 }, %struct.cx8800_fmt { i32 1363298130, i32 16, i32 1, i32 819 }, %struct.cx8800_fmt { i32 1346520914, i32 16, i32 1, i32 34 }, %struct.cx8800_fmt { i32 1380075346, i32 16, i32 1, i32 802 }, %struct.cx8800_fmt { i32 861030210, i32 24, i32 1, i32 17 }, %struct.cx8800_fmt { i32 877807426, i32 32, i32 1, i32 0 }, %struct.cx8800_fmt { i32 876758866, i32 32, i32 1, i32 3840 }, %struct.cx8800_fmt { i32 1448695129, i32 16, i32 1, i32 68 }, %struct.cx8800_fmt { i32 1498831189, i32 16, i32 1, i32 836 }], [32 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017cx8800: %s: video:[%p/%d] %s - %dx%d %dbpp 0x%08x - dma=0x%08lx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.5, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx8800: %s: video:[%p/%d] buffer_queue - first active\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.5, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017cx8800: %s: video:[%p/%d] buffer_queue - append to active\0A\00", [35 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.90 = internal global ptr @buffer_queue._entry.88, section ".printk_index", align 4
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@vbi_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx8800_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx8800_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx8800_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @radio_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@radio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radio_g_tuner, ptr @radio_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@cx8800_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016cx8800: suspend video\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx8800_suspend\00", [17 x i8] zeroinitializer }, align 32
@cx8800_suspend._entry_ptr = internal global ptr @cx8800_suspend._entry, section ".printk_index", align 4
@cx8800_suspend._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.5, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016cx8800: suspend vbi\0A\00", [41 x i8] zeroinitializer }, align 32
@cx8800_suspend._entry_ptr.97 = internal global ptr @cx8800_suspend._entry.95, section ".printk_index", align 4
@cx8800_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016cx8800: resume video\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx8800_resume\00", [18 x i8] zeroinitializer }, align 32
@cx8800_resume._entry_ptr = internal global ptr @cx8800_resume._entry, section ".printk_index", align 4
@cx8800_resume._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.5, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016cx8800: resume vbi\0A\00", [42 x i8] zeroinitializer }, align 32
@cx8800_resume._entry_ptr.102 = internal global ptr @cx8800_resume._entry.100, section ".printk_index", align 4
@restart_video_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017cx8800: %s: video:restart_queue [%p/%d]: restart dma\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"restart_video_queue\00", [44 x i8] zeroinitializer }, align 32
@restart_video_queue._entry_ptr = internal global ptr @restart_video_queue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 31, i64 59, i64 65]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 9963781, i64 9963782, i64 9963785]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 9963781, i64 9963782]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 9963778, i64 9963803, i64 9963805]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [12 x i64] [i64 10, i64 32, i64 861030210, i64 876758866, i64 877807426, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.110 = internal global [12 x i64] [i64 10, i64 32, i64 861030210, i64 876758866, i64 877807426, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1497715271, i64 1498831189]
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 37, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"video_debug\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 53, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"irq_debug\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 57, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 286, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 846, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 847, i32 28 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 848, i32 28 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 849, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 850, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 851, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 852, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 853, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 854, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 855, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"cx8800_pci_driver\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1626, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 41, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"vbi_nr\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 42, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 43, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"cx8800_pci_tbl\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1612, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"cx8800_pm_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1624, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1286, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1294, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1299, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1311, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"cx8800_aud_ctls\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 241, i32 31 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"cx8800_ctrl_aud_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1244, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"cx8800_vid_ctls\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 153, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"cx8800_ctrl_vid_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1240, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1351, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1376, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant [9 x i8] c"rtc_info\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1382, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1386, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1391, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"cx8800_video_qops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 559, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"cx8800_video_template\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1172, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1445, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1456, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1459, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"cx8800_vbi_template\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1205, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1463, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1473, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1476, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"cx8800_radio_template\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1234, i32 34 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1481, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1488, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1491, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1497, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1501, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1122, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1072, i32 22 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1078, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1054, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1054, i32 14 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1054, i32 26 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1054, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1055, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1055, i32 14 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1055, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1055, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1056, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1056, i32 14 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1056, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1056, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1057, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1057, i32 14 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1057, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1057, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1058, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1058, i32 14 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1058, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1058, i32 38 }
@___asan_gen_.384 = private unnamed_addr constant [14 x i8] c"cx88_vid_irqs\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1053, i32 20 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 691, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 642, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 70, i32 32 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 479, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1163, i32 7 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 515, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 523, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1133, i32 42 }
@___asan_gen_.441 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1143, i32 36 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 811, i32 25 }
@___asan_gen_.447 = private unnamed_addr constant [14 x i8] c"vbi_ioctl_ops\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1179, i32 36 }
@___asan_gen_.450 = private unnamed_addr constant [11 x i8] c"radio_fops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1212, i32 42 }
@___asan_gen_.453 = private unnamed_addr constant [16 x i8] c"radio_ioctl_ops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1220, i32 36 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1032, i32 19 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1562, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1566, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1598, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1602, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private constant [39 x i8] c"../drivers/media/pci/cx88/cx88-video.c\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 411, i32 3 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_irq_debug399, ptr @__UNIQUE_ID_irq_debugtype398, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_radio_nr395, ptr @__UNIQUE_ID_radio_nrtype392, ptr @__UNIQUE_ID_vbi_nr394, ptr @__UNIQUE_ID_vbi_nrtype391, ptr @__UNIQUE_ID_version389, ptr @__UNIQUE_ID_video_debug397, ptr @__UNIQUE_ID_video_debugtype396, ptr @__UNIQUE_ID_video_nr393, ptr @__UNIQUE_ID_video_nrtype390, ptr @__exitcall_cx8800_pci_driver_exit, ptr @__initcall__kmod_cx8800__400_1634_cx8800_pci_driver_init6, ptr @__ksymtab_cx88_enum_input, ptr @__ksymtab_cx88_querycap, ptr @__ksymtab_cx88_set_freq, ptr @__ksymtab_cx88_video_mux, ptr @__modver_attr, ptr @__param_irq_debug, ptr @__param_radio_nr, ptr @__param_vbi_nr, ptr @__param_video_debug, ptr @__param_video_nr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @buffer_queue._entry, ptr @buffer_queue._entry.88, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.90, ptr @cx8800_initdev._entry, ptr @cx8800_initdev._entry.17, ptr @cx8800_initdev._entry.21, ptr @cx8800_initdev._entry.29, ptr @cx8800_initdev._entry.32, ptr @cx8800_initdev._entry.36, ptr @cx8800_initdev._entry.39, ptr @cx8800_initdev._entry.43, ptr @cx8800_initdev._entry.46, ptr @cx8800_initdev._entry.49, ptr @cx8800_initdev._entry_ptr, ptr @cx8800_initdev._entry_ptr.19, ptr @cx8800_initdev._entry_ptr.23, ptr @cx8800_initdev._entry_ptr.31, ptr @cx8800_initdev._entry_ptr.34, ptr @cx8800_initdev._entry_ptr.38, ptr @cx8800_initdev._entry_ptr.41, ptr @cx8800_initdev._entry_ptr.45, ptr @cx8800_initdev._entry_ptr.47, ptr @cx8800_initdev._entry_ptr.51, ptr @cx8800_irq._entry, ptr @cx8800_irq._entry_ptr, ptr @cx8800_pci_driver_exit, ptr @cx8800_resume._entry, ptr @cx8800_resume._entry.100, ptr @cx8800_resume._entry_ptr, ptr @cx8800_resume._entry_ptr.102, ptr @cx8800_s_aud_ctrl._entry, ptr @cx8800_s_aud_ctrl._entry_ptr, ptr @cx8800_s_vid_ctrl._entry, ptr @cx8800_s_vid_ctrl._entry_ptr, ptr @cx8800_suspend._entry, ptr @cx8800_suspend._entry.95, ptr @cx8800_suspend._entry_ptr, ptr @cx8800_suspend._entry_ptr.97, ptr @cx8800_vid_irq._entry, ptr @cx8800_vid_irq._entry_ptr, ptr @cx88_video_mux._entry, ptr @cx88_video_mux._entry_ptr, ptr @restart_video_queue._entry, ptr @restart_video_queue._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_debug, ptr @irq_debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cx88_enum_input.iname, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cx8800_pci_driver, ptr @video_nr, ptr @vbi_nr, ptr @radio_nr, ptr @cx8800_pci_tbl, ptr @cx8800_pm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @cx8800_initdev.__key, ptr @.str.20, ptr @.str.22, ptr @cx8800_aud_ctls, ptr @cx8800_ctrl_aud_ops, ptr @cx8800_vid_ctls, ptr @cx8800_ctrl_vid_ops, ptr @.str.24, ptr @.str.25, ptr @cx8800_initdev.rtc_info, ptr @.str.26, ptr @.str.27, ptr @cx8800_video_qops, ptr @cx8800_video_template, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @cx8800_vbi_template, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @cx8800_radio_template, ptr @.str.42, ptr @.str.44, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @cx88_vid_irqs, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @formats, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @video_fops, ptr @video_ioctl_ops, ptr @.str.91, ptr @vbi_ioctl_ops, ptr @radio_fops, ptr @radio_ioctl_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_video_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_enum_input.iname to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_aud_ctls to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_ctrl_aud_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_vid_ctls to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_ctrl_vid_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev.rtc_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_vbi_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_radio_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_initdev._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_vid_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_vid_irqs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_s_aud_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_s_vid_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_suspend._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_resume._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_video_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_video_mux(ptr noundef %core, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end15_crit_edge, label %do.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vmux = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 5
  %1 = ptrtoint ptr %vmux to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %vmux, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.cast = zext i8 %bf.lshr to i32
  %gpio0 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 1
  %2 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio0, align 4
  %gpio1 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 2
  %4 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio1, align 4
  %gpio2 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 3
  %6 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio2, align 4
  %gpio3 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 4
  %8 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %input, i32 noundef %bf.cast, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  %input16 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 35
  %10 = ptrtoint ptr %input16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %input, ptr %input16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %12, i32 802881
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  %14 = and i32 %13, -12582913
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx24 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input
  %vmux25 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 5
  %16 = ptrtoint ptr %vmux25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load26 = load i8, ptr %vmux25, align 4
  %bf.lshr27 = lshr i8 %bf.load26, 6
  %bf.cast28 = zext i8 %bf.lshr27 to i32
  %shl = shl nuw nsw i32 %bf.cast28, 14
  %or = or i32 %shl, %15
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %19, i32 802881
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %17) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %gpio337 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 4
  %20 = ptrtoint ptr %gpio337 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio337, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %24, i32 868359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %22) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %gpio045 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 1
  %25 = ptrtoint ptr %gpio045 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio045, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %29, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %27) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %gpio153 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 2
  %30 = ptrtoint ptr %gpio153 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio153, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr55 = getelementptr i32, ptr %34, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %32) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %gpio261 = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %input, i32 3
  %35 = ptrtoint ptr %gpio261 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpio261, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio, align 4
  %add.ptr63 = getelementptr i32, ptr %39, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %37) #10, !srcloc !309
  %40 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cond = icmp eq i32 %41, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr72 = getelementptr i32, ptr %43, i32 880659
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %cond, label %do.body67, label %do.body119

do.body67:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %45 = or i32 %44, 16777216
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr79 = getelementptr i32, ptr %47, i32 880659
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %45) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio, align 4
  %add.ptr85 = getelementptr i32, ptr %49, i32 802881
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  %51 = or i32 %50, 268435712
  %52 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio, align 4
  %add.ptr92 = getelementptr i32, ptr %53, i32 802881
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %51) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio, align 4
  %add.ptr98 = getelementptr i32, ptr %55, i32 802903
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %57 = or i32 %56, 538968064
  %58 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio, align 4
  %add.ptr105 = getelementptr i32, ptr %59, i32 802903
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %57) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio, align 4
  %add.ptr111 = getelementptr i32, ptr %61, i32 802904
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  %63 = or i32 %62, 538968064
  %64 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio, align 4
  %add.ptr118 = getelementptr i32, ptr %65, i32 802904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %63) #10, !srcloc !309
  br label %sw.epilog

do.body119:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %66 = and i32 %44, -16777217
  %67 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio, align 4
  %add.ptr131 = getelementptr i32, ptr %68, i32 880659
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %66) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio, align 4
  %add.ptr137 = getelementptr i32, ptr %70, i32 802881
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %72 = and i32 %71, -268435713
  %73 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio, align 4
  %add.ptr144 = getelementptr i32, ptr %74, i32 802881
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %72) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio, align 4
  %add.ptr150 = getelementptr i32, ptr %76, i32 802903
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  %78 = and i32 %77, -538968065
  %79 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio, align 4
  %add.ptr157 = getelementptr i32, ptr %80, i32 802903
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %78) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio, align 4
  %add.ptr163 = getelementptr i32, ptr %82, i32 802904
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %84 = and i32 %83, -538968065
  %85 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio, align 4
  %add.ptr170 = getelementptr i32, ptr %86, i32 802904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %84) #10, !srcloc !309
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body119, %do.body67
  %87 = ptrtoint ptr %vmux25 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load174 = load i8, ptr %vmux25, align 4
  %88 = and i8 %bf.load174, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not = icmp eq i8 %88, 0
  br i1 %tobool.not, label %sw.epilog.if.end261_crit_edge, label %if.then177

sw.epilog.if.end261_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261

if.then177:                                       ; preds = %sw.epilog
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 20
  %89 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sd_wm8775, align 4
  %tobool178.not = icmp eq ptr %90, null
  br i1 %tobool178.not, label %if.then177.if.end228_crit_edge, label %do.body180

if.then177.if.end228_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

do.body180:                                       ; preds = %if.then177
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 15
  %91 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool181.not = icmp eq i32 %92, 0
  br i1 %tobool181.not, label %if.then182, label %do.body180.if.end228_crit_edge

do.body180.if.end228_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then182:                                       ; preds = %do.body180
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %93 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %gate_ctrl, align 4
  %tobool183.not = icmp eq ptr %94, null
  br i1 %tobool183.not, label %if.then182.do.body187_crit_edge, label %if.then184

if.then182.do.body187_crit_edge:                  ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body187

if.then184:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %94(ptr noundef %core, i32 noundef 1) #10
  br label %do.body187

do.body187:                                       ; preds = %if.then184, %if.then182.do.body187_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %95 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn339 = load ptr, ptr %subdevs, align 4
  %cmp193.not341 = icmp eq ptr %.pn339, %subdevs
  br i1 %cmp193.not341, label %do.body187.do.end217_crit_edge, label %do.body187.for.body_crit_edge

do.body187.for.body_crit_edge:                    ; preds = %do.body187
  br label %for.body

do.body187.do.end217_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end217

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body187.for.body_crit_edge
  %.pn342 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn339, %do.body187.for.body_crit_edge ]
  %__sd.0343 = getelementptr i8, ptr %.pn342, i32 -80
  %ops = getelementptr i8, ptr %.pn342, i32 24
  %96 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %audio, align 4
  %tobool194.not = icmp eq ptr %99, null
  br i1 %tobool194.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_routing, align 4
  %tobool197.not = icmp eq ptr %101, null
  br i1 %tobool197.not, label %land.lhs.true.for.inc_crit_edge, label %if.then198

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then198:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %vmux25 to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load206 = load i8, ptr %vmux25, align 4
  %bf.lshr207 = lshr i8 %bf.load206, 2
  %bf.clear208 = and i8 %bf.lshr207, 15
  %bf.cast209 = zext i8 %bf.clear208 to i32
  %call210 = tail call i32 %101(ptr noundef %__sd.0343, i32 noundef %bf.cast209, i32 noundef 0, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then198, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %103 = ptrtoint ptr %.pn342 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn = load ptr, ptr %.pn342, align 4
  %cmp193.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp193.not, label %for.inc.do.end217_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end217_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end217

do.end217:                                        ; preds = %for.inc.do.end217_crit_edge, %do.body187.do.end217_crit_edge
  %104 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gate_ctrl, align 4
  %tobool221.not = icmp eq ptr %105, null
  br i1 %tobool221.not, label %do.end217.if.end228_crit_edge, label %if.then222

do.end217.if.end228_crit_edge:                    ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then222:                                       ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %105(ptr noundef %core, i32 noundef 0) #10
  br label %if.end228

if.end228:                                        ; preds = %if.then222, %do.end217.if.end228_crit_edge, %do.body180.if.end228_crit_edge, %if.then177.if.end228_crit_edge
  %106 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx24, align 4
  %108 = and i32 %107, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %switch = icmp eq i32 %108, 6
  br i1 %switch, label %do.body241, label %if.then240

if.then240:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %109 = ptrtoint ptr %tvaudio to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 10, ptr %tvaudio, align 4
  tail call void @cx88_set_tvaudio(ptr noundef %core) #10
  br label %if.end261

do.body241:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  tail call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio, align 4
  %add.ptr245 = getelementptr i32, ptr %111, i32 819579
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %112 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lmmio, align 4
  %add.ptr252 = getelementptr i32, ptr %113, i32 819555
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr252) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %115 = and i32 %114, -8388609
  %116 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lmmio, align 4
  %add.ptr259 = getelementptr i32, ptr %117, i32 819555
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %115) #10, !srcloc !309
  br label %if.end261

if.end261:                                        ; preds = %do.body241, %if.then240, %sw.epilog.if.end261_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_set_tvaudio(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_querycap(ptr nocapture readnone %file, ptr nocapture noundef readonly %core, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 8
  %call = tail call i32 @strscpy(ptr noundef %card, ptr noundef %1, i32 noundef 32) #10
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2063597551, ptr %capabilities, align 4
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp eq i32 %4, -1
  %spec.store.select = select i1 %cmp.not, i32 -2063597551, i32 -2063532015
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %capabilities, align 4
  %radio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 7
  %6 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp4 = icmp eq i32 %7, 10
  br i1 %cmp4, label %if.then5, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or7 = or i32 %spec.store.select, 262144
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or7, ptr %capabilities, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_enum_input(ptr nocapture noundef readonly %core, ptr noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 23, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %type3 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type3, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [10 x ptr], ptr @cx88_enum_input.iname, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %8, i32 noundef 32) #10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %switch = icmp eq i32 %11, 6
  br i1 %switch, label %if.then19, label %if.end2.if.end21_crit_edge

if.end2.if.end21_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type3, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end2.if.end21_crit_edge
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %13 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 8355831, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_set_freq(ptr noundef %core, ptr noundef %f) #1 align 64 {
entry:
  %new_freq = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %new_freq) #10
  %0 = call ptr @memcpy(ptr %new_freq, ptr %f, i32 44)
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 1
  %1 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !329

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not = icmp eq i32 %4, 0
  br i1 %cmp2.not, label %if.end10, label %if.end.cleanup_crit_edge, !prof !330

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @cx88_newstation(ptr noundef %core) #10
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 15
  %5 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.do.end106_crit_edge

if.end10.do.end106_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

if.then12:                                        ; preds = %if.end10
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 26
  %7 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.then12.do.body17_crit_edge, label %if.then14

if.then12.do.body17_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %8(ptr noundef %core, i32 noundef 1) #10
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %if.then12.do.body17_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn149 = load ptr, ptr %subdevs, align 4
  %cmp21.not151 = icmp eq ptr %.pn149, %subdevs
  br i1 %cmp21.not151, label %do.body17.do.end_crit_edge, label %do.body17.for.body_crit_edge

do.body17.for.body_crit_edge:                     ; preds = %do.body17
  br label %for.body

do.body17.do.end_crit_edge:                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body17.for.body_crit_edge
  %.pn152 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn149, %do.body17.for.body_crit_edge ]
  %__sd.0153 = getelementptr i8, ptr %.pn152, i32 -80
  %ops = getelementptr i8, ptr %.pn152, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tuner24 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner24, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_frequency, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %land.lhs.true.for.inc_crit_edge, label %if.then29

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %15(ptr noundef %__sd.0153, ptr noundef %f) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn152 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn152, align 4
  %cmp21.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp21.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body17.do.end_crit_edge
  %17 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gate_ctrl, align 4
  %tobool42.not = icmp eq ptr %18, null
  br i1 %tobool42.not, label %do.end.do.body49_crit_edge, label %if.then43

do.end.do.body49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

if.then43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %core, i32 noundef 0) #10
  br label %do.body49

do.body49:                                        ; preds = %if.then43, %do.end.do.body49_crit_edge
  %19 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool51.not = icmp eq i32 %.pr, 0
  br i1 %tobool51.not, label %if.then52, label %do.body49.do.end106_crit_edge

do.body49.do.end106_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

if.then52:                                        ; preds = %do.body49
  %20 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gate_ctrl, align 4
  %tobool54.not = icmp eq ptr %21, null
  br i1 %tobool54.not, label %if.then52.do.body58_crit_edge, label %if.then55

if.then52.do.body58_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %core, i32 noundef 1) #10
  br label %do.body58

do.body58:                                        ; preds = %if.then55, %if.then52.do.body58_crit_edge
  %22 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn147154 = load ptr, ptr %subdevs, align 4
  %cmp71.not156 = icmp eq ptr %.pn147154, %subdevs
  br i1 %cmp71.not156, label %do.body58.do.end96_crit_edge, label %do.body58.for.body74_crit_edge

do.body58.for.body74_crit_edge:                   ; preds = %do.body58
  br label %for.body74

do.body58.do.end96_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

for.body74:                                       ; preds = %for.inc88.for.body74_crit_edge, %do.body58.for.body74_crit_edge
  %.pn147157 = phi ptr [ %.pn147, %for.inc88.for.body74_crit_edge ], [ %.pn147154, %do.body58.for.body74_crit_edge ]
  %__sd59.0158 = getelementptr i8, ptr %.pn147157, i32 -80
  %ops75 = getelementptr i8, ptr %.pn147157, i32 24
  %23 = ptrtoint ptr %ops75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops75, align 4
  %tuner76 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %tuner76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tuner76, align 4
  %tobool77.not = icmp eq ptr %26, null
  br i1 %tobool77.not, label %for.body74.for.inc88_crit_edge, label %land.lhs.true78

for.body74.for.inc88_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc88

land.lhs.true78:                                  ; preds = %for.body74
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %g_frequency, align 4
  %tobool81.not = icmp eq ptr %28, null
  br i1 %tobool81.not, label %land.lhs.true78.for.inc88_crit_edge, label %if.then82

land.lhs.true78.for.inc88_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc88

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  %call86 = call i32 %28(ptr noundef %__sd59.0158, ptr noundef nonnull %new_freq) #10
  br label %for.inc88

for.inc88:                                        ; preds = %if.then82, %land.lhs.true78.for.inc88_crit_edge, %for.body74.for.inc88_crit_edge
  %29 = ptrtoint ptr %.pn147157 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn147 = load ptr, ptr %.pn147157, align 4
  %cmp71.not = icmp eq ptr %.pn147, %subdevs
  br i1 %cmp71.not, label %for.inc88.do.end96_crit_edge, label %for.inc88.for.body74_crit_edge

for.inc88.for.body74_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.inc88.do.end96_crit_edge:                     ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

do.end96:                                         ; preds = %for.inc88.do.end96_crit_edge, %do.body58.do.end96_crit_edge
  %30 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gate_ctrl, align 4
  %tobool100.not = icmp eq ptr %31, null
  br i1 %tobool100.not, label %do.end96.do.end106_crit_edge, label %if.then101

do.end96.do.end106_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

if.then101:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void %31(ptr noundef %core, i32 noundef 0) #10
  br label %do.end106

do.end106:                                        ; preds = %if.then101, %do.end96.do.end106_crit_edge, %do.body49.do.end106_crit_edge, %if.end10.do.end106_crit_edge
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %new_freq, i32 0, i32 2
  %32 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frequency, align 4
  %freq = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 44
  %34 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %freq, align 8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  call void @cx88_set_tvaudio(ptr noundef %core) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end106 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %new_freq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_newstation(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_pci_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cx8800_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx8800_pci_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @cx8800_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_initdev(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #1 align 64 {
entry:
  %wm8775_info = alloca %struct.i2c_board_info, align 4
  %.compoundliteral = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5176) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup307_crit_edge, label %if.end

entry.cleanup307_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup307

if.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci, align 8
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.fail_free_crit_edge

if.end.fail_free_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_free

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 8
  %call6 = tail call ptr @cx88_core_get(ptr noundef %3) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.fail_disable_crit_edge, label %if.end9

if.end4.fail_disable_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_disable

if.end9:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %call7.i.i, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  %pci_rev = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %pci_rev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pci_rev, align 4
  %pci_lat = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 8
  %call11 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef %pci_lat) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.pci_name.exit_crit_edge

if.end9.pci_name.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end9.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end9.pci_name.exit_crit_edge ]
  %12 = ptrtoint ptr %pci_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pci_rev, align 4
  %conv = zext i8 %13 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %16 = ptrtoint ptr %pci_lat to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pci_lat, align 1
  %conv15 = zext i8 %17 to i32
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource, align 8
  %conv16 = zext i32 %19 to i64
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %15, i32 noundef %conv15, i64 noundef %conv16) #13
  tail call void @pci_set_master(ptr noundef %pci_dev) #10
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call19 = tail call i32 @dma_set_mask(ptr noundef %dev18, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body28, label %do.end24

do.end24:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %fail_core

do.body28:                                        ; preds = %pci_name.exit
  %slock = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.20, ptr noundef nonnull @cx8800_initdev.__key, i16 noundef signext 3) #10
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %vidq, ptr %vidq, align 4
  %prev.i = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vidq, ptr %prev.i, align 8
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %vbiq to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %vbiq, ptr %vbiq, align 8
  %prev.i490 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i490 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vbiq, ptr %prev.i490, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 3
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @cx8800_irq, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end39, label %do.body44

do.end39:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %27) #13
  br label %fail_core

do.body44:                                        ; preds = %do.body28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 7
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %29, i32 524304
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 10
  %32 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pci_irqmask, align 8
  %or = or i32 %33, %31
  %34 = tail call i32 @llvm.bswap.i32(i32 %or)
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr54 = getelementptr i32, ptr %36, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %34) #10, !srcloc !309
  %audio_hdl = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 19
  %call62 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %audio_hdl, ptr noundef nonnull @cx8800_ctrl_aud_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 1) #10
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %do.body44.cleanup_crit_edge, label %for.inc

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.body44.cleanup_crit_edge
  %error = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 19, i32 9
  %37 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error, align 4
  br label %fail_irq

for.inc:                                          ; preds = %do.body44
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %call62, i32 0, i32 21
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cx8800_aud_ctls, ptr %priv, align 8
  %call62.1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %audio_hdl, ptr noundef nonnull @cx8800_ctrl_aud_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 63) #10
  %tobool63.not.1 = icmp eq ptr %call62.1, null
  br i1 %tobool63.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %priv.1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call62.1, i32 0, i32 21
  %40 = ptrtoint ptr %priv.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr getelementptr inbounds ([3 x %struct.cx88_ctrl], ptr @cx8800_aud_ctls, i32 0, i32 1), ptr %priv.1, align 8
  %call62.2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %audio_hdl, ptr noundef nonnull @cx8800_ctrl_aud_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #10
  %tobool63.not.2 = icmp eq ptr %call62.2, null
  br i1 %tobool63.not.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %priv.2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call62.2, i32 0, i32 21
  %41 = ptrtoint ptr %priv.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr getelementptr inbounds ([3 x %struct.cx88_ctrl], ptr @cx8800_aud_ctls, i32 0, i32 2), ptr %priv.2, align 8
  %video_hdl = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 17
  %chroma_agc = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 18
  br label %for.body71

for.body71:                                       ; preds = %for.inc100.for.body71_crit_edge, %for.inc.2
  %i.1525 = phi i32 [ 0, %for.inc.2 ], [ %inc101, %for.inc100.for.body71_crit_edge ]
  %arrayidx73 = getelementptr [8 x %struct.cx88_ctrl], ptr @cx8800_vid_ctls, i32 0, i32 %i.1525
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx73, align 4
  %minimum76 = getelementptr [8 x %struct.cx88_ctrl], ptr @cx8800_vid_ctls, i32 0, i32 %i.1525, i32 1
  %44 = ptrtoint ptr %minimum76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %minimum76, align 4
  %conv77 = sext i32 %45 to i64
  %maximum78 = getelementptr [8 x %struct.cx88_ctrl], ptr @cx8800_vid_ctls, i32 0, i32 %i.1525, i32 2
  %46 = ptrtoint ptr %maximum78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maximum78, align 4
  %conv79 = sext i32 %47 to i64
  %step80 = getelementptr [8 x %struct.cx88_ctrl], ptr @cx8800_vid_ctls, i32 0, i32 %i.1525, i32 3
  %48 = ptrtoint ptr %step80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %step80, align 4
  %conv81 = zext i32 %49 to i64
  %default_value82 = getelementptr [8 x %struct.cx88_ctrl], ptr @cx8800_vid_ctls, i32 0, i32 %i.1525, i32 4
  %50 = ptrtoint ptr %default_value82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %default_value82, align 4
  %conv83 = sext i32 %51 to i64
  %call84 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %video_hdl, ptr noundef nonnull @cx8800_ctrl_vid_ops, i32 noundef %43, i64 noundef %conv77, i64 noundef %conv79, i64 noundef %conv81, i64 noundef %conv83) #10
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %cleanup96, label %if.end89

if.end89:                                         ; preds = %for.body71
  %priv90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call84, i32 0, i32 21
  %52 = ptrtoint ptr %priv90 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx73, ptr %priv90, align 8
  %id91 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call84, i32 0, i32 8
  %53 = ptrtoint ptr %id91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963805, i32 %54)
  %cmp92 = icmp eq i32 %54, 9963805
  br i1 %cmp92, label %if.then94, label %if.end89.for.inc100_crit_edge

if.end89.for.inc100_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc100

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %chroma_agc to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call84, ptr %chroma_agc, align 8
  br label %for.inc100

cleanup96:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  %error88 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 17, i32 9
  %56 = ptrtoint ptr %error88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error88, align 4
  br label %fail_irq

for.inc100:                                       ; preds = %if.then94, %if.end89.for.inc100_crit_edge
  %inc101 = add nuw nsw i32 %i.1525, 1
  %exitcond.not = icmp eq i32 %inc101, 8
  br i1 %exitcond.not, label %for.end102, label %for.inc100.for.body71_crit_edge

for.inc100.for.body71_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

for.end102:                                       ; preds = %for.inc100
  %call105 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %video_hdl, ptr noundef %audio_hdl, ptr noundef null, i1 noundef zeroext false) #10
  %audio_chip = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 23, i32 9
  %58 = ptrtoint ptr %audio_chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %audio_chip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp106 = icmp eq i32 %59, 1
  br i1 %cmp106, label %if.then108, label %for.end102.if.end121_crit_edge

for.end102.if.end121_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then108:                                       ; preds = %for.end102
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wm8775_info) #10
  %60 = call ptr @memcpy(ptr %wm8775_info, ptr @.str.24, i32 20)
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %wm8775_info, i32 0, i32 1
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %wm8775_info, i32 0, i32 2
  %62 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 27, ptr %addr, align 2
  %dev_name = getelementptr inbounds %struct.i2c_board_info, ptr %wm8775_info, i32 0, i32 3
  %63 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %dev_name, align 4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %wm8775_info, i32 0, i32 4
  %wm8775_data = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 42
  %64 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %wm8775_data, ptr %platform_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_board_info, ptr %wm8775_info, i32 0, i32 5
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 22
  %65 = call ptr @memset(ptr %of_node, i32 0, i32 24)
  %66 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %67)
  %cmp110 = icmp eq i32 %67, 37
  %. = zext i1 %cmp110 to i8
  %68 = ptrtoint ptr %wm8775_data to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %., ptr %wm8775_data, align 8
  %v4l2_dev = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 16
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 11
  %call117 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull %wm8775_info, ptr noundef null) #10
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.then108.if.end120_crit_edge, label %if.then119

if.then108.if.end120_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then119:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 20
  %69 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call117, ptr %sd_wm8775, align 4
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %call117, i32 0, i32 10
  %70 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %grp_id, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.then108.if.end120_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wm8775_info) #10
  %71 = ptrtoint ptr %audio_chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr = load i32, ptr %audio_chip, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %for.end102.if.end121_crit_edge
  %72 = phi i32 [ %.pr, %if.end120 ], [ %59, %for.end102.if.end121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp124 = icmp eq i32 %72, 2
  br i1 %cmp124, label %if.then126, label %if.end121.if.end131_crit_edge

if.end121.if.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %v4l2_dev127 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 16
  %i2c_adap128 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 11
  %73 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 88, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %74 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -2, ptr %arrayinit.element, align 2
  %call130 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev127, ptr noundef %i2c_adap128, ptr noundef nonnull @.str.25, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral) #10
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.end121.if.end131_crit_edge
  %boardnr132 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 22
  %75 = ptrtoint ptr %boardnr132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %boardnr132, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %if.end131.sw.epilog_crit_edge [
    i32 31, label %if.end131.sw.bb_crit_edge
    i32 65, label %if.end131.sw.bb_crit_edge526
    i32 59, label %if.end131.sw.bb136_crit_edge
  ]

if.end131.sw.bb136_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end131.sw.bb_crit_edge526:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end131.sw.bb_crit_edge:                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end131.sw.epilog_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end131.sw.bb_crit_edge, %if.end131.sw.bb_crit_edge526
  %call133 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #10
  %i2c_adap134 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 11
  %call135 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap134, ptr noundef nonnull @cx8800_initdev.rtc_info) #10
  %i2c_rtc = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 21
  %78 = ptrtoint ptr %i2c_rtc to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call135, ptr %i2c_rtc, align 8
  br label %sw.bb136

sw.bb136:                                         ; preds = %sw.bb, %if.end131.sw.bb136_crit_edge
  %call137 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb136, %if.end131.sw.epilog_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %fmt = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr getelementptr inbounds ([10 x %struct.cx8800_fmt], ptr @formats, i32 0, i32 5), ptr %fmt, align 8
  %v4ldev = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 46
  %81 = ptrtoint ptr %v4ldev to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %v4ldev, align 8
  %lock = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 43
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call139 = call i32 @cx88_set_tvnorm(ptr noundef %call6, i64 noundef 4096) #10
  %call141 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %video_hdl) #10
  %call143 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %audio_hdl) #10
  %call144 = call i32 @cx88_video_mux(ptr noundef %call6, i32 noundef 0)
  %vb2_vidq = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11
  %82 = ptrtoint ptr %vb2_vidq to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %vb2_vidq, align 8
  %io_modes = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  %83 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 14
  %84 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %gfp_flags, align 8
  %min_buffers_needed = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 15
  %85 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 10
  %86 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 12
  %87 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 768, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 7
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @cx8800_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 8
  %89 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 13
  %90 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock147 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 5
  %91 = ptrtoint ptr %lock147 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %lock, ptr %lock147, align 4
  %92 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci, align 8
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %dev150 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 11, i32 2
  %94 = ptrtoint ptr %dev150 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %dev149, ptr %dev150, align 8
  %call151 = call i32 @vb2_queue_init(ptr noundef %vb2_vidq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %sw.epilog.fail_unreg_crit_edge, label %if.end155

sw.epilog.fail_unreg_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreg

if.end155:                                        ; preds = %sw.epilog
  %vb2_vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13
  %95 = ptrtoint ptr %vb2_vbiq to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %vb2_vbiq, align 4
  %io_modes157 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 1
  %96 = ptrtoint ptr %io_modes157 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 23, ptr %io_modes157, align 8
  %gfp_flags158 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 14
  %97 = ptrtoint ptr %gfp_flags158 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %gfp_flags158, align 4
  %min_buffers_needed159 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 15
  %98 = ptrtoint ptr %min_buffers_needed159 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %min_buffers_needed159, align 8
  %drv_priv160 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 10
  %99 = ptrtoint ptr %drv_priv160 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i, ptr %drv_priv160, align 4
  %buf_struct_size161 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 12
  %100 = ptrtoint ptr %buf_struct_size161 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 768, ptr %buf_struct_size161, align 4
  %ops162 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 7
  %101 = ptrtoint ptr %ops162 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @cx8800_vbi_qops, ptr %ops162, align 8
  %mem_ops163 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 8
  %102 = ptrtoint ptr %mem_ops163 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops163, align 4
  %timestamp_flags164 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 13
  %103 = ptrtoint ptr %timestamp_flags164 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 8192, ptr %timestamp_flags164, align 8
  %lock166 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 5
  %104 = ptrtoint ptr %lock166 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %lock, ptr %lock166, align 8
  %105 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci, align 8
  %dev168 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %dev169 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 13, i32 2
  %107 = ptrtoint ptr %dev169 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %dev168, ptr %dev169, align 4
  %call170 = call i32 @vb2_queue_init(ptr noundef %vb2_vbiq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.end155.fail_unreg_crit_edge, label %if.end174

if.end155.fail_unreg_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreg

if.end174:                                        ; preds = %if.end155
  %108 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pci, align 8
  %video_dev = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3
  call void @cx88_vdev_init(ptr noundef %call6, ptr noundef %109, ptr noundef %video_dev, ptr noundef nonnull @cx8800_video_template, ptr noundef nonnull @.str.28) #10
  %driver_data.i.i491 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 8
  %110 = ptrtoint ptr %driver_data.i.i491 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i.i, ptr %driver_data.i.i491, align 4
  %ctrl_handler = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 9
  %111 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %video_hdl, ptr %ctrl_handler, align 4
  %queue = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 10
  %112 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %vb2_vidq, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 4
  %113 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 83886081, ptr %device_caps, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 23, i32 1
  %114 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp183.not = icmp eq i32 %115, -1
  %spec.store.select = select i1 %cmp183.not, i32 83886081, i32 83951617
  %116 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.store.select, ptr %device_caps, align 8
  %nr = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 2
  %117 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr, align 4
  %arrayidx191 = getelementptr [8 x i32], ptr @video_nr, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx191, align 4
  %fops.i = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fops.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %call.i492 = call i32 @__video_register_device(ptr noundef %video_dev, i32 noundef 0, i32 noundef %120, i32 noundef 1, ptr noundef %124) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i492)
  %cmp193 = icmp slt i32 %call.i492, 0
  br i1 %cmp193, label %if.end174.fail_unreg.sink.split_crit_edge, label %do.end204

if.end174.fail_unreg.sink.split_crit_edge:        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreg.sink.split

do.end204:                                        ; preds = %if.end174
  %init_name.i.i493 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 3
  %125 = ptrtoint ptr %init_name.i.i493 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %init_name.i.i493, align 8
  %tobool.not.i.i494 = icmp eq ptr %126, null
  br i1 %tobool.not.i.i494, label %if.end.i.i496, label %do.end204.video_device_node_name.exit_crit_edge

do.end204.video_device_node_name.exit_crit_edge:  ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i496:                                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i495 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 3, i32 5
  %127 = ptrtoint ptr %dev.i495 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i495, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i496, %do.end204.video_device_node_name.exit_crit_edge
  %retval.0.i.i497 = phi ptr [ %128, %if.end.i.i496 ], [ %126, %do.end204.video_device_node_name.exit_crit_edge ]
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i497) #13
  %129 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci, align 8
  %vbi_dev = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4
  call void @cx88_vdev_init(ptr noundef %call6, ptr noundef %130, ptr noundef %vbi_dev, ptr noundef nonnull @cx8800_vbi_template, ptr noundef nonnull @.str.35) #10
  %driver_data.i.i498 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 8
  %131 = ptrtoint ptr %driver_data.i.i498 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call7.i.i, ptr %driver_data.i.i498, align 4
  %queue213 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 10
  %132 = ptrtoint ptr %queue213 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %vb2_vbiq, ptr %queue213, align 8
  %device_caps215 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 4
  %133 = ptrtoint ptr %device_caps215 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 83886096, ptr %device_caps215, align 8
  %134 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp218.not = icmp eq i32 %135, -1
  %spec.store.select489 = select i1 %cmp218.not, i32 83886096, i32 83951632
  %136 = ptrtoint ptr %device_caps215 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %spec.store.select489, ptr %device_caps215, align 8
  %137 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr, align 4
  %arrayidx227 = getelementptr [8 x i32], ptr @vbi_nr, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx227, align 4
  %fops.i499 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 3
  %141 = ptrtoint ptr %fops.i499 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fops.i499, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %call.i500 = call i32 @__video_register_device(ptr noundef %vbi_dev, i32 noundef 1, i32 noundef %140, i32 noundef 1, ptr noundef %144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i500)
  %cmp229 = icmp slt i32 %call.i500, 0
  br i1 %cmp229, label %video_device_node_name.exit.fail_unreg.sink.split_crit_edge, label %do.end240

video_device_node_name.exit.fail_unreg.sink.split_crit_edge: ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreg.sink.split

do.end240:                                        ; preds = %video_device_node_name.exit
  %init_name.i.i501 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %145 = ptrtoint ptr %init_name.i.i501 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init_name.i.i501, align 8
  %tobool.not.i.i502 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i502, label %if.end.i.i504, label %do.end240.video_device_node_name.exit506_crit_edge

do.end240.video_device_node_name.exit506_crit_edge: ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit506

if.end.i.i504:                                    ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i503 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 4, i32 5
  %147 = ptrtoint ptr %dev.i503 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i503, align 8
  br label %video_device_node_name.exit506

video_device_node_name.exit506:                   ; preds = %if.end.i.i504, %do.end240.video_device_node_name.exit506_crit_edge
  %retval.0.i.i505 = phi ptr [ %148, %if.end.i.i504 ], [ %146, %do.end240.video_device_node_name.exit506_crit_edge ]
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i505) #13
  %radio = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 23, i32 7
  %149 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %150)
  %cmp247 = icmp eq i32 %150, 10
  br i1 %cmp247, label %if.then249, label %video_device_node_name.exit506.if.end277_crit_edge

video_device_node_name.exit506.if.end277_crit_edge: ; preds = %video_device_node_name.exit506
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.then249:                                       ; preds = %video_device_node_name.exit506
  %151 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci, align 8
  %radio_dev = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5
  call void @cx88_vdev_init(ptr noundef %call6, ptr noundef %152, ptr noundef %radio_dev, ptr noundef nonnull @cx8800_radio_template, ptr noundef nonnull @.str.42) #10
  %driver_data.i.i507 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 8
  %153 = ptrtoint ptr %driver_data.i.i507 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call7.i.i, ptr %driver_data.i.i507, align 4
  %ctrl_handler254 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 9
  %154 = ptrtoint ptr %ctrl_handler254 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %audio_hdl, ptr %ctrl_handler254, align 4
  %device_caps256 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 4
  %155 = ptrtoint ptr %device_caps256 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 327680, ptr %device_caps256, align 8
  %156 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr, align 4
  %arrayidx259 = getelementptr [8 x i32], ptr @radio_nr, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx259, align 4
  %fops.i508 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 3
  %160 = ptrtoint ptr %fops.i508 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fops.i508, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %call.i509 = call i32 @__video_register_device(ptr noundef %radio_dev, i32 noundef 2, i32 noundef %159, i32 noundef 1, ptr noundef %163) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i509)
  %cmp261 = icmp slt i32 %call.i509, 0
  br i1 %cmp261, label %if.then249.fail_unreg.sink.split_crit_edge, label %do.end272

if.then249.fail_unreg.sink.split_crit_edge:       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreg.sink.split

do.end272:                                        ; preds = %if.then249
  %init_name.i.i510 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 3
  %164 = ptrtoint ptr %init_name.i.i510 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_name.i.i510, align 8
  %tobool.not.i.i511 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i511, label %if.end.i.i513, label %do.end272.video_device_node_name.exit515_crit_edge

do.end272.video_device_node_name.exit515_crit_edge: ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit515

if.end.i.i513:                                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i512 = getelementptr inbounds %struct.cx8800_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %166 = ptrtoint ptr %dev.i512 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i512, align 8
  br label %video_device_node_name.exit515

video_device_node_name.exit515:                   ; preds = %if.end.i.i513, %do.end272.video_device_node_name.exit515_crit_edge
  %retval.0.i.i514 = phi ptr [ %167, %if.end.i.i513 ], [ %165, %do.end272.video_device_node_name.exit515_crit_edge ]
  %call276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i514) #13
  br label %if.end277

if.end277:                                        ; preds = %video_device_node_name.exit515, %video_device_node_name.exit506.if.end277_crit_edge
  %168 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %169)
  %cmp280.not = icmp eq i32 %169, -1
  br i1 %cmp280.not, label %if.end277.if.end300_crit_edge, label %if.then282

if.end277.if.end300_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end300

if.then282:                                       ; preds = %if.end277
  %call283 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cx88_audio_thread, ptr noundef %call6, i32 noundef -1, ptr noundef nonnull @.str.48) #10
  %cmp.i = icmp ugt ptr %call283, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then291, label %if.end287

if.end287:                                        ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #12
  %call286 = call i32 @wake_up_process(ptr noundef %call283) #10
  %kthread = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 27
  %170 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call283, ptr %kthread, align 8
  br label %if.end300

if.then291:                                       ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #12
  %kthread523 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 27
  %171 = ptrtoint ptr %kthread523 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call283, ptr %kthread523, align 8
  %172 = ptrtoint ptr %call283 to i32
  %call298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %172) #13
  br label %if.end300

if.end300:                                        ; preds = %if.then291, %if.end287, %if.end277.if.end300_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup307

fail_unreg.sink.split:                            ; preds = %if.then249.fail_unreg.sink.split_crit_edge, %video_device_node_name.exit.fail_unreg.sink.split_crit_edge, %if.end174.fail_unreg.sink.split_crit_edge
  %.str.44.sink = phi ptr [ @.str.30, %if.end174.fail_unreg.sink.split_crit_edge ], [ @.str.37, %video_device_node_name.exit.fail_unreg.sink.split_crit_edge ], [ @.str.44, %if.then249.fail_unreg.sink.split_crit_edge ]
  %err.4.ph = phi i32 [ %call.i492, %if.end174.fail_unreg.sink.split_crit_edge ], [ %call.i500, %video_device_node_name.exit.fail_unreg.sink.split_crit_edge ], [ %call.i509, %if.then249.fail_unreg.sink.split_crit_edge ]
  %call268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink) #13
  br label %fail_unreg

fail_unreg:                                       ; preds = %fail_unreg.sink.split, %if.end155.fail_unreg_crit_edge, %sw.epilog.fail_unreg_crit_edge
  %err.4 = phi i32 [ %call151, %sw.epilog.fail_unreg_crit_edge ], [ %call170, %if.end155.fail_unreg_crit_edge ], [ %err.4.ph, %fail_unreg.sink.split ]
  call fastcc void @cx8800_unregister_video(ptr noundef %call7.i.i)
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %fail_irq

fail_irq:                                         ; preds = %fail_unreg, %cleanup96, %cleanup
  %err.5 = phi i32 [ %38, %cleanup ], [ %57, %cleanup96 ], [ %err.4, %fail_unreg ]
  %173 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %irq, align 4
  %call304 = call ptr @free_irq(i32 noundef %174, ptr noundef %call7.i.i) #10
  br label %fail_core

fail_core:                                        ; preds = %fail_irq, %do.end39, %do.end24
  %err.6 = phi i32 [ %call19, %do.end24 ], [ %call.i, %do.end39 ], [ %err.5, %fail_irq ]
  %v4ldev305 = getelementptr inbounds %struct.cx88_core, ptr %call6, i32 0, i32 46
  %175 = ptrtoint ptr %v4ldev305 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %v4ldev305, align 8
  %176 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pci, align 8
  call void @cx88_core_put(ptr noundef %call6, ptr noundef %177) #10
  br label %fail_disable

fail_disable:                                     ; preds = %fail_core, %if.end4.fail_disable_crit_edge
  %err.7 = phi i32 [ %err.6, %fail_core ], [ -22, %if.end4.fail_disable_crit_edge ]
  call void @pci_disable_device(ptr noundef %pci_dev) #10
  br label %fail_free

fail_free:                                        ; preds = %fail_disable, %if.end.fail_free_crit_edge
  %err.8 = phi i32 [ %err.7, %fail_disable ], [ -5, %if.end.fail_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup307

cleanup307:                                       ; preds = %fail_free, %if.end300, %entry.cleanup307_crit_edge
  %retval.0 = phi i32 [ %err.8, %fail_free ], [ 0, %if.end300 ], [ -12, %entry.cleanup307_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx8800_finidev(ptr noundef %pci_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %kthread = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kthread, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #10
  %6 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %kthread, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ir = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 40
  %7 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ir, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cx88_ir_stop(ptr noundef %3) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @cx88_shutdown(ptr noundef %3) #10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %1) #10
  %radio_dev.i = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 5
  tail call void @video_unregister_device(ptr noundef %radio_dev.i) #10
  %vbi_dev.i = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %vbi_dev.i) #10
  %video_dev.i = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %video_dev.i) #10
  tail call void @pci_disable_device(ptr noundef %pci_dev) #10
  %v4ldev = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 46
  %11 = ptrtoint ptr %v4ldev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %v4ldev, align 8
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  tail call void @cx88_core_put(ptr noundef %3, ptr noundef %13) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx88_core_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 10
  %slock.i = getelementptr inbounds %struct.cx8800_dev, ptr %dev_id, i32 0, i32 1
  %vidq.i = getelementptr inbounds %struct.cx8800_dev, ptr %dev_id, i32 0, i32 10
  %vbiq.i = getelementptr inbounds %struct.cx8800_dev, ptr %dev_id, i32 0, i32 12
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %3, i32 524305
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #10, !srcloc !307
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  %6 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_irqmask, align 8
  %or50 = or i32 %7, 1
  %and51 = and i32 %or50, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp352 = icmp eq i32 %and51, 0
  br i1 %cmp352, label %entry.out_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.inc
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 524305
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  %12 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_irqmask, align 8
  %or = or i32 %13, 1
  %and = and i32 %or, %11
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %for.body.out_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %and54 = phi i32 [ %and, %for.body.do.body_crit_edge ], [ %and51, %entry.do.body_crit_edge ]
  %14 = phi i32 [ %11, %for.body.do.body_crit_edge ], [ %5, %entry.do.body_crit_edge ]
  %loop.04553 = phi i32 [ %inc, %for.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %and54)
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %17, i32 524305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %15) #10, !srcloc !309
  %18 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pci_irqmask, align 8
  %and7 = and i32 %19, %and54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %if.then8

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @cx88_core_irq(ptr noundef %1, i32 noundef %and54) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body.if.end10_crit_edge
  %and11 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %if.then13

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %if.end10
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 8
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %23, i32 524309
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %27, i32 524308
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !307
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  %and.i = and i32 %29, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then13.for.inc_crit_edge, label %do.body.i

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body.i:                                        ; preds = %if.then13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %31, i32 524309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %24) #10, !srcloc !309
  %32 = load i32, ptr @irq_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %tobool14.not.i = icmp ult i32 %and.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i.if.end16.i_crit_edge, label %if.then15.i

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cx88_print_irqbits(ptr noundef nonnull @.str.54, ptr noundef nonnull @cx88_vid_irqs, i32 noundef 32, i32 noundef %25, i32 noundef %29) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.body.i.if.end16.i_crit_edge
  %and17.i = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end52.i_crit_edge, label %do.end22.i

if.end16.i.if.end52.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %34, i32 815120
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  %36 = and i32 %35, -285212673
  %37 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i, align 4
  %add.ptr37.i = getelementptr i32, ptr %38, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %36) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %add.ptr44.i = getelementptr i32, ptr %40, i32 802912
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  %42 = and i32 %41, -100663297
  %43 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio.i, align 4
  %add.ptr51.i = getelementptr i32, ptr %44, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %42) #10, !srcloc !309
  tail call void @cx88_sram_channel_dump(ptr noundef %21, ptr noundef nonnull @cx88_sram_channels) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end22.i, %if.end16.i.if.end52.i_crit_edge
  %and53.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.if.end64.i_crit_edge, label %if.then55.i

if.end52.i.if.end64.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #10
  %45 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio.i, align 4
  %add.ptr59.i = getelementptr i32, ptr %46, i32 815112
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #10, !srcloc !307
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  tail call void @cx88_wakeup(ptr noundef %21, ptr noundef %vidq.i, i32 noundef %48) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #10
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then55.i, %if.end52.i.if.end64.i_crit_edge
  %and65.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end64.i.for.inc_crit_edge, label %if.then67.i

if.end64.i.for.inc_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then67.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #10
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr72.i = getelementptr i32, ptr %50, i32 815115
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #10, !srcloc !307
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void @cx88_wakeup(ptr noundef %21, ptr noundef %vbiq.i, i32 noundef %52) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then67.i, %if.end64.i.for.inc_crit_edge, %if.then13.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop.04553, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end19, label %for.body

do.end19:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %54, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #10, !srcloc !309
  br label %out

out:                                              ; preds = %do.end19, %for.body.out_crit_edge, %entry.out_crit_edge
  %tobool28.not43 = phi i32 [ 1, %do.end19 ], [ 0, %entry.out_crit_edge ], [ 1, %for.body.out_crit_edge ]
  ret i32 %tobool28.not43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_set_tvnorm(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_vdev_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_audio_thread(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx8800_unregister_video(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_dev = getelementptr inbounds %struct.cx8800_dev, ptr %dev, i32 0, i32 5
  tail call void @video_unregister_device(ptr noundef %radio_dev) #10
  %vbi_dev = getelementptr inbounds %struct.cx8800_dev, ptr %dev, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %vbi_dev) #10
  %video_dev = getelementptr inbounds %struct.cx8800_dev, ptr %dev, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %video_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_core_put(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_print_irqbits(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_sram_channel_dump(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_s_aud_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2796
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %sd_wm8775 = getelementptr i8, ptr %1, i32 184
  %4 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_wm8775, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end73_crit_edge, label %if.then

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %7, label %if.then.if.end73_crit_edge [
    i32 9963785, label %do.body
    i32 9963781, label %do.body17
    i32 9963782, label %do.body46
  ]

if.then.if.end73_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body:                                          ; preds = %if.then
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_handler, align 4
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %10, i32 noundef 9963785) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.body.if.end73_crit_edge, label %land.lhs.true

do.body.if.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true:                                    ; preds = %do.body
  %i2c_rc = getelementptr i8, ptr %1, i32 -320
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then5:                                         ; preds = %land.lhs.true
  %gate_ctrl = getelementptr i8, ptr %1, i32 456
  %13 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.then5.if.end_crit_edge, label %if.then7

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %add.ptr, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5.if.end_crit_edge
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %20, i32 noundef 0) #10
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call, i32 noundef %16) #10
  %21 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %24) #10
  %25 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %26, null
  br i1 %tobool11.not, label %if.end.if.end73_crit_edge, label %if.end.if.end73.sink.split_crit_edge

if.end.if.end73.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body17:                                        ; preds = %if.then
  %ctrl_handler20 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %ctrl_handler20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_handler20, align 4
  %call22 = tail call ptr @v4l2_ctrl_find(ptr noundef %28, i32 noundef 9963781) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.body17.if.end73_crit_edge, label %land.lhs.true24

do.body17.if.end73_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true24:                                  ; preds = %do.body17
  %i2c_rc25 = getelementptr i8, ptr %1, i32 -320
  %29 = ptrtoint ptr %i2c_rc25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_rc25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true24.if.end73_crit_edge

land.lhs.true24.if.end73_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then27:                                        ; preds = %land.lhs.true24
  %gate_ctrl28 = getelementptr i8, ptr %1, i32 456
  %31 = ptrtoint ptr %gate_ctrl28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gate_ctrl28, align 4
  %tobool29.not = icmp eq ptr %32, null
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then30

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %32(ptr noundef %add.ptr, i32 noundef 1) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27.if.end32_crit_edge
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool34.not = icmp eq i32 %34, 0
  %add = shl i32 %34, 8
  %shl = add i32 %add, 36864
  %cond = select i1 %tobool34.not, i32 0, i32 %shl
  %handler.i.i226 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call22, i32 0, i32 2
  %35 = ptrtoint ptr %handler.i.i226 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler.i.i226, align 8
  %lock.i.i227 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %lock.i.i227 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock.i.i227, align 4
  tail call void @mutex_lock_nested(ptr noundef %38, i32 noundef 0) #10
  %call.i228 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call22, i32 noundef %cond) #10
  %39 = ptrtoint ptr %handler.i.i226 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handler.i.i226, align 8
  %lock.i2.i229 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %lock.i2.i229 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock.i2.i229, align 4
  tail call void @mutex_unlock(ptr noundef %42) #10
  %43 = ptrtoint ptr %gate_ctrl28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gate_ctrl28, align 4
  %tobool38.not = icmp eq ptr %44, null
  br i1 %tobool38.not, label %if.end32.if.end73_crit_edge, label %if.end32.if.end73.sink.split_crit_edge

if.end32.if.end73.sink.split_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

if.end32.if.end73_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body46:                                        ; preds = %if.then
  %ctrl_handler49 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %45 = ptrtoint ptr %ctrl_handler49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_handler49, align 4
  %call51 = tail call ptr @v4l2_ctrl_find(ptr noundef %46, i32 noundef 9963782) #10
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.body46.if.end73_crit_edge, label %land.lhs.true53

do.body46.if.end73_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true53:                                  ; preds = %do.body46
  %i2c_rc54 = getelementptr i8, ptr %1, i32 -320
  %47 = ptrtoint ptr %i2c_rc54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i2c_rc54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool55.not = icmp eq i32 %48, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true53.if.end73_crit_edge

land.lhs.true53.if.end73_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then56:                                        ; preds = %land.lhs.true53
  %gate_ctrl57 = getelementptr i8, ptr %1, i32 456
  %49 = ptrtoint ptr %gate_ctrl57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gate_ctrl57, align 4
  %tobool58.not = icmp eq ptr %50, null
  br i1 %tobool58.not, label %if.then56.if.end61_crit_edge, label %if.then59

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %50(ptr noundef %add.ptr, i32 noundef 1) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then56.if.end61_crit_edge
  %val62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val62, align 4
  %shl63 = shl i32 %52, 9
  %handler.i.i230 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call51, i32 0, i32 2
  %53 = ptrtoint ptr %handler.i.i230 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handler.i.i230, align 8
  %lock.i.i231 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lock.i.i231 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i.i231, align 4
  tail call void @mutex_lock_nested(ptr noundef %56, i32 noundef 0) #10
  %call.i232 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call51, i32 noundef %shl63) #10
  %57 = ptrtoint ptr %handler.i.i230 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handler.i.i230, align 8
  %lock.i2.i233 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %lock.i2.i233 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock.i2.i233, align 4
  tail call void @mutex_unlock(ptr noundef %60) #10
  %61 = ptrtoint ptr %gate_ctrl57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gate_ctrl57, align 4
  %tobool66.not = icmp eq ptr %62, null
  br i1 %tobool66.not, label %if.end61.if.end73_crit_edge, label %if.end61.if.end73.sink.split_crit_edge

if.end61.if.end73.sink.split_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end73.sink.split:                              ; preds = %if.end61.if.end73.sink.split_crit_edge, %if.end32.if.end73.sink.split_crit_edge, %if.end.if.end73.sink.split_crit_edge
  %.sink = phi ptr [ %26, %if.end.if.end73.sink.split_crit_edge ], [ %44, %if.end32.if.end73.sink.split_crit_edge ], [ %62, %if.end61.if.end73.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %add.ptr, i32 noundef 0) #10
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.end61.if.end73_crit_edge, %land.lhs.true53.if.end73_crit_edge, %do.body46.if.end73_crit_edge, %if.end32.if.end73_crit_edge, %land.lhs.true24.if.end73_crit_edge, %do.body17.if.end73_crit_edge, %if.end.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %do.body.if.end73_crit_edge, %if.then.if.end73_crit_edge, %entry.if.end73_crit_edge
  %mask74 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 8
  %63 = ptrtoint ptr %mask74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mask74, align 4
  %id75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %65 = ptrtoint ptr %id75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id75, align 8
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %66, label %sw.default88 [
    i32 9963782, label %sw.bb76
    i32 9963781, label %sw.bb85
  ]

sw.bb76:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %val77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %68 = ptrtoint ptr %val77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %69)
  %cmp = icmp slt i32 %69, 64
  %sub = sub i32 127, %69
  %sub82 = add i32 %69, -64
  %cond84 = select i1 %cmp, i32 %sub, i32 %sub82
  br label %do.body95

sw.bb85:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %val86 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %70 = ptrtoint ptr %val86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val86, align 4
  %and = and i32 %71, 63
  %sub87 = xor i32 %and, 63
  br label %do.body95

sw.default88:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %val89 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val89 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val89, align 4
  %off = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 5
  %74 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %off, align 4
  %sub90 = sub i32 %73, %75
  %shift = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 9
  %76 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %shift, align 4
  %shl91 = shl i32 %sub90, %77
  %and93 = and i32 %shl91, %64
  br label %do.body95

do.body95:                                        ; preds = %sw.default88, %sw.bb85, %sw.bb76
  %value.0 = phi i32 [ %and93, %sw.default88 ], [ %sub87, %sw.bb85 ], [ %cond84, %sw.bb76 ]
  %78 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp96.not = icmp eq i32 %78, 0
  br i1 %cmp96.not, label %do.body95.do.end109_crit_edge, label %do.end100

do.body95.do.end109_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

do.end100:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %79 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name, align 4
  %val103 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val103, align 4
  %reg = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %83 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reg, align 4
  %sreg = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 7
  %85 = ptrtoint ptr %sreg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool104.not = icmp eq i32 %86, 0
  %cond105 = select i1 %tobool104.not, ptr @.str.81, ptr @.str.80
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %66, ptr noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %value.0, i32 noundef %64, ptr noundef nonnull %cond105) #13
  br label %do.end109

do.end109:                                        ; preds = %do.end100, %do.body95.do.end109_crit_edge
  %sreg110 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 7
  %87 = ptrtoint ptr %sreg110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sreg110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool111.not = icmp eq i32 %88, 0
  br i1 %tobool111.not, label %do.body127, label %if.then112

if.then112:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  %shadow = getelementptr i8, ptr %1, i32 -2728
  %arrayidx = getelementptr [3 x i32], ptr %shadow, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %64, -1
  %and114 = and i32 %90, %neg
  %and115 = and i32 %value.0, %64
  %or = or i32 %and114, %and115
  store i32 %or, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %sreg110 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sreg110, align 4
  %arrayidx124 = getelementptr [3 x i32], ptr %shadow, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx124, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %lmmio = getelementptr i8, ptr %1, i32 -2736
  %96 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio, align 4
  %reg125 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %98 = ptrtoint ptr %reg125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reg125, align 4
  %shr = lshr i32 %99, 2
  %add.ptr126 = getelementptr i32, ptr %97, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %95) #10, !srcloc !309
  br label %if.end145

do.body127:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  %lmmio130 = getelementptr i8, ptr %1, i32 -2736
  %100 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio130, align 4
  %reg131 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %102 = ptrtoint ptr %reg131 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %reg131, align 4
  %shr132 = lshr i32 %103, 2
  %add.ptr133 = getelementptr i32, ptr %101, i32 %shr132
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #10, !srcloc !307
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  %neg137 = xor i32 %64, -1
  %and138 = and i32 %105, %neg137
  %and139 = and i32 %value.0, %64
  %or140 = or i32 %and138, %and139
  %106 = tail call i32 @llvm.bswap.i32(i32 %or140)
  %107 = ptrtoint ptr %lmmio130 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lmmio130, align 4
  %109 = ptrtoint ptr %reg131 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg131, align 4
  %shr143 = lshr i32 %110, 2
  %add.ptr144 = getelementptr i32, ptr %108, i32 %shr143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %106) #10, !srcloc !309
  br label %if.end145

if.end145:                                        ; preds = %do.body127, %if.then112
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_s_vid_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %mask1 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %7, label %sw.default [
    i32 9963778, label %sw.bb
    i32 9963803, label %sw.bb7
    i32 9963805, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %off = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %off, align 4
  %sub = sub i32 %10, %12
  %shift = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %shl = shl i32 %sub, %14
  %and = and i32 %shl, %5
  %tvnorm = getelementptr i8, ptr %1, i32 656
  %15 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tvnorm, align 8
  %and3 = and i64 %16, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool.not = icmp eq i64 %and3, 0
  %mul = mul i32 %and, 90
  %div = udiv i32 %mul, 127
  %shl4.pn.in = select i1 %tobool.not, i32 %div, i32 %and
  %shl4.pn = shl i32 %shl4.pn.in, 8
  %value.0 = or i32 %shl4.pn, %and
  br label %do.body34

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val8, align 4
  %add = shl i32 %18, 7
  %shl10 = add i32 %add, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.inv = icmp sgt i32 %18, 0
  %cond = select i1 %cmp.inv, i32 %shl10, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr i8, ptr %1, i32 -2548
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %20, i32 802903
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !307
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  %neg = xor i32 %5, -1
  %and14 = and i32 %22, %neg
  %and15 = and i32 %cond, %5
  %or16 = or i32 %and14, %and15
  %23 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %25, i32 802903
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %23) #10, !srcloc !309
  br label %do.body34

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val20, align 4
  %off21 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %off21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %off21, align 4
  %sub22 = sub i32 %27, %29
  %shift23 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %shift23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift23, align 4
  %shl24 = shl i32 %sub22, %31
  %and26 = and i32 %shl24, %5
  br label %do.body34

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val27, align 4
  %off28 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %off28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %off28, align 4
  %sub29 = sub i32 %33, %35
  %shift30 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %shift30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %shift30, align 4
  %shl31 = shl i32 %sub29, %37
  %and33 = and i32 %shl31, %5
  br label %do.body34

do.body34:                                        ; preds = %sw.default, %sw.bb19, %sw.bb7, %sw.bb
  %mask.0 = phi i32 [ %5, %sw.default ], [ %5, %sw.bb19 ], [ %5, %sw.bb7 ], [ 65535, %sw.bb ]
  %value.1 = phi i32 [ %and33, %sw.default ], [ %and26, %sw.bb19 ], [ %cond, %sw.bb7 ], [ %value.0, %sw.bb ]
  %38 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp35.not = icmp eq i32 %38, 0
  br i1 %cmp35.not, label %do.body34.do.end48_crit_edge, label %do.end39

do.body34.do.end48_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val42, align 4
  %reg = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg, align 4
  %sreg = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 7
  %47 = ptrtoint ptr %sreg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool43.not = icmp eq i32 %48, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.81, ptr @.str.80
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.82, i32 noundef %40, ptr noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %value.1, i32 noundef %mask.0, ptr noundef nonnull %cond44) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end39, %do.body34.do.end48_crit_edge
  %sreg49 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %sreg49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sreg49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool50.not = icmp eq i32 %50, 0
  br i1 %tobool50.not, label %do.body70, label %if.then51

if.then51:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %shadow = getelementptr i8, ptr %1, i32 -2540
  %arrayidx = getelementptr [3 x i32], ptr %shadow, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %neg53 = xor i32 %mask.0, -1
  %and54 = and i32 %52, %neg53
  %and55 = and i32 %value.1, %mask.0
  %or56 = or i32 %and54, %and55
  store i32 %or56, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %sreg49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sreg49, align 4
  %arrayidx65 = getelementptr [3 x i32], ptr %shadow, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx65, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %lmmio66 = getelementptr i8, ptr %1, i32 -2548
  %58 = ptrtoint ptr %lmmio66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio66, align 4
  %reg67 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %60 = ptrtoint ptr %reg67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg67, align 4
  %shr = lshr i32 %61, 2
  %add.ptr68 = getelementptr i32, ptr %59, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %57) #10, !srcloc !309
  br label %if.end90

do.body70:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  tail call void @arm_heavy_mb() #10
  %lmmio75 = getelementptr i8, ptr %1, i32 -2548
  %62 = ptrtoint ptr %lmmio75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio75, align 4
  %reg76 = getelementptr inbounds %struct.cx88_ctrl, ptr %3, i32 0, i32 6
  %64 = ptrtoint ptr %reg76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg76, align 4
  %shr77 = lshr i32 %65, 2
  %add.ptr78 = getelementptr i32, ptr %63, i32 %shr77
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #10, !srcloc !307
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  %neg82 = xor i32 %mask.0, -1
  %and83 = and i32 %67, %neg82
  %and84 = and i32 %value.1, %mask.0
  %or85 = or i32 %and83, %and84
  %68 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %69 = ptrtoint ptr %lmmio75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio75, align 4
  %71 = ptrtoint ptr %reg76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg76, align 4
  %shr88 = lshr i32 %72, 2
  %add.ptr89 = getelementptr i32, ptr %70, i32 %shr88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %68) #10, !srcloc !309
  br label %if.end90

if.end90:                                         ; preds = %do.body70, %if.then51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_planes, align 4
  %fmt = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt, align 8
  %depth = getelementptr inbounds %struct.cx8800_fmt, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %mul = mul i32 %10, %8
  %height = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %mul2 = mul i32 %mul, %12
  %shr = lshr i32 %mul2, 3
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #10
  %width = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 8
  %depth = getelementptr inbounds %struct.cx8800_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul = mul i32 %11, %7
  %shr = lshr i32 %mul, 3
  %bpl = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 2
  %12 = ptrtoint ptr %bpl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %bpl, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  %height = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 30
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %mul7 = mul i32 %16, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7)
  %cmp.not = icmp eq i32 %mul7, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  %height126 = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 30
  %19 = ptrtoint ptr %height126 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height126, align 4
  %mul7127 = mul i32 %20, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %mul7127)
  %cmp128 = icmp ult i32 %18, %mul7127
  br i1 %cmp128, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i124

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i124:                                     ; preds = %vb2_plane_size.exit.thread
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %mul7127)
  %cmp1.i = icmp ult i32 %22, %mul7127
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i124.if.end42.i_crit_edge

if.then.i124.if.end42.i_crit_edge:                ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i124
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !330

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i124.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %24, %if.then38.i ], [ %mul7127, %if.then.i124.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %25 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %height129136 = phi ptr [ %height126, %if.end42.i ], [ %height, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge ]
  %field = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 31
  %26 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %27, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 5, label %sw.bb21
    i32 6, label %sw.bb33
  ]

sw.bb:                                            ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 8
  %risc = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %33 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bpl, align 8
  %35 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height129136, align 4
  %call13 = tail call i32 @cx88_risc_buffer(ptr noundef %30, ptr noundef %risc, ptr noundef %32, i32 noundef 0, i32 noundef -1, i32 noundef %34, i32 noundef 0, i32 noundef %36) #10
  br label %do.body

sw.bb14:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci15 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %pci15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci15, align 8
  %risc16 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bpl, align 8
  %43 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height129136, align 4
  %call20 = tail call i32 @cx88_risc_buffer(ptr noundef %38, ptr noundef %risc16, ptr noundef %40, i32 noundef -1, i32 noundef 0, i32 noundef %42, i32 noundef 0, i32 noundef %44) #10
  br label %do.body

sw.bb21:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci22 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %45 = ptrtoint ptr %pci22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci22, align 8
  %risc23 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %49 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bpl, align 8
  %51 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height129136, align 4
  %shr27 = lshr i32 %52, 1
  %mul28 = mul i32 %shr27, %50
  %call32 = tail call i32 @cx88_risc_buffer(ptr noundef %46, ptr noundef %risc23, ptr noundef %48, i32 noundef 0, i32 noundef %mul28, i32 noundef %50, i32 noundef 0, i32 noundef %shr27) #10
  br label %do.body

sw.bb33:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci34 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci34, align 8
  %risc35 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %57 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bpl, align 8
  %59 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height129136, align 4
  %shr39 = lshr i32 %60, 1
  %mul40 = mul i32 %shr39, %58
  %call44 = tail call i32 @cx88_risc_buffer(ptr noundef %54, ptr noundef %risc35, ptr noundef %56, i32 noundef %mul40, i32 noundef 0, i32 noundef %58, i32 noundef 0, i32 noundef %shr39) #10
  br label %do.body

sw.default:                                       ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pci46 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %61 = ptrtoint ptr %pci46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci46, align 8
  %risc47 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %65 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bpl, align 8
  %67 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height129136, align 4
  %shr53 = lshr i32 %68, 1
  %call54 = tail call i32 @cx88_risc_buffer(ptr noundef %62, ptr noundef %risc47, ptr noundef %64, i32 noundef 0, i32 noundef %66, i32 noundef %66, i32 noundef %66, i32 noundef %shr53) #10
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb33, %sw.bb21, %sw.bb14, %sw.bb
  %69 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp55 = icmp ugt i32 %69, 1
  br i1 %cmp55, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %70 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index, align 4
  %72 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width, align 8
  %74 = ptrtoint ptr %height129136 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height129136, align 4
  %76 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fmt, align 8
  %depth63 = getelementptr inbounds %struct.cx8800_fmt, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %depth63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %depth63, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 4
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef %vb, i32 noundef %71, ptr noundef nonnull @.str.84, i32 noundef %73, i32 noundef %75, i32 noundef %79, i32 noundef %81, i32 noundef %83) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr nocapture noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %risc4 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %risc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %risc4, align 4
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %9, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %risc4, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vidq, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  tail call fastcc void @start_video_dma(ptr noundef %1, ptr noundef %vidq, ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 815120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  %7 = and i32 %6, -285212673
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %9, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %11, i32 802912
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  %13 = and i32 %12, -100663297
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %15, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #10, !srcloc !309
  %slock = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 1
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %16 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not41 = icmp eq ptr %17, %vidq
  br i1 %cmp.i.not41, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %18 = phi ptr [ %28, %list_del.exit.while.body_crit_edge ], [ %17, %entry.while.body_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %18, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr31, i32 noundef 6) #10
  %27 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %28, %vidq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call23) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 10
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %add = add i32 %5, 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %arrayidx, align 4
  %jmp = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 368, ptr %11, align 4
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %add9 = add i32 %14, 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %16 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jmp, align 4
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx12, align 4
  %19 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %20, %vidq
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 10, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %22, ptr noundef %vidq) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vidq, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %27 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp ugt i32 %27, 1
  br i1 %cmp, label %list_add_tail.exit.if.end50.sink.split_crit_edge, label %list_add_tail.exit.if.end50_crit_edge

list_add_tail.exit.if.end50_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

list_add_tail.exit.if.end50.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.sink.split

if.else:                                          ; preds = %entry
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpu, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %29, align 4
  %prev26 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 10, i32 0, i32 1
  %32 = ptrtoint ptr %prev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev26, align 4
  %list29 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1
  %call.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %list29, ptr noundef %33, ptr noundef %vidq) #10
  br i1 %call.i.i68, label %if.end.i.i70, label %if.else.list_add_tail.exit71_crit_edge

if.else.list_add_tail.exit71_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit71

if.end.i.i70:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list29, ptr %prev26, align 4
  %35 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %vidq, ptr %list29, align 4
  %prev3.i.i69 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i69, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list29, ptr %33, align 4
  br label %list_add_tail.exit71

list_add_tail.exit71:                             ; preds = %if.end.i.i70, %if.else.list_add_tail.exit71_crit_edge
  %38 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %jmp34 = getelementptr i8, ptr %33, i32 20
  %41 = ptrtoint ptr %jmp34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %jmp34, align 4
  %arrayidx35 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx35, align 4
  %44 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp37 = icmp ugt i32 %44, 1
  br i1 %cmp37, label %list_add_tail.exit71.if.end50.sink.split_crit_edge, label %list_add_tail.exit71.if.end50_crit_edge

list_add_tail.exit71.if.end50_crit_edge:          ; preds = %list_add_tail.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

list_add_tail.exit71.if.end50.sink.split_crit_edge: ; preds = %list_add_tail.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %list_add_tail.exit71.if.end50.sink.split_crit_edge, %list_add_tail.exit.if.end50.sink.split_crit_edge
  %.str.89.sink = phi ptr [ @.str.86, %list_add_tail.exit.if.end50.sink.split_crit_edge ], [ @.str.89, %list_add_tail.exit71.if.end50.sink.split_crit_edge ]
  %index45 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %45 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.89.sink, ptr noundef nonnull @.str.87, ptr noundef %vb, i32 noundef %46) #13
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %list_add_tail.exit71.if.end50_crit_edge, %list_add_tail.exit.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_risc_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_video_dma(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %buf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %bpl = getelementptr inbounds %struct.cx88_buffer, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpl, align 8
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %buf, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %call = tail call i32 @cx88_sram_channel_setup(ptr noundef %1, ptr noundef nonnull @cx88_sram_channels, i32 noundef %3, i32 noundef %5) #10
  %width = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field, align 8
  %call2 = tail call i32 @cx88_set_scale(ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  tail call void @arm_heavy_mb() #10
  %fmt = getelementptr inbounds %struct.cx8800_dev, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 8
  %cxformat = getelementptr inbounds %struct.cx8800_fmt, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cxformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cxformat, align 4
  %or = or i32 %15, 4096
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %18, i32 802913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %20, i32 815116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 50331648) #10, !srcloc !309
  %count = getelementptr inbounds %struct.cx88_dmaqueue, ptr %q, i32 0, i32 1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %23, i32 524304
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pci_irqmask, align 8
  %27 = or i32 %24, 16777216
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %or21 = or i32 %28, %26
  %29 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr23 = getelementptr i32, ptr %31, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %29) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr30 = getelementptr i32, ptr %33, i32 524308
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  %35 = or i32 %34, 285216512
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %37, i32 524308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %35) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio, align 4
  %add.ptr44 = getelementptr i32, ptr %39, i32 802912
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %41 = or i32 %40, 100663296
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr51 = getelementptr i32, ptr %43, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %41) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr58 = getelementptr i32, ptr %45, i32 524301
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  %47 = or i32 %46, 536870912
  %48 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio, align 4
  %add.ptr65 = getelementptr i32, ptr %49, i32 524301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %47) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr72 = getelementptr i32, ptr %51, i32 815120
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  %53 = or i32 %52, 285212672
  %54 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio, align 4
  %add.ptr79 = getelementptr i32, ptr %55, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %53) #10, !srcloc !309
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_set_scale(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.91, ptr noundef %retval.0.i.i)
  %card.i = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board.i, align 8
  %call.i11 = tail call i32 @strscpy(ptr noundef %card.i, ptr noundef %11, i32 noundef 32) #10
  %capabilities.i = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %12 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2063597551, ptr %capabilities.i, align 4
  %tuner_type.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tuner_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -1
  %spec.store.select.i = select i1 %cmp.not.i, i32 -2063597551, i32 -2063532015
  %15 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select.i, ptr %capabilities.i, align 4
  %radio.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7
  %16 = ptrtoint ptr %radio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %radio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp4.i = icmp eq i32 %17, 10
  br i1 %cmp4.i, label %if.then5.i, label %pci_name.exit.cx88_querycap.exit_crit_edge

pci_name.exit.cx88_querycap.exit_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx88_querycap.exit

if.then5.i:                                       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i = or i32 %spec.store.select.i, 262144
  %18 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or7.i, ptr %capabilities.i, align 4
  br label %cx88_querycap.exit

cx88_querycap.exit:                               ; preds = %if.then5.i, %pci_name.exit.cx88_querycap.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !329

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [10 x %struct.cx8800_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %width = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height4, align 4
  %field = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field, align 8
  %field6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %field6, align 4
  %fmt7 = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt7, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pixelformat, align 4
  %18 = load ptr, ptr %fmt7, align 8
  %depth = getelementptr inbounds %struct.cx8800_fmt, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %depth, align 4
  %mul = mul i32 %20, %5
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr, ptr %bytesperline, align 4
  %mul17 = mul i32 %shr, %8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul17, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 11, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_buffers.i34 = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 13, i32 21
  %6 = ptrtoint ptr %num_buffers.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i35.not = icmp eq i32 %7, 0
  br i1 %cmp.i35.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvbdev, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %land.lhs.true

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %num_buffers.i36 = getelementptr inbounds %struct.cx8802_dev, ptr %9, i32 0, i32 6, i32 21
  %10 = ptrtoint ptr %num_buffers.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i37.not = icmp eq i32 %11, 0
  br i1 %cmp.i37.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %13, label %if.end10.format_by_fourcc.exit_crit_edge [
    i32 1497715271, label %if.end10.if.then.i_crit_edge
    i32 1329743698, label %if.then.fold.split.i
    i32 1363298130, label %if.then.fold.split9.i
    i32 1346520914, label %if.then.fold.split10.i
    i32 1380075346, label %if.then.fold.split11.i
    i32 861030210, label %if.then.fold.split12.i
    i32 877807426, label %if.then.fold.split13.i
    i32 876758866, label %if.then.fold.split14.i
    i32 1448695129, label %if.then.fold.split15.i
    i32 1498831189, label %if.then.fold.split16.i
  ]

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end10.format_by_fourcc.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split.i:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %if.end10.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end10.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ]
  %add.ptr.i = getelementptr %struct.cx8800_fmt, ptr @formats, i32 %i.07.lcssa.i
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.i, %if.end10.format_by_fourcc.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end10.format_by_fourcc.exit_crit_edge ]
  %fmt12 = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %fmt12, align 8
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt, align 4
  %width14 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 29
  %18 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width14, align 8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 30
  %21 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height16, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 4
  %field18 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 31
  %24 = ptrtoint ptr %field18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %field18, align 8
  br label %cleanup

cleanup:                                          ; preds = %format_by_fourcc.exit, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %format_by_fourcc.exit ], [ %call2, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1497715271, label %entry.format_by_fourcc.exit_crit_edge
    i32 1329743698, label %if.then.fold.split.i
    i32 1363298130, label %if.then.fold.split9.i
    i32 1346520914, label %if.then.fold.split10.i
    i32 1380075346, label %if.then.fold.split11.i
    i32 861030210, label %if.then.fold.split12.i
    i32 877807426, label %if.then.fold.split13.i
    i32 876758866, label %if.then.fold.split14.i
    i32 1448695129, label %if.then.fold.split15.i
    i32 1498831189, label %if.then.fold.split16.i
  ]

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.format_by_fourcc.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ]
  %add.ptr.i = getelementptr %struct.cx8800_fmt, ptr @formats, i32 %i.07.lcssa.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %format_by_fourcc.exit
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorm, align 8
  %and.i = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %field8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field8, align 4
  %.off = add i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %div57 = lshr exact i32 %cond.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div57)
  %cmp = icmp ugt i32 %12, %div57
  br i1 %cmp, label %sw.default.if.end16_crit_edge, label %sw.default.if.then14_crit_edge

sw.default.if.then14_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

sw.default.if.end16_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.epilog:                                        ; preds = %if.end
  %13 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch66 = icmp eq i32 %13, 2
  br i1 %switch66, label %sw.epilog.if.then14_crit_edge, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.epilog.if.then14_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = lshr exact i32 %cond.i, 1
  br label %if.then14

if.then14:                                        ; preds = %sw.epilog.if.then14_crit_edge, %sw.default.if.then14_crit_edge
  %div1556.pre-phi = phi i32 [ %.pre, %sw.epilog.if.then14_crit_edge ], [ %div57, %sw.default.if.then14_crit_edge ]
  %field.064 = phi i32 [ %10, %sw.epilog.if.then14_crit_edge ], [ 3, %sw.default.if.then14_crit_edge ]
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.epilog.if.end16_crit_edge, %sw.default.if.end16_crit_edge
  %field.061 = phi i32 [ %field.064, %if.then14 ], [ %10, %sw.epilog.if.end16_crit_edge ], [ 4, %sw.default.if.end16_crit_edge ]
  %maxh.0 = phi i32 [ %div1556.pre-phi, %if.then14 ], [ %cond.i, %sw.epilog.if.end16_crit_edge ], [ %cond.i, %sw.default.if.end16_crit_edge ]
  %height19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt2, i32 noundef 48, i32 noundef 720, i32 noundef 2, ptr noundef %height19, i32 noundef 32, i32 noundef %maxh.0, i32 noundef 0, i32 noundef 0) #10
  %14 = ptrtoint ptr %field8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %field.061, ptr %field8, align 4
  %15 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt2, align 4
  %depth = getelementptr %struct.cx8800_fmt, ptr @formats, i32 %i.07.lcssa.i, i32 1
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth, align 4
  %mul = mul i32 %18, %16
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %bytesperline, align 4
  %20 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height19, align 4
  %mul29 = mul i32 %21, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul29, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %format_by_fourcc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %tvnorm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tvnorm2 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %tvnorm2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tvnorm2, align 8
  %6 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %tvnorm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %tvnorms) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @cx88_set_tvnorm(ptr noundef %3, i64 noundef %tvnorms) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp ugt i32 %1, 3
  br i1 %cmp.i, label %entry.cx88_enum_input.exit_crit_edge, label %if.end.i

entry.cx88_enum_input.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx88_enum_input.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %arrayidx.i = getelementptr %struct.cx88_core, ptr %5, i32 0, i32 23, i32 6, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.cx88_enum_input.exit_crit_edge, label %if.end2.i

if.end.i.cx88_enum_input.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx88_enum_input.exit

if.end2.i:                                        ; preds = %if.end.i
  %type3.i = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %8 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %type3.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr [10 x ptr], ptr @cx88_enum_input.iname, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8.i, align 4
  %call.i3 = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %12, i32 noundef 32) #10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %switch.i = icmp eq i32 %15, 6
  br i1 %switch.i, label %if.then19.i, label %if.end2.i.if.end21.i_crit_edge

if.end2.i.if.end21.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type3.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end2.i.if.end21.i_crit_edge
  %std.i = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %17 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 8355831, ptr %std.i, align 8
  br label %cx88_enum_input.exit

cx88_enum_input.exit:                             ; preds = %if.end21.i, %if.end.i.cx88_enum_input.exit_crit_edge, %entry.cx88_enum_input.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end21.i ], [ -22, %entry.cx88_enum_input.exit_crit_edge ], [ -22, %if.end.i.cx88_enum_input.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %input = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 8
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.cx88_core, ptr %3, i32 0, i32 23, i32 6, i32 %i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cx88_newstation(ptr noundef %3) #10
  %call4 = tail call i32 @cx88_video_mux(ptr noundef %3, i32 noundef %i)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !329

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef 32) #10
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %capability, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %9 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rangehigh, align 4
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.do.end44_crit_edge

if.end5.do.end44_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then8:                                         ; preds = %if.end5
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then8.do.body13_crit_edge, label %if.then10

if.then8.do.body13_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef %3, i32 noundef 1) #10
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.then8.do.body13_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn77 = load ptr, ptr %subdevs, align 4
  %cmp17.not79 = icmp eq ptr %.pn77, %subdevs
  br i1 %cmp17.not79, label %do.body13.do.end_crit_edge, label %do.body13.for.body_crit_edge

do.body13.for.body_crit_edge:                     ; preds = %do.body13
  br label %for.body

do.body13.do.end_crit_edge:                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body13.for.body_crit_edge
  %.pn80 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn77, %do.body13.for.body_crit_edge ]
  %__sd.081 = getelementptr i8, ptr %.pn80, i32 -80
  %ops = getelementptr i8, ptr %.pn80, i32 24
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_tuner, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %if.then24

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 %20(ptr noundef %__sd.081, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn80, align 4
  %cmp17.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp17.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body13.do.end_crit_edge
  %22 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gate_ctrl, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %do.end.do.end44_crit_edge, label %if.then39

do.end.do.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %23(ptr noundef %3, i32 noundef 0) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.end.do.end44_crit_edge, %if.end5.do.end44_crit_edge
  tail call void @cx88_get_stereo(ptr noundef %3, ptr noundef %t) #10
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr45 = getelementptr i32, ptr %25, i32 802880
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool49.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool49.not, i32 0, i32 65535
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 8
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audmode, align 4
  tail call void @cx88_set_stereo(ptr noundef %3, i32 noundef %9, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tuner_type = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !329

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %freq = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %frequency, align 4
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.then7.do.body12_crit_edge, label %if.then9

if.then7.do.body12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %3, i32 noundef 1) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %if.then7.do.body12_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %15 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn66 = load ptr, ptr %subdevs, align 4
  %cmp16.not68 = icmp eq ptr %.pn66, %subdevs
  br i1 %cmp16.not68, label %do.body12.do.end_crit_edge, label %do.body12.for.body_crit_edge

do.body12.for.body_crit_edge:                     ; preds = %do.body12
  br label %for.body

do.body12.do.end_crit_edge:                       ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body12.for.body_crit_edge
  %.pn69 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn66, %do.body12.for.body_crit_edge ]
  %__sd.070 = getelementptr i8, ptr %.pn69, i32 -80
  %ops = getelementptr i8, ptr %.pn69, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tuner19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %g_frequency, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %if.then24

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 %21(ptr noundef %__sd.070, ptr noundef %f) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp16.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp16.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body12.do.end_crit_edge
  %23 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gate_ctrl, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %do.end.cleanup_crit_edge, label %if.then39

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %24(ptr noundef %3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @cx88_set_freq(ptr noundef %3, ptr noundef %f)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %6 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %reg2, align 1
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 2
  %idx.ext = and i32 %9, 4194303
  %add.ptr = getelementptr i32, ptr %5, i32 %idx.ext
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  %conv = zext i32 %11 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 4, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv = trunc i64 %5 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %9 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %reg2, align 1
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 2
  %idx.ext = and i32 %12, 4194303
  %add.ptr = getelementptr i32, ptr %8, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #10, !srcloc !309
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_get_stereo(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_set_stereo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8800_vbi_fmt(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_open(ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  tail call void @arm_heavy_mb() #10
  %gpio3 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7, i32 4
  %4 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 868359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  tail call void @arm_heavy_mb() #10
  %gpio0 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7, i32 1
  %9 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio0, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %13, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %11) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %gpio1 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7, i32 2
  %14 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio1, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %18, i32 868357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %16) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  tail call void @arm_heavy_mb() #10
  %gpio2 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7, i32 3
  %19 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio2, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr23 = getelementptr i32, ptr %23, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #10, !srcloc !309
  %audioroute = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 23, i32 7, i32 5
  %24 = ptrtoint ptr %audioroute to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %audioroute, align 4
  %25 = and i8 %bf.load, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not = icmp eq i8 %25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %do.body
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 20
  %26 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_wm8775, align 4
  %tobool28.not = icmp eq ptr %27, null
  br i1 %tobool28.not, label %if.then27.if.end76_crit_edge, label %do.body30

if.then27.if.end76_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.body30:                                        ; preds = %if.then27
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %28 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool31.not = icmp eq i32 %29, 0
  br i1 %tobool31.not, label %if.then32, label %do.body30.if.end76_crit_edge

do.body30.if.end76_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then32:                                        ; preds = %do.body30
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %30 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gate_ctrl, align 4
  %tobool33.not = icmp eq ptr %31, null
  br i1 %tobool33.not, label %if.then32.do.body37_crit_edge, label %if.then34

if.then32.do.body37_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %31(ptr noundef %3, i32 noundef 1) #10
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %if.then32.do.body37_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %32 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn189190 = load ptr, ptr %subdevs, align 4
  %cmp.not192 = icmp eq ptr %.pn189190, %subdevs
  br i1 %cmp.not192, label %do.body37.do.end65_crit_edge, label %do.body37.for.body_crit_edge

do.body37.for.body_crit_edge:                     ; preds = %do.body37
  br label %for.body

do.body37.do.end65_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body37.for.body_crit_edge
  %.pn189193 = phi ptr [ %.pn189, %for.inc.for.body_crit_edge ], [ %.pn189190, %do.body37.for.body_crit_edge ]
  %__sd.0194 = getelementptr i8, ptr %.pn189193, i32 -80
  %ops = getelementptr i8, ptr %.pn189193, i32 24
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %audio, align 4
  %tobool42.not = icmp eq ptr %36, null
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_routing, align 4
  %tobool45.not = icmp eq ptr %38, null
  br i1 %tobool45.not, label %land.lhs.true.for.inc_crit_edge, label %if.then46

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %audioroute to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load53 = load i8, ptr %audioroute, align 4
  %bf.lshr54 = lshr i8 %bf.load53, 2
  %bf.clear55 = and i8 %bf.lshr54, 15
  %bf.cast56 = zext i8 %bf.clear55 to i32
  %call57 = tail call i32 %38(ptr noundef %__sd.0194, i32 noundef %bf.cast56, i32 noundef 0, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %.pn189193 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn189 = load ptr, ptr %.pn189193, align 4
  %cmp.not = icmp eq ptr %.pn189, %subdevs
  br i1 %cmp.not, label %for.inc.do.end65_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end65_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

do.end65:                                         ; preds = %for.inc.do.end65_crit_edge, %do.body37.do.end65_crit_edge
  %41 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gate_ctrl, align 4
  %tobool69.not = icmp eq ptr %42, null
  br i1 %tobool69.not, label %do.end65.if.end76_crit_edge, label %if.then70

do.end65.if.end76_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then70:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %42(ptr noundef %3, i32 noundef 0) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %do.end65.if.end76_crit_edge, %do.body30.if.end76_crit_edge, %if.then27.if.end76_crit_edge
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 32
  %43 = ptrtoint ptr %tvaudio to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 10, ptr %tvaudio, align 4
  tail call void @cx88_set_tvaudio(ptr noundef %3) #10
  br label %do.body79

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %tvaudio77 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 32
  %44 = ptrtoint ptr %tvaudio77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 9, ptr %tvaudio77, align 4
  tail call void @cx88_set_tvaudio(ptr noundef %3) #10
  tail call void @cx88_set_stereo(ptr noundef %3, i32 noundef 1, i32 noundef 1) #10
  br label %do.body79

do.body79:                                        ; preds = %if.else, %if.end76
  %i2c_rc80 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %45 = ptrtoint ptr %i2c_rc80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_rc80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool81.not = icmp eq i32 %46, 0
  br i1 %tobool81.not, label %if.then82, label %do.body79.cleanup_crit_edge

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %do.body79
  %gate_ctrl83 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %47 = ptrtoint ptr %gate_ctrl83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gate_ctrl83, align 4
  %tobool84.not = icmp eq ptr %48, null
  br i1 %tobool84.not, label %if.then82.do.body88_crit_edge, label %if.then85

if.then82.do.body88_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %48(ptr noundef %3, i32 noundef 1) #10
  br label %do.body88

do.body88:                                        ; preds = %if.then85, %if.then82.do.body88_crit_edge
  %subdevs93 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %49 = ptrtoint ptr %subdevs93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn195 = load ptr, ptr %subdevs93, align 4
  %cmp101.not197 = icmp eq ptr %.pn195, %subdevs93
  br i1 %cmp101.not197, label %do.body88.do.end124_crit_edge, label %do.body88.for.body103_crit_edge

do.body88.for.body103_crit_edge:                  ; preds = %do.body88
  br label %for.body103

do.body88.do.end124_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end124

for.body103:                                      ; preds = %for.inc116.for.body103_crit_edge, %do.body88.for.body103_crit_edge
  %.pn198 = phi ptr [ %.pn, %for.inc116.for.body103_crit_edge ], [ %.pn195, %do.body88.for.body103_crit_edge ]
  %__sd89.0199 = getelementptr i8, ptr %.pn198, i32 -80
  %ops104 = getelementptr i8, ptr %.pn198, i32 24
  %50 = ptrtoint ptr %ops104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops104, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tuner, align 4
  %tobool105.not = icmp eq ptr %53, null
  br i1 %tobool105.not, label %for.body103.for.inc116_crit_edge, label %land.lhs.true106

for.body103.for.inc116_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

land.lhs.true106:                                 ; preds = %for.body103
  %s_radio = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %s_radio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_radio, align 4
  %tobool109.not = icmp eq ptr %55, null
  br i1 %tobool109.not, label %land.lhs.true106.for.inc116_crit_edge, label %if.then110

land.lhs.true106.for.inc116_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

if.then110:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  %call114 = tail call i32 %55(ptr noundef %__sd89.0199) #10
  br label %for.inc116

for.inc116:                                       ; preds = %if.then110, %land.lhs.true106.for.inc116_crit_edge, %for.body103.for.inc116_crit_edge
  %56 = ptrtoint ptr %.pn198 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn198, align 4
  %cmp101.not = icmp eq ptr %.pn, %subdevs93
  br i1 %cmp101.not, label %for.inc116.do.end124_crit_edge, label %for.inc116.for.body103_crit_edge

for.inc116.for.body103_crit_edge:                 ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body103

for.inc116.do.end124_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end124

do.end124:                                        ; preds = %for.inc116.do.end124_crit_edge, %do.body88.do.end124_crit_edge
  %57 = ptrtoint ptr %gate_ctrl83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gate_ctrl83, align 4
  %tobool128.not = icmp eq ptr %58, null
  br i1 %tobool128.not, label %do.end124.cleanup_crit_edge, label %if.then129

do.end124.cleanup_crit_edge:                      ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then129:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %58(ptr noundef %3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %do.end124.cleanup_crit_edge, %do.body79.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %do.end124.cleanup_crit_edge ], [ 0, %if.then129 ], [ 0, %do.body79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !330

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.92, i32 noundef 32) #10
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then5.do.body10_crit_edge, label %if.then7

if.then5.do.body10_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %3, i32 noundef 1) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %if.then5.do.body10_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn61 = load ptr, ptr %subdevs, align 4
  %cmp14.not63 = icmp eq ptr %.pn61, %subdevs
  br i1 %cmp14.not63, label %do.body10.do.end_crit_edge, label %do.body10.for.body_crit_edge

do.body10.for.body_crit_edge:                     ; preds = %do.body10
  br label %for.body

do.body10.do.end_crit_edge:                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body10.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn61, %do.body10.for.body_crit_edge ]
  %__sd.065 = getelementptr i8, ptr %.pn64, i32 -80
  %ops = getelementptr i8, ptr %.pn64, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_tuner, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %land.lhs.true.for.inc_crit_edge, label %if.then21

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 %16(ptr noundef %__sd.065, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp14.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp14.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body10.do.end_crit_edge
  %18 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gate_ctrl, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %do.end.cleanup_crit_edge, label %if.then36

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then2, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %do.body
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then2.do.body7_crit_edge, label %if.then4

if.then2.do.body7_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %3, i32 noundef 1) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then4, %if.then2.do.body7_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn55 = load ptr, ptr %subdevs, align 4
  %cmp11.not57 = icmp eq ptr %.pn55, %subdevs
  br i1 %cmp11.not57, label %do.body7.do.end_crit_edge, label %do.body7.for.body_crit_edge

do.body7.for.body_crit_edge:                      ; preds = %do.body7
  br label %for.body

do.body7.do.end_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body7.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn55, %do.body7.for.body_crit_edge ]
  %__sd.059 = getelementptr i8, ptr %.pn58, i32 -80
  %ops = getelementptr i8, ptr %.pn58, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_tuner, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true.for.inc_crit_edge, label %if.then16

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 %16(ptr noundef %__sd.059, ptr noundef %t) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp11.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp11.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body7.do.end_crit_edge
  %18 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gate_ctrl, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %do.end.cleanup_crit_edge, label %if.then31

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_ir_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_shutdown(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_suspend(ptr nocapture noundef readonly %dev_d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %slock = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %5, %vidq
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end10

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @arm_heavy_mb() #10
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %9, i32 815120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  %11 = and i32 %10, -285212673
  %12 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %13, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %15, i32 802912
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  %17 = and i32 %16, -100663297
  %18 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %19, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %17) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i, align 4
  %add.ptr25.i = getelementptr i32, ptr %21, i32 524304
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  %23 = and i32 %22, -16777217
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr32.i = getelementptr i32, ptr %25, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %23) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr39.i = getelementptr i32, ptr %27, i32 524308
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  %29 = and i32 %28, -285216513
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr46.i = getelementptr i32, ptr %31, i32 524308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %29) #10, !srcloc !309
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i37.not = icmp eq ptr %33, %vbiq
  br i1 %cmp.i37.not, label %if.end.if.end23_crit_edge, label %do.end20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  tail call void @cx8800_stop_vbi_dma(ptr noundef %1) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #10
  %ir = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 40
  %34 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ir, align 4
  %tobool25.not = icmp eq ptr %35, null
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cx88_ir_stop(ptr noundef %3) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  tail call void @cx88_shutdown(ptr noundef %3) #10
  %state = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_resume(ptr nocapture noundef readonly %dev_d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %call2 = tail call i32 @cx88_reset(ptr noundef %3) #10
  %ir = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 40
  %5 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ir, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @cx88_ir_start(ptr noundef %3) #10
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 524304
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !307
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pci_irqmask, align 8
  %or = or i32 %12, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr10 = getelementptr i32, ptr %15, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #10, !srcloc !309
  %slock = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 1
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %vidq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %17, %vidq
  br i1 %cmp.i.not, label %do.body.if.end30_crit_edge, label %do.end25

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end25:                                         ; preds = %do.body
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #13
  %18 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not.i = icmp eq ptr %19, %vidq
  br i1 %cmp.i.not.i, label %do.end25.if.end30_crit_edge, label %if.then.i

do.end25.if.end30_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then.i:                                        ; preds = %do.end25
  %add.ptr.i = getelementptr i8, ptr %19, i32 -736
  %20 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i60 = icmp ugt i32 %20, 1
  br i1 %cmp.i60, label %do.end.i, label %if.then.i.do.end7.i_crit_edge

if.then.i.do.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr i8, ptr %19, i32 -732
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef %add.ptr.i, i32 noundef %22) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then.i.do.end7.i_crit_edge
  tail call fastcc void @start_video_dma(ptr noundef %1, ptr noundef %vidq, ptr noundef %add.ptr.i) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end7.i, %do.end25.if.end30_crit_edge, %do.body.if.end30_crit_edge
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i61.not = icmp eq ptr %24, %vbiq
  br i1 %cmp.i61.not, label %if.end30.if.end42_crit_edge, label %do.end37

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #13
  %call41 = tail call i32 @cx8800_restart_vbi_queue(ptr noundef %1, ptr noundef %vbiq) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %if.end30.if.end42_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call15) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx8800_stop_vbi_dma(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_ir_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8800_restart_vbi_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !151, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !219, !220, !221, !222, !223, !225, !227, !229, !230, !231, !233, !235, !237, !238, !239, !240, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version389, !8, !"__UNIQUE_ID_version389", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 37, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_video_nr, !14, !"__param_video_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 45, i32 1}
!15 = !{ptr @__UNIQUE_ID_video_nrtype390, !14, !"__UNIQUE_ID_video_nrtype390", i1 false, i1 false}
!16 = !{ptr @__param_vbi_nr, !17, !"__param_vbi_nr", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 46, i32 1}
!18 = !{ptr @__UNIQUE_ID_vbi_nrtype391, !17, !"__UNIQUE_ID_vbi_nrtype391", i1 false, i1 false}
!19 = !{ptr @__param_radio_nr, !20, !"__param_radio_nr", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 47, i32 1}
!21 = !{ptr @__UNIQUE_ID_radio_nrtype392, !20, !"__UNIQUE_ID_radio_nrtype392", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_video_nr393, !23, !"__UNIQUE_ID_video_nr393", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 49, i32 1}
!24 = !{ptr @__UNIQUE_ID_vbi_nr394, !25, !"__UNIQUE_ID_vbi_nr394", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 50, i32 1}
!26 = !{ptr @__UNIQUE_ID_radio_nr395, !27, !"__UNIQUE_ID_radio_nr395", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 51, i32 1}
!28 = !{ptr @__param_video_debug, !29, !"__param_video_debug", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 54, i32 1}
!30 = !{ptr @__UNIQUE_ID_video_debugtype396, !29, !"__UNIQUE_ID_video_debugtype396", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_video_debug397, !32, !"__UNIQUE_ID_video_debug397", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 55, i32 1}
!33 = !{ptr @__param_irq_debug, !34, !"__param_irq_debug", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 58, i32 1}
!35 = !{ptr @__UNIQUE_ID_irq_debugtype398, !34, !"__UNIQUE_ID_irq_debugtype398", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_irq_debug399, !37, !"__UNIQUE_ID_irq_debug399", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 59, i32 1}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 286, i32 2}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cx88_video_mux._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @cx88_video_mux._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_cx88_video_mux, !45, !"__ksymtab_cx88_video_mux", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 345, i32 1}
!46 = !{ptr @__ksymtab_cx88_querycap, !47, !"__ksymtab_cx88_querycap", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 802, i32 1}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 847, i32 28}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 848, i32 28}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 849, i32 28}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 850, i32 28}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 851, i32 24}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 852, i32 28}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 853, i32 23}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 854, i32 21}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 855, i32 23}
!66 = !{ptr @cx88_enum_input.iname, !67, !"iname", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 846, i32 28}
!68 = !{ptr @__ksymtab_cx88_enum_input, !69, !"__ksymtab_cx88_enum_input", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 872, i32 1}
!70 = !{ptr @__ksymtab_cx88_set_freq, !71, !"__ksymtab_cx88_set_freq", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 984, i32 1}
!72 = !{ptr @__initcall__kmod_cx8800__400_1634_cx8800_pci_driver_init6, !73, !"__initcall__kmod_cx8800__400_1634_cx8800_pci_driver_init6", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1634, i32 1}
!74 = !{ptr @__exitcall_cx8800_pci_driver_exit, !73, !"__exitcall_cx8800_pci_driver_exit", i1 false, i1 false}
!75 = !{ptr @video_debug, !76, !"video_debug", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 53, i32 21}
!77 = !{ptr @irq_debug, !78, !"irq_debug", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 57, i32 21}
!79 = !{ptr @__param_str_video_nr, !14, !"__param_str_video_nr", i1 false, i1 false}
!80 = !{ptr @__param_arr_video_nr, !14, !"__param_arr_video_nr", i1 false, i1 false}
!81 = !{ptr @video_nr, !82, !"video_nr", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 41, i32 21}
!83 = !{ptr @__param_str_vbi_nr, !17, !"__param_str_vbi_nr", i1 false, i1 false}
!84 = !{ptr @__param_arr_vbi_nr, !17, !"__param_arr_vbi_nr", i1 false, i1 false}
!85 = !{ptr @vbi_nr, !86, !"vbi_nr", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 42, i32 21}
!87 = !{ptr @__param_str_radio_nr, !20, !"__param_str_radio_nr", i1 false, i1 false}
!88 = !{ptr @__param_arr_radio_nr, !20, !"__param_arr_radio_nr", i1 false, i1 false}
!89 = !{ptr @radio_nr, !90, !"radio_nr", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 43, i32 21}
!91 = !{ptr @__param_str_video_debug, !29, !"__param_str_video_debug", i1 false, i1 false}
!92 = !{ptr @__param_str_irq_debug, !34, !"__param_str_irq_debug", i1 false, i1 false}
!93 = !{ptr @cx8800_pci_driver, !94, !"cx8800_pci_driver", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1626, i32 26}
!95 = !{ptr @cx8800_pci_tbl, !96, !"cx8800_pci_tbl", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1612, i32 35}
!97 = !{ptr @.str.15, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1286, i32 2}
!99 = !{ptr @.str.16, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cx8800_initdev._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx8800_initdev._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.18, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1294, i32 3}
!104 = !{ptr @cx8800_initdev._entry.17, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cx8800_initdev._entry_ptr.19, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @cx8800_initdev.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1299, i32 2}
!108 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1311, i32 3}
!111 = !{ptr @cx8800_initdev._entry.21, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cx8800_initdev._entry_ptr.23, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.24, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1351, i32 12}
!115 = !{ptr @.str.25, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1376, i32 9}
!117 = !{ptr @cx8800_initdev.rtc_info, !118, !"rtc_info", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1382, i32 38}
!119 = !{ptr @.str.26, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1386, i32 3}
!121 = !{ptr @.str.27, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1391, i32 3}
!123 = !{ptr @.str.28, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1445, i32 34}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1456, i32 3}
!127 = !{ptr @cx8800_initdev._entry.29, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cx8800_initdev._entry_ptr.31, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.33, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1459, i32 2}
!131 = !{ptr @cx8800_initdev._entry.32, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cx8800_initdev._entry_ptr.34, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1463, i32 32}
!135 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1473, i32 3}
!137 = !{ptr @cx8800_initdev._entry.36, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cx8800_initdev._entry_ptr.38, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.40, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1476, i32 2}
!141 = !{ptr @cx8800_initdev._entry.39, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cx8800_initdev._entry_ptr.41, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.42, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1481, i32 35}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1488, i32 4}
!147 = !{ptr @cx8800_initdev._entry.43, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cx8800_initdev._entry_ptr.45, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @cx8800_initdev._entry.46, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1491, i32 3}
!151 = !{ptr @cx8800_initdev._entry_ptr.47, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1497, i32 19}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1501, i32 4}
!156 = !{ptr @cx8800_initdev._entry.49, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cx8800_initdev._entry_ptr.51, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1122, i32 3}
!160 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @cx8800_irq._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @cx8800_irq._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1072, i32 22}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1078, i32 3}
!167 = !{ptr @.str.56, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @cx8800_vid_irq._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @cx8800_vid_irq._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1054, i32 2}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1054, i32 14}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1054, i32 26}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1054, i32 38}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1055, i32 2}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1055, i32 14}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1055, i32 26}
!184 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1055, i32 38}
!186 = !{ptr @.str.65, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1056, i32 2}
!188 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1056, i32 14}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1056, i32 26}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1056, i32 38}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1057, i32 2}
!196 = !{ptr @.str.70, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1057, i32 14}
!198 = !{ptr @.str.71, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1057, i32 26}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1057, i32 38}
!202 = !{ptr @.str.73, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1058, i32 2}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1058, i32 14}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1058, i32 26}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1058, i32 38}
!210 = !{ptr @cx88_vid_irqs, !211, !"cx88_vid_irqs", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1053, i32 20}
!212 = !{ptr @cx8800_aud_ctls, !213, !"cx8800_aud_ctls", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 241, i32 31}
!214 = !{ptr @cx8800_ctrl_aud_ops, !215, !"cx8800_ctrl_aud_ops", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1244, i32 35}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 691, i32 2}
!218 = !{ptr @.str.79, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @cx8800_s_aud_ctrl._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @cx8800_s_aud_ctrl._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.81, !217, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @cx8800_vid_ctls, !224, !"cx8800_vid_ctls", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 153, i32 31}
!225 = !{ptr @cx8800_ctrl_vid_ops, !226, !"cx8800_ctrl_vid_ops", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1240, i32 35}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 642, i32 2}
!229 = !{ptr @cx8800_s_vid_ctrl._entry, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @cx8800_s_vid_ctrl._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @formats, !232, !"formats", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 70, i32 32}
!233 = !{ptr @cx8800_video_qops, !234, !"cx8800_video_qops", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 559, i32 29}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 479, i32 2}
!237 = !{ptr @.str.84, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @buffer_prepare._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @buffer_prepare._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!242 = !{ptr @.str.85, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.86, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 515, i32 3}
!245 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @buffer_queue._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @buffer_queue._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.89, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 523, i32 3}
!250 = !{ptr @buffer_queue._entry.88, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @buffer_queue._entry_ptr.90, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @cx8800_video_template, !253, !"cx8800_video_template", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1172, i32 34}
!254 = !{ptr @video_fops, !255, !"video_fops", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1133, i32 42}
!256 = !{ptr @video_ioctl_ops, !257, !"video_ioctl_ops", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1143, i32 36}
!258 = !{ptr @.str.91, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 811, i32 25}
!260 = !{ptr @cx8800_vbi_template, !261, !"cx8800_vbi_template", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1205, i32 34}
!262 = !{ptr @vbi_ioctl_ops, !263, !"vbi_ioctl_ops", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1179, i32 36}
!264 = !{ptr @cx8800_radio_template, !265, !"cx8800_radio_template", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1234, i32 34}
!266 = !{ptr @radio_fops, !267, !"radio_fops", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1212, i32 42}
!268 = !{ptr @radio_ioctl_ops, !269, !"radio_ioctl_ops", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1220, i32 36}
!270 = !{ptr @.str.92, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1032, i32 19}
!272 = !{ptr @cx8800_pm_ops, !273, !"cx8800_pm_ops", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1624, i32 8}
!274 = !{ptr @.str.93, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1562, i32 3}
!276 = !{ptr @.str.94, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @cx8800_suspend._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @cx8800_suspend._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.96, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1566, i32 3}
!281 = !{ptr @cx8800_suspend._entry.95, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @cx8800_suspend._entry_ptr.97, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.98, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1598, i32 3}
!285 = !{ptr @.str.99, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @cx8800_resume._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @cx8800_resume._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.101, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 1602, i32 3}
!290 = !{ptr @cx8800_resume._entry.100, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @cx8800_resume._entry_ptr.102, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.103, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/cx88/cx88-video.c", i32 411, i32 3}
!294 = !{ptr @.str.104, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @restart_video_queue._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @restart_video_queue._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i64 2158717015}
!307 = !{i64 5044659}
!308 = !{i64 2158718154}
!309 = !{i64 5044241}
!310 = !{i64 2158718647}
!311 = !{i64 2158719340}
!312 = !{i64 2158720033}
!313 = !{i64 2158720726}
!314 = !{i64 2158725017}
!315 = !{i64 2158726136}
!316 = !{i64 2158727598}
!317 = !{i64 2158728717}
!318 = !{i64 2158730179}
!319 = !{i64 2158731298}
!320 = !{i64 2158735220}
!321 = !{i64 2158736313}
!322 = !{i64 2158737721}
!323 = !{i64 2158738814}
!324 = !{i64 2158740222}
!325 = !{i64 2158741315}
!326 = !{i64 2158746500}
!327 = !{i64 2158748054}
!328 = !{i64 2158749147}
!329 = !{!"branch_weights", i32 1, i32 2000}
!330 = !{!"branch_weights", i32 2000, i32 1}
!331 = !{i64 2158895535}
!332 = !{i64 2158896696}
!333 = !{i64 2158882202}
!334 = !{i64 2158882518}
!335 = !{i64 2158872353}
!336 = !{i64 2158872955}
!337 = !{i64 2158873261}
!338 = !{i64 2158876834}
!339 = !{i64 2158877903}
!340 = !{i64 2158879269}
!341 = !{i64 2158880338}
!342 = !{i64 2158880998}
!343 = !{i64 2158881600}
!344 = !{i64 2158884700}
!345 = !{i64 2158832928}
!346 = !{i64 2158834394}
!347 = !{i64 2158835435}
!348 = !{i64 2158816428}
!349 = !{i64 2158817473}
!350 = !{i64 2158820556}
!351 = !{i64 2158822022}
!352 = !{i64 2158823063}
!353 = !{i64 2158796360}
!354 = !{i64 2158797429}
!355 = !{i64 2158798795}
!356 = !{i64 2158799864}
!357 = !{i64 2158750964}
!358 = !{i64 2158751543}
!359 = !{i64 2158753289}
!360 = !{i64 2158754522}
!361 = !{i64 2158756025}
!362 = !{i64 2158757132}
!363 = !{i64 2158758540}
!364 = !{i64 2158759623}
!365 = !{i64 2158761051}
!366 = !{i64 2158762158}
!367 = !{i64 2158763566}
!368 = !{i64 2158764649}
!369 = !{i64 2158845976}
!370 = !{i64 2158862003}
!371 = !{i64 2158862326}
!372 = !{i64 2158801997}
!373 = !{i64 2158802600}
!374 = !{i64 2158803203}
!375 = !{i64 2158803806}
!376 = !{i64 2158766050}
!377 = !{i64 2158767119}
!378 = !{i64 2158768485}
!379 = !{i64 2158769554}
!380 = !{i64 2158770955}
!381 = !{i64 2158772044}
!382 = !{i64 2158773440}
!383 = !{i64 2158774525}
!384 = !{i64 2158915025}
!385 = !{i64 2158916186}
