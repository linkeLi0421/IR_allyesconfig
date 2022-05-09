; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
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
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109 }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.anon.106 = type { ptr, ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr, ptr, ptr }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.atomic_t = type { i32 }

@__param_str_pcb_debug = internal constant [18 x i8] c"cx231xx.pcb_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pcb_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcb_debug = internal constant %struct.kernel_param { ptr @__param_str_pcb_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pcb_debug } }, section "__param", align 4
@__UNIQUE_ID_pcb_debugtype303 = internal constant [31 x i8] c"cx231xx.parmtype=pcb_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcb_debug304 = internal constant [64 x i8] c"cx231xx.parm=pcb_debug:enable pcb config debug messages [video]\00", section ".modinfo", align 1
@cx231xx_Scenario = internal global { [9 x %struct.pcb_config], [180 x i8] } { [9 x %struct.pcb_config] [%struct.pcb_config { i8 0, i8 0, i8 0, i8 1, i32 16, i32 255, i32 255, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 1, i8 0, i8 0, i8 1, i32 16, i32 0, i32 255, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 2, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 2, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 2, i8 0, i8 0, i8 14, i32 255, i32 255, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 -1, i8 1, i8 2, i8 3, i8 4, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 -1, i8 1, i8 2, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 3, i8 0, i8 0, i8 15, i32 0, i32 255, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 2, i8 3, i8 4, i8 5, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 2, i8 3, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 4, i8 0, i8 0, i8 15, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 2, i8 3, i8 4, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 5, i8 0, i8 0, i8 15, i32 255, i32 16, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 1, i8 2, i8 3, i8 4, i8 5, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 1, i8 2, i8 3, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 6, i8 1, i8 0, i8 1, i32 16, i32 255, i32 255, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 7, i8 1, i8 0, i8 2, i32 255, i32 255, i32 2, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 -1, i8 1, i8 2, i8 3, i8 4, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 -1, i8 -1, i8 1, i8 2, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }, %struct.pcb_config { i8 8, i8 1, i8 0, i8 15, i32 16, i32 255, i32 14, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 2, i8 3, i8 4, i8 5, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }], [3 x %struct.CONFIG_INFO] [%struct.CONFIG_INFO { i8 0, %struct.INTERFACE_INFO { i8 0, i8 1, i8 -1, i8 2, i8 3, i8 -1, i8 -1, i8 -1 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }, %struct.CONFIG_INFO { i8 -1, %struct.INTERFACE_INFO { i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0 } }] }], [180 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 696, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad config in buspower!!!!\0Aconfig_info=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initialize_cx231xx\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr = internal global ptr @initialize_cx231xx._entry, section ".printk_index", align 4
@initialize_cx231xx._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad scenario!!!!!\0Aconfig_info=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.7 = internal global ptr @initialize_cx231xx._entry.5, section ".printk_index", align 4
@initialize_cx231xx._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 773, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SC(0x00) register = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.11 = internal global ptr @initialize_cx231xx._entry.8, section ".printk_index", align 4
@initialize_cx231xx._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 776, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scenario %d\0A\00", [19 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.14 = internal global ptr @initialize_cx231xx._entry.12, section ".printk_index", align 4
@initialize_cx231xx._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 779, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"type=%x\0A\00", [23 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.17 = internal global ptr @initialize_cx231xx._entry.15, section ".printk_index", align 4
@initialize_cx231xx._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 782, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode=%x\0A\00", [23 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.20 = internal global ptr @initialize_cx231xx._entry.18, section ".printk_index", align 4
@initialize_cx231xx._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 785, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"speed=%x\0A\00", [22 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.23 = internal global ptr @initialize_cx231xx._entry.21, section ".printk_index", align 4
@initialize_cx231xx._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 788, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ts1_source=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.26 = internal global ptr @initialize_cx231xx._entry.24, section ".printk_index", align 4
@initialize_cx231xx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 791, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ts2_source=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.29 = internal global ptr @initialize_cx231xx._entry.27, section ".printk_index", align 4
@initialize_cx231xx._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 794, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"analog_source=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@initialize_cx231xx._entry_ptr.32 = internal global ptr @initialize_cx231xx._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 68, i64 192, i64 196]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 6, i64 128, i64 130, i64 132, i64 134]
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"pcb_debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 13, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"cx231xx_Scenario\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 19, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 694, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 759, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 772, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 774, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 777, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 780, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 783, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 786, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 789, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [47 x i8] c"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 792, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_pcb_debug304, ptr @__UNIQUE_ID_pcb_debugtype303, ptr @__param_pcb_debug, ptr @initialize_cx231xx._entry, ptr @initialize_cx231xx._entry.12, ptr @initialize_cx231xx._entry.15, ptr @initialize_cx231xx._entry.18, ptr @initialize_cx231xx._entry.21, ptr @initialize_cx231xx._entry.24, ptr @initialize_cx231xx._entry.27, ptr @initialize_cx231xx._entry.30, ptr @initialize_cx231xx._entry.5, ptr @initialize_cx231xx._entry.8, ptr @initialize_cx231xx._entry_ptr, ptr @initialize_cx231xx._entry_ptr.11, ptr @initialize_cx231xx._entry_ptr.14, ptr @initialize_cx231xx._entry_ptr.17, ptr @initialize_cx231xx._entry_ptr.20, ptr @initialize_cx231xx._entry_ptr.23, ptr @initialize_cx231xx._entry_ptr.26, ptr @initialize_cx231xx._entry_ptr.29, ptr @initialize_cx231xx._entry_ptr.32, ptr @initialize_cx231xx._entry_ptr.7, ptr @pcb_debug, ptr @cx231xx_Scenario, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcb_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_Scenario to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_cx231xx._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @initialize_cx231xx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %call = call i32 @cx231xx_read_ctrl_reg(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 1
  %and3 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %and5 = and i32 %3, 196
  %trunc121 = trunc i32 %and5 to i8
  %5 = zext i8 %trunc121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc121, label %do.end [
    i8 68, label %sw.bb
    i8 -64, label %sw.bb6
    i8 -60, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 6, i32 2), align 2
  br label %if.end24

sw.bb6:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 7, i32 2), align 2
  br label %if.end24

sw.bb7:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 8, i32 2), align 2
  br label %if.end24

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %and5) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and10 = and i32 %3, 134
  %trunc = trunc i32 %and10 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %trunc, label %do.end20 [
    i8 4, label %sw.bb11
    i8 6, label %sw.bb12
    i8 -128, label %sw.bb13
    i8 -124, label %sw.bb14
    i8 -122, label %sw.bb15
    i8 -126, label %sw.bb16
  ]

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 0, i32 2), align 2
  br label %if.end24

sw.bb12:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 1, i32 2), align 2
  store i32 16, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 1, i32 5), align 4
  br label %if.end24

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 2, i32 2), align 2
  store i32 0, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 2, i32 6), align 4
  br label %if.end24

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 3, i32 2), align 2
  store i32 16, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 3, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 3, i32 6), align 4
  br label %if.end24

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 4, i32 2), align 2
  store i32 16, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 4, i32 4), align 4
  store i32 16, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 4, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 4, i32 6), align 4
  br label %if.end24

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %conv, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 5, i32 2), align 2
  store i32 0, ptr getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 5, i32 6), align 4
  br label %if.end24

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev21 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %and10) #8
  br label %cleanup

if.end24:                                         ; preds = %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb7, %sw.bb6, %sw.bb
  %p_pcb_info.0 = phi ptr [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 8), %sw.bb7 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 7), %sw.bb6 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 6), %sw.bb ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 5), %sw.bb16 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 4), %sw.bb15 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 3), %sw.bb14 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 2), %sw.bb13 ], [ getelementptr inbounds ([9 x %struct.pcb_config], ptr @cx231xx_Scenario, i32 0, i32 1), %sw.bb12 ], [ @cx231xx_Scenario, %sw.bb11 ]
  %_current_scenario_idx.0 = phi i8 [ 8, %sw.bb7 ], [ 7, %sw.bb6 ], [ 6, %sw.bb ], [ 5, %sw.bb16 ], [ 4, %sw.bb15 ], [ 3, %sw.bb14 ], [ 2, %sw.bb13 ], [ 1, %sw.bb12 ], [ 0, %sw.bb11 ]
  %current_scenario_idx = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 72
  %11 = ptrtoint ptr %current_scenario_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %_current_scenario_idx.0, ptr %current_scenario_idx, align 4
  %current_pcb_config = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71
  %12 = call ptr @memcpy(ptr %current_pcb_config, ptr %p_pcb_info.0, i32 76)
  %13 = load i32, ptr @pcb_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %do.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev30, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef %3) #8
  %16 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev30, align 8
  %18 = ptrtoint ptr %current_pcb_config to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %current_pcb_config, align 8
  %conv36 = zext i8 %19 to i32
  %add = add nuw nsw i32 %conv36, 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef %add) #8
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev30, align 8
  %type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 1
  %conv42 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.16, i32 noundef %conv42) #8
  %24 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev30, align 8
  %mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 3
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode, align 1
  %conv48 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %conv48) #8
  %28 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev30, align 8
  %speed = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 2
  %30 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %speed, align 2
  %conv54 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %conv54) #8
  %32 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev30, align 8
  %ts1_source60 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 4
  %34 = ptrtoint ptr %ts1_source60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ts1_source60, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.25, i32 noundef %35) #8
  %36 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev30, align 8
  %ts2_source66 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 5
  %38 = ptrtoint ptr %ts2_source66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ts2_source66, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.28, i32 noundef %39) #8
  %40 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev30, align 8
  %analog_source72 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 6
  %42 = ptrtoint ptr %analog_source72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %analog_source72, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.31, i32 noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end24.cleanup_crit_edge, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ -19, %do.end20 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end29 ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_pcb_debug, !1, !"__param_pcb_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_pcb_debugtype303, !1, !"__UNIQUE_ID_pcb_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pcb_debug304, !4, !"__UNIQUE_ID_pcb_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 15, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 694, i32 4}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @initialize_cx231xx._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @initialize_cx231xx._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 759, i32 4}
!15 = !{ptr @initialize_cx231xx._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @initialize_cx231xx._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 772, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @initialize_cx231xx._entry.8, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @initialize_cx231xx._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 774, i32 3}
!24 = !{ptr @initialize_cx231xx._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @initialize_cx231xx._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 777, i32 3}
!28 = !{ptr @initialize_cx231xx._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @initialize_cx231xx._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 780, i32 3}
!32 = !{ptr @initialize_cx231xx._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @initialize_cx231xx._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 783, i32 3}
!36 = !{ptr @initialize_cx231xx._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @initialize_cx231xx._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 786, i32 3}
!40 = !{ptr @initialize_cx231xx._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @initialize_cx231xx._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 789, i32 3}
!44 = !{ptr @initialize_cx231xx._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @initialize_cx231xx._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 792, i32 3}
!48 = !{ptr @initialize_cx231xx._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @initialize_cx231xx._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @pcb_debug, !51, !"pcb_debug", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 13, i32 21}
!52 = !{ptr @__param_str_pcb_debug, !1, !"__param_str_pcb_debug", i1 false, i1 false}
!53 = !{ptr @cx231xx_Scenario, !54, !"cx231xx_Scenario", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/cx231xx/cx231xx-pcb-cfg.c", i32 19, i32 26}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
