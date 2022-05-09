; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-firmware.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_halt_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: Preparing for firmware halt.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_halt_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cx18/cx18-firmware.c\00", [57 x i8] zeroinitializer }, align 32
@cx18_halt_firmware._entry_ptr = internal global ptr @cx18_halt_firmware._entry, section ".printk_index", align 4
@cx18_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: %s: couldn't stop CPU to load firmware\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_firmware_init\00", [45 x i8] zeroinitializer }, align 32
@cx18_firmware_init._entry_ptr = internal global ptr @cx18_firmware_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx23418-cpu.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx23418-apu.fw\00", [45 x i8] zeroinitializer }, align 32
@cx18_firmware_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Could not start the CPU\0A\00", [33 x i8] zeroinitializer }, align 32
@cx18_firmware_init._entry_ptr.9 = internal global ptr @cx18_firmware_init._entry.7, section ".printk_index", align 4
@__UNIQUE_ID_firmware385 = internal constant [33 x i8] c"cx18.firmware=v4l-cx23418-cpu.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware386 = internal constant [33 x i8] c"cx18.firmware=v4l-cx23418-apu.fw\00", section ".modinfo", align 1
@load_cpu_fw_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Unable to open firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"load_cpu_fw_direct\00", [45 x i8] zeroinitializer }, align 32
@load_cpu_fw_direct._entry_ptr = internal global ptr @load_cpu_fw_direct._entry, section ".printk_index", align 4
@load_cpu_fw_direct._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: Did you put the firmware in the hotplug firmware directory?\0A\00", [61 x i8] zeroinitializer }, align 32
@load_cpu_fw_direct._entry_ptr.14 = internal global ptr @load_cpu_fw_direct._entry.12, section ".printk_index", align 4
@load_cpu_fw_direct._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Mismatch at offset %x\0A\00", [35 x i8] zeroinitializer }, align 32
@load_cpu_fw_direct._entry_ptr.17 = internal global ptr @load_cpu_fw_direct._entry.15, section ".printk_index", align 4
@load_cpu_fw_direct._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: loaded %s firmware (%zu bytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@load_cpu_fw_direct._entry_ptr.20 = internal global ptr @load_cpu_fw_direct._entry.18, section ".printk_index", align 4
@load_apu_fw_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: unable to open firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"load_apu_fw_direct\00", [45 x i8] zeroinitializer }, align 32
@load_apu_fw_direct._entry_ptr = internal global ptr @load_apu_fw_direct._entry, section ".printk_index", align 4
@load_apu_fw_direct._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: did you put the firmware in the hotplug firmware directory?\0A\00", [61 x i8] zeroinitializer }, align 32
@load_apu_fw_direct._entry_ptr.25 = internal global ptr @load_apu_fw_direct._entry.23, section ".printk_index", align 4
@load_apu_fw_direct._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  info: load segment %x-%x\0A\00", [63 x i8] zeroinitializer }, align 32
@load_apu_fw_direct._entry_ptr.28 = internal global ptr @load_apu_fw_direct._entry.26, section ".printk_index", align 4
@load_apu_fw_direct._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.22, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_apu_fw_direct._entry_ptr.30 = internal global ptr @load_apu_fw_direct._entry.29, section ".printk_index", align 4
@load_apu_fw_direct._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: loaded %s firmware V%08x (%zu bytes)\0A\00", [52 x i8] zeroinitializer }, align 32
@load_apu_fw_direct._entry_ptr.33 = internal global ptr @load_apu_fw_direct._entry.31, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 201, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 385, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 392, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 400, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 419, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 96, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 97, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 109, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 119, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 140, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 141, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 166, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 180, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [42 x i8] c"../drivers/media/pci/cx18/cx18-firmware.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 191, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_firmware385, ptr @__UNIQUE_ID_firmware386, ptr @cx18_firmware_init._entry, ptr @cx18_firmware_init._entry.7, ptr @cx18_firmware_init._entry_ptr, ptr @cx18_firmware_init._entry_ptr.9, ptr @cx18_halt_firmware._entry, ptr @cx18_halt_firmware._entry_ptr, ptr @load_apu_fw_direct._entry, ptr @load_apu_fw_direct._entry.23, ptr @load_apu_fw_direct._entry.26, ptr @load_apu_fw_direct._entry.29, ptr @load_apu_fw_direct._entry.31, ptr @load_apu_fw_direct._entry_ptr, ptr @load_apu_fw_direct._entry_ptr.25, ptr @load_apu_fw_direct._entry_ptr.28, ptr @load_apu_fw_direct._entry_ptr.30, ptr @load_apu_fw_direct._entry_ptr.33, ptr @load_cpu_fw_direct._entry, ptr @load_cpu_fw_direct._entry.12, ptr @load_cpu_fw_direct._entry.15, ptr @load_cpu_fw_direct._entry.18, ptr @load_cpu_fw_direct._entry_ptr, ptr @load_cpu_fw_direct._entry_ptr.14, ptr @load_cpu_fw_direct._entry_ptr.17, ptr @load_cpu_fw_direct._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.32], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_halt_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_firmware_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_cpu_fw_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_cpu_fw_direct._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_cpu_fw_direct._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_cpu_fw_direct._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_apu_fw_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_apu_fw_direct._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_apu_fw_direct._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_apu_fw_direct._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_apu_fw_direct._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_halt_firmware(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %0 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %1 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 13041680
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %do.end2
  %i.01.i.i = phi i32 [ 0, %do.end2 ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251662080) #6, !srcloc !70
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.i.i = icmp eq i32 %3, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %4 = and i32 %3, 251662080
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %4)
  %cmp4.i.i = icmp ne i32 %4, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %6, i32 13074720
  br label %for.body.i.i9

for.body.i.i9:                                    ; preds = %for.body.backedge.i.i17, %cx18_write_reg_expect.exit
  %i.01.i.i7 = phi i32 [ 0, %cx18_write_reg_expect.exit ], [ %i.01.be.i.i16, %for.body.backedge.i.i17 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 33554944) #6, !srcloc !70
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.i.i8 = icmp eq i32 %7, -1
  br i1 %cmp1.i.i8, label %for.inc.i.i15, label %if.end.i.i13

if.end.i.i13:                                     ; preds = %for.body.i.i9
  %8 = and i32 %7, 33554944
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %8)
  %cmp4.i.i10 = icmp ne i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i7)
  %cmp.i.i11 = icmp ult i32 %i.01.i.i7, 9
  %or.cond.i.i12 = select i1 %cmp4.i.i10, i1 %cmp.i.i11, i1 false
  br i1 %or.cond.i.i12, label %if.end.i.i13.for.body.backedge.i.i17_crit_edge, label %if.end.i.i13.cx18_write_reg_expect.exit18_crit_edge

if.end.i.i13.cx18_write_reg_expect.exit18_crit_edge: ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit18

if.end.i.i13.for.body.backedge.i.i17_crit_edge:   ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i17

for.inc.i.i15:                                    ; preds = %for.body.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i7)
  %cmp.old.i.i14 = icmp ult i32 %i.01.i.i7, 9
  br i1 %cmp.old.i.i14, label %for.inc.i.i15.for.body.backedge.i.i17_crit_edge, label %for.inc.i.i15.cx18_write_reg_expect.exit18_crit_edge

for.inc.i.i15.cx18_write_reg_expect.exit18_crit_edge: ; preds = %for.inc.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit18

for.inc.i.i15.for.body.backedge.i.i17_crit_edge:  ; preds = %for.inc.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i17

for.body.backedge.i.i17:                          ; preds = %for.inc.i.i15.for.body.backedge.i.i17_crit_edge, %if.end.i.i13.for.body.backedge.i.i17_crit_edge
  %i.01.be.i.i16 = add nuw nsw i32 %i.01.i.i7, 1
  br label %for.body.i.i9

cx18_write_reg_expect.exit18:                     ; preds = %for.inc.i.i15.cx18_write_reg_expect.exit18_crit_edge, %if.end.i.i13.cx18_write_reg_expect.exit18_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_init_power(ptr noundef readonly %cx, i32 noundef %lowpwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 8, i32 noundef 13074568)
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13074720
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %entry
  %i.01.i.i = phi i32 [ 0, %entry ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #6, !srcloc !70
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1.i.i = icmp eq i32 %2, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %3 = and i32 %2, 33554944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.i.i = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lowpwr)
  %tobool.not = icmp eq i32 %lowpwr, 0
  %cond = select i1 %tobool.not, i32 17, i32 13
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %cond, i32 noundef 13074432)
  %cond2 = select i1 %tobool.not, i32 3728343, i32 32489271
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %cond2, i32 noundef 13074436)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 2, i32 noundef 13074440)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 1, i32 noundef 13074444)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 4, i32 noundef 13074448)
  %cond4 = select i1 %tobool.not, i32 12, i32 13
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %cond4, i32 noundef 13074452)
  %cond6 = select i1 %tobool.not, i32 19174015, i32 3195716
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %cond6, i32 noundef 13074456)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 3, i32 noundef 13074460)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 15, i32 noundef 13074496)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 2876158, i32 noundef 13074500)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 8, i32 noundef 13074504)
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %5, i32 13045760
  br i1 %tobool.not, label %cx18_write_reg_expect.exit.for.body.i.i64_crit_edge, label %cx18_write_reg_expect.exit.for.body.i.i36_crit_edge

cx18_write_reg_expect.exit.for.body.i.i36_crit_edge: ; preds = %cx18_write_reg_expect.exit
  br label %for.body.i.i36

cx18_write_reg_expect.exit.for.body.i.i64_crit_edge: ; preds = %cx18_write_reg_expect.exit
  br label %for.body.i.i64

for.body.i.i36:                                   ; preds = %for.body.backedge.i.i44, %cx18_write_reg_expect.exit.for.body.i.i36_crit_edge
  %i.01.i.i34 = phi i32 [ %i.01.be.i.i43, %for.body.backedge.i.i44 ], [ 0, %cx18_write_reg_expect.exit.for.body.i.i36_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 536936447) #6, !srcloc !70
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp1.i.i35 = icmp eq i32 %6, -1
  br i1 %cmp1.i.i35, label %for.inc.i.i42, label %if.end.i.i40

if.end.i.i40:                                     ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %6)
  %cmp4.i.i37 = icmp ne i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i34)
  %cmp.i.i38 = icmp ult i32 %i.01.i.i34, 9
  %or.cond.i.i39 = select i1 %cmp4.i.i37, i1 %cmp.i.i38, i1 false
  br i1 %or.cond.i.i39, label %if.end.i.i40.for.body.backedge.i.i44_crit_edge, label %if.end.i.i40.cx18_write_reg_expect.exit45_crit_edge

if.end.i.i40.cx18_write_reg_expect.exit45_crit_edge: ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit45

if.end.i.i40.for.body.backedge.i.i44_crit_edge:   ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i44

for.inc.i.i42:                                    ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i34)
  %cmp.old.i.i41 = icmp ult i32 %i.01.i.i34, 9
  br i1 %cmp.old.i.i41, label %for.inc.i.i42.for.body.backedge.i.i44_crit_edge, label %for.inc.i.i42.cx18_write_reg_expect.exit45_crit_edge

for.inc.i.i42.cx18_write_reg_expect.exit45_crit_edge: ; preds = %for.inc.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit45

for.inc.i.i42.for.body.backedge.i.i44_crit_edge:  ; preds = %for.inc.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i44

for.body.backedge.i.i44:                          ; preds = %for.inc.i.i42.for.body.backedge.i.i44_crit_edge, %if.end.i.i40.for.body.backedge.i.i44_crit_edge
  %i.01.be.i.i43 = add nuw nsw i32 %i.01.i.i34, 1
  br label %for.body.i.i36

cx18_write_reg_expect.exit45:                     ; preds = %for.inc.i.i42.cx18_write_reg_expect.exit45_crit_edge, %if.end.i.i40.cx18_write_reg_expect.exit45_crit_edge
  %7 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %8, i32 13045764
  br label %for.body.i.i50

for.body.i.i50:                                   ; preds = %for.body.backedge.i.i58, %cx18_write_reg_expect.exit45
  %i.01.i.i48 = phi i32 [ 0, %cx18_write_reg_expect.exit45 ], [ %i.01.be.i.i57, %for.body.backedge.i.i58 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 67174399) #6, !srcloc !70
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.i.i49 = icmp eq i32 %9, -1
  br i1 %cmp1.i.i49, label %for.inc.i.i56, label %if.end.i.i54

if.end.i.i54:                                     ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %9)
  %cmp4.i.i51 = icmp ne i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i48)
  %cmp.i.i52 = icmp ult i32 %i.01.i.i48, 9
  %or.cond.i.i53 = select i1 %cmp4.i.i51, i1 %cmp.i.i52, i1 false
  br i1 %or.cond.i.i53, label %if.end.i.i54.for.body.backedge.i.i58_crit_edge, label %if.end.i.i54.if.end_crit_edge

if.end.i.i54.if.end_crit_edge:                    ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i54.for.body.backedge.i.i58_crit_edge:   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i58

for.inc.i.i56:                                    ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i48)
  %cmp.old.i.i55 = icmp ult i32 %i.01.i.i48, 9
  br i1 %cmp.old.i.i55, label %for.inc.i.i56.for.body.backedge.i.i58_crit_edge, label %for.inc.i.i56.if.end_crit_edge

for.inc.i.i56.if.end_crit_edge:                   ; preds = %for.inc.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc.i.i56.for.body.backedge.i.i58_crit_edge:  ; preds = %for.inc.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i58

for.body.backedge.i.i58:                          ; preds = %for.inc.i.i56.for.body.backedge.i.i58_crit_edge, %if.end.i.i54.for.body.backedge.i.i58_crit_edge
  %i.01.be.i.i57 = add nuw nsw i32 %i.01.i.i48, 1
  br label %for.body.i.i50

for.body.i.i64:                                   ; preds = %for.body.backedge.i.i72, %cx18_write_reg_expect.exit.for.body.i.i64_crit_edge
  %i.01.i.i62 = phi i32 [ %i.01.be.i.i71, %for.body.backedge.i.i72 ], [ 0, %cx18_write_reg_expect.exit.for.body.i.i64_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 67110400) #6, !srcloc !70
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1.i.i63 = icmp eq i32 %10, -1
  br i1 %cmp1.i.i63, label %for.inc.i.i70, label %if.end.i.i68

if.end.i.i68:                                     ; preds = %for.body.i.i64
  %11 = and i32 %10, 100664832
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %11)
  %cmp4.i.i65 = icmp ne i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i62)
  %cmp.i.i66 = icmp ult i32 %i.01.i.i62, 9
  %or.cond.i.i67 = select i1 %cmp4.i.i65, i1 %cmp.i.i66, i1 false
  br i1 %or.cond.i.i67, label %if.end.i.i68.for.body.backedge.i.i72_crit_edge, label %if.end.i.i68.cx18_write_reg_expect.exit73_crit_edge

if.end.i.i68.cx18_write_reg_expect.exit73_crit_edge: ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit73

if.end.i.i68.for.body.backedge.i.i72_crit_edge:   ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i72

for.inc.i.i70:                                    ; preds = %for.body.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i62)
  %cmp.old.i.i69 = icmp ult i32 %i.01.i.i62, 9
  br i1 %cmp.old.i.i69, label %for.inc.i.i70.for.body.backedge.i.i72_crit_edge, label %for.inc.i.i70.cx18_write_reg_expect.exit73_crit_edge

for.inc.i.i70.cx18_write_reg_expect.exit73_crit_edge: ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit73

for.inc.i.i70.for.body.backedge.i.i72_crit_edge:  ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i72

for.body.backedge.i.i72:                          ; preds = %for.inc.i.i70.for.body.backedge.i.i72_crit_edge, %if.end.i.i68.for.body.backedge.i.i72_crit_edge
  %i.01.be.i.i71 = add nuw nsw i32 %i.01.i.i62, 1
  br label %for.body.i.i64

cx18_write_reg_expect.exit73:                     ; preds = %for.inc.i.i70.cx18_write_reg_expect.exit73_crit_edge, %if.end.i.i68.cx18_write_reg_expect.exit73_crit_edge
  %12 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %13, i32 13045764
  br label %for.body.i.i78

for.body.i.i78:                                   ; preds = %for.body.backedge.i.i86, %cx18_write_reg_expect.exit73
  %i.01.i.i76 = phi i32 [ 0, %cx18_write_reg_expect.exit73 ], [ %i.01.be.i.i85, %for.body.backedge.i.i86 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 100664832) #6, !srcloc !70
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp1.i.i77 = icmp eq i32 %14, -1
  br i1 %cmp1.i.i77, label %for.inc.i.i84, label %if.end.i.i82

if.end.i.i82:                                     ; preds = %for.body.i.i78
  %15 = and i32 %14, 100664832
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %15)
  %cmp4.i.i79 = icmp ne i32 %15, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i76)
  %cmp.i.i80 = icmp ult i32 %i.01.i.i76, 9
  %or.cond.i.i81 = select i1 %cmp4.i.i79, i1 %cmp.i.i80, i1 false
  br i1 %or.cond.i.i81, label %if.end.i.i82.for.body.backedge.i.i86_crit_edge, label %if.end.i.i82.if.end_crit_edge

if.end.i.i82.if.end_crit_edge:                    ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i82.for.body.backedge.i.i86_crit_edge:   ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i86

for.inc.i.i84:                                    ; preds = %for.body.i.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i76)
  %cmp.old.i.i83 = icmp ult i32 %i.01.i.i76, 9
  br i1 %cmp.old.i.i83, label %for.inc.i.i84.for.body.backedge.i.i86_crit_edge, label %for.inc.i.i84.if.end_crit_edge

for.inc.i.i84.if.end_crit_edge:                   ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc.i.i84.for.body.backedge.i.i86_crit_edge:  ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i86

for.body.backedge.i.i86:                          ; preds = %for.inc.i.i84.for.body.backedge.i.i86_crit_edge, %if.end.i.i82.for.body.backedge.i.i86_crit_edge
  %i.01.be.i.i85 = add nuw nsw i32 %i.01.i.i76, 1
  br label %for.body.i.i78

if.end:                                           ; preds = %for.inc.i.i84.if.end_crit_edge, %if.end.i.i82.if.end_crit_edge, %for.inc.i.i56.if.end_crit_edge, %if.end.i.i54.if.end_crit_edge
  %16 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i89 = getelementptr i8, ptr %17, i32 13045768
  br label %for.body.i.i92

for.body.i.i92:                                   ; preds = %for.body.backedge.i.i100, %if.end
  %i.01.i.i90 = phi i32 [ 0, %if.end ], [ %i.01.be.i.i99, %for.body.backedge.i.i100 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 33619967) #6, !srcloc !70
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp1.i.i91 = icmp eq i32 %18, -1
  br i1 %cmp1.i.i91, label %for.inc.i.i98, label %if.end.i.i96

if.end.i.i96:                                     ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %18)
  %cmp4.i.i93 = icmp ne i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i90)
  %cmp.i.i94 = icmp ult i32 %i.01.i.i90, 9
  %or.cond.i.i95 = select i1 %cmp4.i.i93, i1 %cmp.i.i94, i1 false
  br i1 %or.cond.i.i95, label %if.end.i.i96.for.body.backedge.i.i100_crit_edge, label %if.end.i.i96.cx18_write_reg_expect.exit101_crit_edge

if.end.i.i96.cx18_write_reg_expect.exit101_crit_edge: ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit101

if.end.i.i96.for.body.backedge.i.i100_crit_edge:  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i100

for.inc.i.i98:                                    ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i90)
  %cmp.old.i.i97 = icmp ult i32 %i.01.i.i90, 9
  br i1 %cmp.old.i.i97, label %for.inc.i.i98.for.body.backedge.i.i100_crit_edge, label %for.inc.i.i98.cx18_write_reg_expect.exit101_crit_edge

for.inc.i.i98.cx18_write_reg_expect.exit101_crit_edge: ; preds = %for.inc.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit101

for.inc.i.i98.for.body.backedge.i.i100_crit_edge: ; preds = %for.inc.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i100

for.body.backedge.i.i100:                         ; preds = %for.inc.i.i98.for.body.backedge.i.i100_crit_edge, %if.end.i.i96.for.body.backedge.i.i100_crit_edge
  %i.01.be.i.i99 = add nuw nsw i32 %i.01.i.i90, 1
  br label %for.body.i.i92

cx18_write_reg_expect.exit101:                    ; preds = %for.inc.i.i98.cx18_write_reg_expect.exit101_crit_edge, %if.end.i.i96.cx18_write_reg_expect.exit101_crit_edge
  %19 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i103 = getelementptr i8, ptr %20, i32 13045772
  br label %for.body.i.i106

for.body.i.i106:                                  ; preds = %for.body.backedge.i.i114, %cx18_write_reg_expect.exit101
  %i.01.i.i104 = phi i32 [ 0, %cx18_write_reg_expect.exit101 ], [ %i.01.be.i.i113, %for.body.backedge.i.i114 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 67239935) #6, !srcloc !70
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp1.i.i105 = icmp eq i32 %21, -1
  br i1 %cmp1.i.i105, label %for.inc.i.i112, label %if.end.i.i110

if.end.i.i110:                                    ; preds = %for.body.i.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 67174400, i32 %21)
  %cmp4.i.i107 = icmp ne i32 %21, 67174400
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i104)
  %cmp.i.i108 = icmp ult i32 %i.01.i.i104, 9
  %or.cond.i.i109 = select i1 %cmp4.i.i107, i1 %cmp.i.i108, i1 false
  br i1 %or.cond.i.i109, label %if.end.i.i110.for.body.backedge.i.i114_crit_edge, label %if.end.i.i110.cx18_write_reg_expect.exit115_crit_edge

if.end.i.i110.cx18_write_reg_expect.exit115_crit_edge: ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit115

if.end.i.i110.for.body.backedge.i.i114_crit_edge: ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i114

for.inc.i.i112:                                   ; preds = %for.body.i.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i104)
  %cmp.old.i.i111 = icmp ult i32 %i.01.i.i104, 9
  br i1 %cmp.old.i.i111, label %for.inc.i.i112.for.body.backedge.i.i114_crit_edge, label %for.inc.i.i112.cx18_write_reg_expect.exit115_crit_edge

for.inc.i.i112.cx18_write_reg_expect.exit115_crit_edge: ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit115

for.inc.i.i112.for.body.backedge.i.i114_crit_edge: ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i114

for.body.backedge.i.i114:                         ; preds = %for.inc.i.i112.for.body.backedge.i.i114_crit_edge, %if.end.i.i110.for.body.backedge.i.i114_crit_edge
  %i.01.be.i.i113 = add nuw nsw i32 %i.01.i.i104, 1
  br label %for.body.i.i106

cx18_write_reg_expect.exit115:                    ; preds = %for.inc.i.i112.cx18_write_reg_expect.exit115_crit_edge, %if.end.i.i110.cx18_write_reg_expect.exit115_crit_edge
  %22 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %23, i32 13045792
  br label %for.body.i.i120

for.body.i.i120:                                  ; preds = %for.body.backedge.i.i128, %cx18_write_reg_expect.exit115
  %i.01.i.i118 = phi i32 [ 0, %cx18_write_reg_expect.exit115 ], [ %i.01.be.i.i127, %for.body.backedge.i.i128 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 647036927) #6, !srcloc !70
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp1.i.i119 = icmp eq i32 %24, -1
  br i1 %cmp1.i.i119, label %for.inc.i.i126, label %if.end.i.i124

if.end.i.i124:                                    ; preds = %for.body.i.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 646971392, i32 %24)
  %cmp4.i.i121 = icmp ne i32 %24, 646971392
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i118)
  %cmp.i.i122 = icmp ult i32 %i.01.i.i118, 9
  %or.cond.i.i123 = select i1 %cmp4.i.i121, i1 %cmp.i.i122, i1 false
  br i1 %or.cond.i.i123, label %if.end.i.i124.for.body.backedge.i.i128_crit_edge, label %if.end.i.i124.cx18_write_reg_expect.exit129_crit_edge

if.end.i.i124.cx18_write_reg_expect.exit129_crit_edge: ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit129

if.end.i.i124.for.body.backedge.i.i128_crit_edge: ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i128

for.inc.i.i126:                                   ; preds = %for.body.i.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i118)
  %cmp.old.i.i125 = icmp ult i32 %i.01.i.i118, 9
  br i1 %cmp.old.i.i125, label %for.inc.i.i126.for.body.backedge.i.i128_crit_edge, label %for.inc.i.i126.cx18_write_reg_expect.exit129_crit_edge

for.inc.i.i126.cx18_write_reg_expect.exit129_crit_edge: ; preds = %for.inc.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit129

for.inc.i.i126.for.body.backedge.i.i128_crit_edge: ; preds = %for.inc.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i128

for.body.backedge.i.i128:                         ; preds = %for.inc.i.i126.for.body.backedge.i.i128_crit_edge, %if.end.i.i124.for.body.backedge.i.i128_crit_edge
  %i.01.be.i.i127 = add nuw nsw i32 %i.01.i.i118, 1
  br label %for.body.i.i120

cx18_write_reg_expect.exit129:                    ; preds = %for.inc.i.i126.cx18_write_reg_expect.exit129_crit_edge, %if.end.i.i124.cx18_write_reg_expect.exit129_crit_edge
  %25 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i131 = getelementptr i8, ptr %26, i32 13045796
  br label %for.body.i.i134

for.body.i.i134:                                  ; preds = %for.body.backedge.i.i142, %cx18_write_reg_expect.exit129
  %i.01.i.i132 = phi i32 [ 0, %cx18_write_reg_expect.exit129 ], [ %i.01.be.i.i141, %for.body.backedge.i.i142 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 87162879) #6, !srcloc !70
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp1.i.i133 = icmp eq i32 %27, -1
  br i1 %cmp1.i.i133, label %for.inc.i.i140, label %if.end.i.i138

if.end.i.i138:                                    ; preds = %for.body.i.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 87097344, i32 %27)
  %cmp4.i.i135 = icmp ne i32 %27, 87097344
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i132)
  %cmp.i.i136 = icmp ult i32 %i.01.i.i132, 9
  %or.cond.i.i137 = select i1 %cmp4.i.i135, i1 %cmp.i.i136, i1 false
  br i1 %or.cond.i.i137, label %if.end.i.i138.for.body.backedge.i.i142_crit_edge, label %if.end.i.i138.cx18_write_reg_expect.exit143_crit_edge

if.end.i.i138.cx18_write_reg_expect.exit143_crit_edge: ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit143

if.end.i.i138.for.body.backedge.i.i142_crit_edge: ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i142

for.inc.i.i140:                                   ; preds = %for.body.i.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i132)
  %cmp.old.i.i139 = icmp ult i32 %i.01.i.i132, 9
  br i1 %cmp.old.i.i139, label %for.inc.i.i140.for.body.backedge.i.i142_crit_edge, label %for.inc.i.i140.cx18_write_reg_expect.exit143_crit_edge

for.inc.i.i140.cx18_write_reg_expect.exit143_crit_edge: ; preds = %for.inc.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit143

for.inc.i.i140.for.body.backedge.i.i142_crit_edge: ; preds = %for.inc.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i142

for.body.backedge.i.i142:                         ; preds = %for.inc.i.i140.for.body.backedge.i.i142_crit_edge, %if.end.i.i138.for.body.backedge.i.i142_crit_edge
  %i.01.be.i.i141 = add nuw nsw i32 %i.01.i.i132, 1
  br label %for.body.i.i134

cx18_write_reg_expect.exit143:                    ; preds = %for.inc.i.i140.cx18_write_reg_expect.exit143_crit_edge, %if.end.i.i138.cx18_write_reg_expect.exit143_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_write_reg(ptr nocapture noundef readonly %cx, i32 noundef %val, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %reg_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.i = icmp eq i32 %4, %val
  br i1 %cmp1.i, label %entry.cx18_writel.exit_crit_edge, label %for.cond.i

entry.cx18_writel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.1.i = icmp eq i32 %6, %val
  br i1 %cmp1.1.i, label %for.cond.i.cx18_writel.exit_crit_edge, label %for.cond.1.i

for.cond.i.cx18_writel.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.2.i = icmp eq i32 %8, %val
  br i1 %cmp1.2.i, label %for.cond.1.i.cx18_writel.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.3.i = icmp eq i32 %10, %val
  br i1 %cmp1.3.i, label %for.cond.2.i.cx18_writel.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.4.i = icmp eq i32 %12, %val
  br i1 %cmp1.4.i, label %for.cond.3.i.cx18_writel.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.5.i = icmp eq i32 %14, %val
  br i1 %cmp1.5.i, label %for.cond.4.i.cx18_writel.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.6.i = icmp eq i32 %16, %val
  br i1 %cmp1.6.i, label %for.cond.5.i.cx18_writel.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.7.i = icmp eq i32 %18, %val
  br i1 %cmp1.7.i, label %for.cond.6.i.cx18_writel.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp1.8.i = icmp eq i32 %20, %val
  br i1 %cmp1.8.i, label %for.cond.7.i.cx18_writel.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_writel.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !70
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  br label %cx18_writel.exit

cx18_writel.exit:                                 ; preds = %for.cond.8.i, %for.cond.7.i.cx18_writel.exit_crit_edge, %for.cond.6.i.cx18_writel.exit_crit_edge, %for.cond.5.i.cx18_writel.exit_crit_edge, %for.cond.4.i.cx18_writel.exit_crit_edge, %for.cond.3.i.cx18_writel.exit_crit_edge, %for.cond.2.i.cx18_writel.exit_crit_edge, %for.cond.1.i.cx18_writel.exit_crit_edge, %for.cond.i.cx18_writel.exit_crit_edge, %entry.cx18_writel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_init_memory(ptr noundef readonly %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 13041684
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %entry
  %i.01.i.i = phi i32 [ 0, %entry ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #6, !srcloc !70
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1.i.i = icmp eq i32 %2, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %3 = and i32 %2, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.i.i = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  %call1 = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %ddr = getelementptr inbounds %struct.cx18_card, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ddr, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %7, i32 noundef 13107204)
  %call2 = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 8
  %refresh = getelementptr inbounds %struct.cx18_card, ptr %9, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refresh, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %11, i32 noundef 13107208)
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 8
  %timing1 = getelementptr inbounds %struct.cx18_card, ptr %13, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timing1, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %15, i32 noundef 13107212)
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 8
  %timing2 = getelementptr inbounds %struct.cx18_card, ptr %17, i32 0, i32 16, i32 3
  %18 = ptrtoint ptr %timing2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing2, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %19, i32 noundef 13107216)
  %call9 = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 8
  %tune_lane = getelementptr inbounds %struct.cx18_card, ptr %21, i32 0, i32 16, i32 4
  %22 = ptrtoint ptr %tune_lane to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tune_lane, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %23, i32 noundef 13107272)
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 8
  %initial_emrs = getelementptr inbounds %struct.cx18_card, ptr %25, i32 0, i32 16, i32 5
  %26 = ptrtoint ptr %initial_emrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %initial_emrs, align 4
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %27, i32 noundef 13107284)
  %call14 = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %28 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %29, i32 13041684
  br label %for.body.i.i47

for.body.i.i47:                                   ; preds = %for.body.backedge.i.i55, %cx18_write_reg_expect.exit
  %i.01.i.i45 = phi i32 [ 0, %cx18_write_reg_expect.exit ], [ %i.01.be.i.i54, %for.body.backedge.i.i55 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 512) #6, !srcloc !70
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp1.i.i46 = icmp eq i32 %30, -1
  br i1 %cmp1.i.i46, label %for.inc.i.i53, label %if.end.i.i51

if.end.i.i51:                                     ; preds = %for.body.i.i47
  %31 = and i32 %30, 33554944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i.i48 = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i45)
  %cmp.i.i49 = icmp ult i32 %i.01.i.i45, 9
  %or.cond.i.i50 = select i1 %cmp4.i.i48, i1 %cmp.i.i49, i1 false
  br i1 %or.cond.i.i50, label %if.end.i.i51.for.body.backedge.i.i55_crit_edge, label %if.end.i.i51.cx18_write_reg_expect.exit56_crit_edge

if.end.i.i51.cx18_write_reg_expect.exit56_crit_edge: ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit56

if.end.i.i51.for.body.backedge.i.i55_crit_edge:   ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i55

for.inc.i.i53:                                    ; preds = %for.body.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i45)
  %cmp.old.i.i52 = icmp ult i32 %i.01.i.i45, 9
  br i1 %cmp.old.i.i52, label %for.inc.i.i53.for.body.backedge.i.i55_crit_edge, label %for.inc.i.i53.cx18_write_reg_expect.exit56_crit_edge

for.inc.i.i53.cx18_write_reg_expect.exit56_crit_edge: ; preds = %for.inc.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit56

for.inc.i.i53.for.body.backedge.i.i55_crit_edge:  ; preds = %for.inc.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i55

for.body.backedge.i.i55:                          ; preds = %for.inc.i.i53.for.body.backedge.i.i55_crit_edge, %if.end.i.i51.for.body.backedge.i.i55_crit_edge
  %i.01.be.i.i54 = add nuw nsw i32 %i.01.i.i45, 1
  br label %for.body.i.i47

cx18_write_reg_expect.exit56:                     ; preds = %for.inc.i.i53.cx18_write_reg_expect.exit56_crit_edge, %if.end.i.i51.cx18_write_reg_expect.exit56_crit_edge
  %call15 = tail call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 16, i32 noundef 13107228)
  %32 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %33, i32 13049892
  br label %for.body.i.i61

for.body.i.i61:                                   ; preds = %for.body.backedge.i.i69, %cx18_write_reg_expect.exit56
  %i.01.i.i59 = phi i32 [ 0, %cx18_write_reg_expect.exit56 ], [ %i.01.be.i.i68, %for.body.backedge.i.i69 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 16777472) #6, !srcloc !70
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp1.i.i60 = icmp eq i32 %34, -1
  br i1 %cmp1.i.i60, label %for.inc.i.i67, label %if.end.i.i65

if.end.i.i65:                                     ; preds = %for.body.i.i61
  %35 = and i32 %34, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %cmp4.i.i62 = icmp ne i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i59)
  %cmp.i.i63 = icmp ult i32 %i.01.i.i59, 9
  %or.cond.i.i64 = select i1 %cmp4.i.i62, i1 %cmp.i.i63, i1 false
  br i1 %or.cond.i.i64, label %if.end.i.i65.for.body.backedge.i.i69_crit_edge, label %if.end.i.i65.cx18_write_reg_expect.exit70_crit_edge

if.end.i.i65.cx18_write_reg_expect.exit70_crit_edge: ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit70

if.end.i.i65.for.body.backedge.i.i69_crit_edge:   ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i69

for.inc.i.i67:                                    ; preds = %for.body.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i59)
  %cmp.old.i.i66 = icmp ult i32 %i.01.i.i59, 9
  br i1 %cmp.old.i.i66, label %for.inc.i.i67.for.body.backedge.i.i69_crit_edge, label %for.inc.i.i67.cx18_write_reg_expect.exit70_crit_edge

for.inc.i.i67.cx18_write_reg_expect.exit70_crit_edge: ; preds = %for.inc.i.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit70

for.inc.i.i67.for.body.backedge.i.i69_crit_edge:  ; preds = %for.inc.i.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i69

for.body.backedge.i.i69:                          ; preds = %for.inc.i.i67.for.body.backedge.i.i69_crit_edge, %if.end.i.i65.for.body.backedge.i.i69_crit_edge
  %i.01.be.i.i68 = add nuw nsw i32 %i.01.i.i59, 1
  br label %for.body.i.i61

cx18_write_reg_expect.exit70:                     ; preds = %for.inc.i.i67.cx18_write_reg_expect.exit70_crit_edge, %if.end.i.i65.cx18_write_reg_expect.exit70_crit_edge
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 72, i32 noundef 13107356)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 917504, i32 noundef 13108476)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173000)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173028)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173012)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173016)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173020)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173032)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173040)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173044)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173036)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 257, i32 noundef 13173048)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_firmware_init(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  %fw.i67 = alloca ptr, align 4
  %fw.i = alloca ptr, align 4
  %api_args = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %api_args) #6
  %0 = call ptr @memset(ptr %api_args, i32 255, i32 24)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 5, i32 noundef 13631564)
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %1 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 13041680
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %entry
  %i.01.i.i = phi i32 [ 0, %entry ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251662080) #6, !srcloc !70
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.i.i = icmp eq i32 %3, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %4 = and i32 %3, 251662080
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %4)
  %cmp4.i.i = icmp ne i32 %4, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  %call = tail call i32 @cx18_msleep_timeout(i32 noundef 1, i32 noundef 0) #6
  %5 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %6, i32 13041680
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %cx18_write_reg_expect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %cx18_write_reg_expect.exit
  tail call void @cx18_sw1_irq_enable(ptr noundef %cx, i32 noundef 196608) #6
  tail call void @cx18_sw2_irq_enable(ptr noundef %cx, i32 noundef 136) #6
  %enc_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 39
  %9 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_mem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fw.i, align 4
  %pci_dev.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.5, ptr noundef %dev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, ptr noundef nonnull @.str.5) #9
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i) #9
  br label %load_cpu_fw_direct.exit.thread

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.not.i = icmp eq i32 %17, 0
  br i1 %cmp15.not.i, label %if.end.i.for.end32.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32.i

for.body.preheader.i:                             ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %if.end27.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %dst.1.lcssa.i = phi ptr [ %dst.016.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %incdec.ptr.i, %if.end27.i.for.cond.loopexit.i_crit_edge ]
  %src.1.lcssa.i = phi ptr [ %src.017.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %incdec.ptr28.i, %if.end27.i.for.cond.loopexit.i_crit_edge ]
  %20 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %cmp.i = icmp ult i32 %add.i, %23
  br i1 %cmp.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.for.end32.i_crit_edge

for.cond.loopexit.i.for.end32.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32.i

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.018.i = phi i32 [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %src.017.i = phi ptr [ %src.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %19, %for.body.preheader.i ]
  %dst.016.i = phi ptr [ %dst.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %10, %for.body.preheader.i ]
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef %i.018.i) #6
  %add.i = add i32 %i.018.i, 4096
  %24 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.018.i, i32 %27)
  %cmp136.i = icmp ult i32 %i.018.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %i.018.i)
  %cmp147.i = icmp ne i32 %i.018.i, 2147479552
  %or.cond8.i = and i1 %cmp147.i, %cmp136.i
  br i1 %or.cond8.i, label %for.body.i.for.body15.i_crit_edge, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

for.body.i.for.body15.i_crit_edge:                ; preds = %for.body.i
  br label %for.body15.i

for.body15.i:                                     ; preds = %if.end27.i.for.body15.i_crit_edge, %for.body.i.for.body15.i_crit_edge
  %j.011.i = phi i32 [ %add29.i, %if.end27.i.for.body15.i_crit_edge ], [ %i.018.i, %for.body.i.for.body15.i_crit_edge ]
  %src.110.i = phi ptr [ %incdec.ptr28.i, %if.end27.i.for.body15.i_crit_edge ], [ %src.017.i, %for.body.i.for.body15.i_crit_edge ]
  %dst.19.i = phi ptr [ %incdec.ptr.i, %if.end27.i.for.body15.i_crit_edge ], [ %dst.016.i, %for.body.i.for.body15.i_crit_edge ]
  %28 = ptrtoint ptr %src.110.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src.110.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %29)
  %cmp1.i.i66 = icmp eq i32 %30, %29
  br i1 %cmp1.i.i66, label %for.body15.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.i.i

for.body15.i.cx18_raw_writel.exit.i_crit_edge:    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.i.i:                                     ; preds = %for.body15.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp1.1.i.i = icmp eq i32 %31, %29
  br i1 %cmp1.1.i.i, label %for.cond.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cx18_raw_writel.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %29)
  %cmp1.2.i.i = icmp eq i32 %32, %29
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %29)
  %cmp1.3.i.i = icmp eq i32 %33, %29
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %29)
  %cmp1.4.i.i = icmp eq i32 %34, %29
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %29)
  %cmp1.5.i.i = icmp eq i32 %35, %29
  br i1 %cmp1.5.i.i, label %for.cond.4.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %29)
  %cmp1.6.i.i = icmp eq i32 %36, %29
  br i1 %cmp1.6.i.i, label %for.cond.5.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %29)
  %cmp1.7.i.i = icmp eq i32 %37, %29
  br i1 %cmp1.7.i.i, label %for.cond.6.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %29)
  %cmp1.8.i.i = icmp eq i32 %38, %29
  br i1 %cmp1.8.i.i, label %for.cond.7.i.i.cx18_raw_writel.exit.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.cx18_raw_writel.exit.i_crit_edge:  ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.19.i, i32 %29) #6, !srcloc !70
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  br label %cx18_raw_writel.exit.i

cx18_raw_writel.exit.i:                           ; preds = %for.cond.8.i.i, %for.cond.7.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.6.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.5.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.4.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.3.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.2.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.1.i.i.cx18_raw_writel.exit.i_crit_edge, %for.cond.i.i.cx18_raw_writel.exit.i_crit_edge, %for.body15.i.cx18_raw_writel.exit.i_crit_edge
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.19.i) #6, !srcloc !71
  %41 = ptrtoint ptr %src.110.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src.110.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp17.not.i = icmp eq i32 %40, %42
  br i1 %cmp17.not.i, label %if.end27.i, label %do.end21.i

do.end21.i:                                       ; preds = %cx18_raw_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %name24.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name24.i, i32 noundef %i.018.i) #9
  %43 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %44) #6
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef 0) #6
  br label %load_cpu_fw_direct.exit.thread

if.end27.i:                                       ; preds = %cx18_raw_writel.exit.i
  %incdec.ptr.i = getelementptr i32, ptr %dst.19.i, i32 1
  %incdec.ptr28.i = getelementptr i32, ptr %src.110.i, i32 1
  %add29.i = add nsw i32 %j.011.i, 4
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %48)
  %cmp13.i = icmp ult i32 %add29.i, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %add.i)
  %cmp14.i = icmp slt i32 %add29.i, %add.i
  %or.cond.i = and i1 %cmp14.i, %cmp13.i
  br i1 %or.cond.i, label %if.end27.i.for.body15.i_crit_edge, label %if.end27.i.for.cond.loopexit.i_crit_edge

if.end27.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

if.end27.i.for.body15.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15.i

for.end32.i:                                      ; preds = %for.cond.loopexit.i.for.end32.i_crit_edge, %if.end.i.for.end32.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end.i.for.end32.i_crit_edge ], [ %23, %for.cond.loopexit.i.for.end32.i_crit_edge ]
  %i_flags.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 32
  %49 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %i_flags.i, align 4
  %and1.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool34.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool34.not.i, label %do.end38.i, label %for.end32.i.load_cpu_fw_direct.exit_crit_edge

for.end32.i.load_cpu_fw_direct.exit_crit_edge:    ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %load_cpu_fw_direct.exit

do.end38.i:                                       ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %name41.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name41.i, ptr noundef nonnull @.str.5, i32 noundef %.lcssa.i) #9
  br label %load_cpu_fw_direct.exit

load_cpu_fw_direct.exit.thread:                   ; preds = %do.end21.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -5, %do.end21.i ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup

load_cpu_fw_direct.exit:                          ; preds = %do.end38.i, %for.end32.i.load_cpu_fw_direct.exit_crit_edge
  %51 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @release_firmware(ptr noundef %52) #6
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef 14417920) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp4 = icmp slt i32 %54, 1
  br i1 %cmp4, label %load_cpu_fw_direct.exit.cleanup_crit_edge, label %if.end6

load_cpu_fw_direct.exit.cleanup_crit_edge:        ; preds = %load_cpu_fw_direct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %load_cpu_fw_direct.exit
  call void @cx18_init_scb(ptr noundef %cx) #6
  %55 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %enc_mem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i67) #6
  %57 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %fw.i67, align 4
  %58 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_dev.i, align 4
  %dev.i69 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %call.i70 = call i32 @request_firmware(ptr noundef nonnull %fw.i67, ptr noundef nonnull @.str.6, ptr noundef %dev.i69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i78, label %do.end.i75

do.end.i75:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %name.i72 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call1.i73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i72, ptr noundef nonnull @.str.6) #9
  %call9.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.i72) #9
  br label %load_apu_fw_direct.exit.thread

if.end.i78:                                       ; preds = %if.end6
  %60 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw.i67, align 4
  %data.i76 = getelementptr inbounds %struct.firmware, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %data.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i76, align 4
  %add.ptr.i77 = getelementptr i8, ptr %63, i32 16
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %66 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr.i77, align 1
  %conv.i = zext i8 %67 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx12.i = getelementptr i8, ptr %63, i32 20
  %68 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %69 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or.i = or i32 %shl14.i, %shl.i
  %arrayidx15.i = getelementptr i8, ptr %63, i32 48
  %70 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %71 to i32
  %or17.i = or i32 %or.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp15.i = icmp ugt i32 %65, 16
  br i1 %cmp15.i, label %while.body.lr.ph.i, label %if.end.i78.while.end.i_crit_edge

if.end.i78.while.end.i_crit_edge:                 ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i78
  %name45.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %add17.i = phi i32 [ 16, %while.body.lr.ph.i ], [ %add.i101, %cleanup.i.while.body.i_crit_edge ]
  %offset.016.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %offset.1.i, %cleanup.i.while.body.i_crit_edge ]
  %div1.i = lshr i32 %offset.016.i, 2
  %add.ptr20.i = getelementptr i32, ptr %63, i32 %div1.i
  %72 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr20.i, align 4
  %arrayidx23.i = getelementptr i32, ptr %add.ptr20.i, i32 2
  %74 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx23.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  %arrayidx24.i = getelementptr i32, ptr %add.ptr20.i, i32 3
  %77 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx24.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1399154541, i32 %73)
  %cmp28.not.i = icmp eq i32 %73, 1399154541
  br i1 %cmp28.not.i, label %lor.lhs.false.i, label %while.body.i.if.then33.i_crit_edge

while.body.i.if.then33.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %arrayidx22.i = getelementptr i32, ptr %add.ptr20.i, i32 1
  %80 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1214604402, i32 %81)
  %cmp31.not.i = icmp eq i32 %81, 1214604402
  br i1 %cmp31.not.i, label %do.body37.i, label %lor.lhs.false.i.if.then33.i_crit_edge

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false.i.if.then33.i_crit_edge, %while.body.i.if.then33.i_crit_edge
  %add35.i = add i32 %79, %add17.i
  br label %cleanup.i

do.body37.i:                                      ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %82 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %do.body37.i.do.end54.i_crit_edge, label %do.end42.i

do.body37.i.do.end54.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

do.end42.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  %add50.i = add i32 %76, -1
  %sub.i = add i32 %add50.i, %79
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name45.i, i32 noundef %76, i32 noundef %sub.i) #9
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end42.i, %do.body37.i.do.end54.i_crit_edge
  %add61.i = add i32 %79, %add17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %65)
  %cmp62.i = icmp ugt i32 %add61.i, %65
  br i1 %cmp62.i, label %do.end54.i.while.end.i_crit_edge, label %for.cond.preheader.i

do.end54.i.while.end.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

for.cond.preheader.i:                             ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp6713.not.i = icmp eq i32 %78, 0
  br i1 %cmp6713.not.i, label %for.cond.preheader.i.cleanup.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add.ptr83.i = getelementptr i8, ptr %56, i32 %76
  br label %for.body.i80

for.cond.loopexit.i79:                            ; preds = %for.cond71.i.for.cond.loopexit.i79_crit_edge, %for.body.i80.for.cond.loopexit.i79_crit_edge
  %cmp67.i = icmp ult i32 %add75.i, %79
  br i1 %cmp67.i, label %for.cond.loopexit.i79.for.body.i80_crit_edge, label %for.cond.loopexit.i79.cleanup.i_crit_edge

for.cond.loopexit.i79.cleanup.i_crit_edge:        ; preds = %for.cond.loopexit.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.cond.loopexit.i79.for.body.i80_crit_edge:     ; preds = %for.cond.loopexit.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.cond.loopexit.i79.for.body.i80_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add75.i, %for.cond.loopexit.i79.for.body.i80_crit_edge ]
  %add70.i = add i32 %i.014.i, %76
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef %add70.i) #6
  %add75.i = add i32 %i.014.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %i.014.i)
  %cmp7610.not.i = icmp eq i32 %i.014.i, 2147479552
  br i1 %cmp7610.not.i, label %for.body.i80.for.cond.loopexit.i79_crit_edge, label %for.body.i80.for.body78.i_crit_edge

for.body.i80.for.body78.i_crit_edge:              ; preds = %for.body.i80
  br label %for.body78.i

for.body.i80.for.cond.loopexit.i79_crit_edge:     ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i79

for.cond71.i:                                     ; preds = %cx18_raw_writel.exit.i100
  %add105.i = add nsw i32 %j.012.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add105.i, i32 %79)
  %cmp73.i = icmp ult i32 %add105.i, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %add105.i, i32 %add75.i)
  %cmp76.i = icmp slt i32 %add105.i, %add75.i
  %or.cond.i81 = select i1 %cmp73.i, i1 %cmp76.i, i1 false
  br i1 %or.cond.i81, label %for.cond71.i.for.body78.i_crit_edge, label %for.cond71.i.for.cond.loopexit.i79_crit_edge

for.cond71.i.for.cond.loopexit.i79_crit_edge:     ; preds = %for.cond71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i79

for.cond71.i.for.body78.i_crit_edge:              ; preds = %for.cond71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body78.i

for.body78.i:                                     ; preds = %for.cond71.i.for.body78.i_crit_edge, %for.body.i80.for.body78.i_crit_edge
  %j.012.i = phi i32 [ %add105.i, %for.cond71.i.for.body78.i_crit_edge ], [ %i.014.i, %for.body.i80.for.body78.i_crit_edge ]
  %add79.i = add i32 %j.012.i, %add17.i
  %div802.i = lshr i32 %add79.i, 2
  %arrayidx81.i = getelementptr i32, ptr %63, i32 %div802.i
  %83 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx81.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %add.ptr83.i, i32 %j.012.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %84)
  %cmp1.i.i82 = icmp eq i32 %85, %84
  br i1 %cmp1.i.i82, label %for.body78.i.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.i.i84

for.body78.i.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.i.i84:                                   ; preds = %for.body78.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %84)
  %cmp1.1.i.i83 = icmp eq i32 %86, %84
  br i1 %cmp1.1.i.i83, label %for.cond.i.i84.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.1.i.i86

for.cond.i.i84.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.1.i.i86:                                 ; preds = %for.cond.i.i84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %84)
  %cmp1.2.i.i85 = icmp eq i32 %87, %84
  br i1 %cmp1.2.i.i85, label %for.cond.1.i.i86.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.2.i.i88

for.cond.1.i.i86.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.1.i.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.2.i.i88:                                 ; preds = %for.cond.1.i.i86
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %84)
  %cmp1.3.i.i87 = icmp eq i32 %88, %84
  br i1 %cmp1.3.i.i87, label %for.cond.2.i.i88.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.3.i.i90

for.cond.2.i.i88.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.2.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.3.i.i90:                                 ; preds = %for.cond.2.i.i88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %84)
  %cmp1.4.i.i89 = icmp eq i32 %89, %84
  br i1 %cmp1.4.i.i89, label %for.cond.3.i.i90.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.4.i.i92

for.cond.3.i.i90.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.3.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.4.i.i92:                                 ; preds = %for.cond.3.i.i90
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %84)
  %cmp1.5.i.i91 = icmp eq i32 %90, %84
  br i1 %cmp1.5.i.i91, label %for.cond.4.i.i92.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.5.i.i94

for.cond.4.i.i92.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.4.i.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.5.i.i94:                                 ; preds = %for.cond.4.i.i92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %84)
  %cmp1.6.i.i93 = icmp eq i32 %91, %84
  br i1 %cmp1.6.i.i93, label %for.cond.5.i.i94.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.6.i.i96

for.cond.5.i.i94.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.5.i.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.6.i.i96:                                 ; preds = %for.cond.5.i.i94
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %84)
  %cmp1.7.i.i95 = icmp eq i32 %92, %84
  br i1 %cmp1.7.i.i95, label %for.cond.6.i.i96.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.7.i.i98

for.cond.6.i.i96.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.6.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.7.i.i98:                                 ; preds = %for.cond.6.i.i96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %84)
  %cmp1.8.i.i97 = icmp eq i32 %93, %84
  br i1 %cmp1.8.i.i97, label %for.cond.7.i.i98.cx18_raw_writel.exit.i100_crit_edge, label %for.cond.8.i.i99

for.cond.7.i.i98.cx18_raw_writel.exit.i100_crit_edge: ; preds = %for.cond.7.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx18_raw_writel.exit.i100

for.cond.8.i.i99:                                 ; preds = %for.cond.7.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %84) #6, !srcloc !70
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  br label %cx18_raw_writel.exit.i100

cx18_raw_writel.exit.i100:                        ; preds = %for.cond.8.i.i99, %for.cond.7.i.i98.cx18_raw_writel.exit.i100_crit_edge, %for.cond.6.i.i96.cx18_raw_writel.exit.i100_crit_edge, %for.cond.5.i.i94.cx18_raw_writel.exit.i100_crit_edge, %for.cond.4.i.i92.cx18_raw_writel.exit.i100_crit_edge, %for.cond.3.i.i90.cx18_raw_writel.exit.i100_crit_edge, %for.cond.2.i.i88.cx18_raw_writel.exit.i100_crit_edge, %for.cond.1.i.i86.cx18_raw_writel.exit.i100_crit_edge, %for.cond.i.i84.cx18_raw_writel.exit.i100_crit_edge, %for.body78.i.cx18_raw_writel.exit.i100_crit_edge
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !71
  %96 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx81.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp92.not.i = icmp eq i32 %95, %97
  br i1 %cmp92.not.i, label %for.cond71.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cx18_raw_writel.exit.i100
  call void @__sanitizer_cov_trace_pc() #8
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name45.i, i32 noundef %add79.i) #9
  %98 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fw.i67, align 4
  call void @release_firmware(ptr noundef %99) #6
  br label %load_apu_fw_direct.exit.thread

cleanup.i:                                        ; preds = %for.cond.loopexit.i79.cleanup.i_crit_edge, %for.cond.preheader.i.cleanup.i_crit_edge, %if.then33.i
  %offset.1.i = phi i32 [ %add61.i, %for.cond.preheader.i.cleanup.i_crit_edge ], [ %add35.i, %if.then33.i ], [ %add61.i, %for.cond.loopexit.i79.cleanup.i_crit_edge ]
  %add.i101 = add i32 %offset.1.i, 16
  %100 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw.i67, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %cmp.i102 = icmp ult i32 %add.i101, %103
  br i1 %cmp.i102, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %do.end54.i.while.end.i_crit_edge, %if.end.i78.while.end.i_crit_edge
  %104 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %i_flags.i, align 4
  %and1.i.i104 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104)
  %tobool112.not.i = icmp eq i32 %and1.i.i104, 0
  br i1 %tobool112.not.i, label %do.end116.i, label %while.end.i.load_apu_fw_direct.exit_crit_edge

while.end.i.load_apu_fw_direct.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %load_apu_fw_direct.exit

do.end116.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %name119.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %106 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fw.i67, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name119.i, ptr noundef nonnull @.str.6, i32 noundef %or17.i, i32 noundef %109) #9
  br label %load_apu_fw_direct.exit

load_apu_fw_direct.exit.thread:                   ; preds = %cleanup.thread.i, %do.end.i75
  %retval.2.i.ph = phi i32 [ -5, %cleanup.thread.i ], [ -12, %do.end.i75 ]
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i67) #6
  br label %cleanup

load_apu_fw_direct.exit:                          ; preds = %do.end116.i, %while.end.i.load_apu_fw_direct.exit_crit_edge
  %110 = ptrtoint ptr %fw.i67 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fw.i67, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @release_firmware(ptr noundef %111) #6
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp9 = icmp slt i32 %113, 1
  br i1 %cmp9, label %load_apu_fw_direct.exit.cleanup_crit_edge, label %if.end11

load_apu_fw_direct.exit.cleanup_crit_edge:        ; preds = %load_apu_fw_direct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %load_apu_fw_direct.exit
  %114 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %115, i32 13041680
  br label %for.body.i.i109

for.body.i.i109:                                  ; preds = %for.body.backedge.i.i117, %if.end11
  %i.01.i.i107 = phi i32 [ 0, %if.end11 ], [ %i.01.be.i.i116, %for.body.backedge.i.i117 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 2048) #6, !srcloc !70
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp1.i.i108 = icmp eq i32 %116, -1
  br i1 %cmp1.i.i108, label %for.inc.i.i115, label %if.end.i.i113

if.end.i.i113:                                    ; preds = %for.body.i.i109
  %117 = and i32 %116, 134219776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp4.i.i110 = icmp ne i32 %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i107)
  %cmp.i.i111 = icmp ult i32 %i.01.i.i107, 9
  %or.cond.i.i112 = select i1 %cmp4.i.i110, i1 %cmp.i.i111, i1 false
  br i1 %or.cond.i.i112, label %if.end.i.i113.for.body.backedge.i.i117_crit_edge, label %if.end.i.i113.land.rhs.preheader_crit_edge

if.end.i.i113.land.rhs.preheader_crit_edge:       ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.end.i.i113.for.body.backedge.i.i117_crit_edge: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i117

for.inc.i.i115:                                   ; preds = %for.body.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i107)
  %cmp.old.i.i114 = icmp ult i32 %i.01.i.i107, 9
  br i1 %cmp.old.i.i114, label %for.inc.i.i115.for.body.backedge.i.i117_crit_edge, label %for.inc.i.i115.land.rhs.preheader_crit_edge

for.inc.i.i115.land.rhs.preheader_crit_edge:      ; preds = %for.inc.i.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

for.inc.i.i115.for.body.backedge.i.i117_crit_edge: ; preds = %for.inc.i.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i117

land.rhs.preheader:                               ; preds = %for.inc.i.i115.land.rhs.preheader_crit_edge, %if.end.i.i113.land.rhs.preheader_crit_edge
  br label %land.rhs

for.body.backedge.i.i117:                         ; preds = %for.inc.i.i115.for.body.backedge.i.i117_crit_edge, %if.end.i.i113.for.body.backedge.i.i117_crit_edge
  %i.01.be.i.i116 = add nuw nsw i32 %i.01.i.i107, 1
  br label %for.body.i.i109

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %retries.0146 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %118 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i120 = getelementptr i8, ptr %119, i32 13041680
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %121 = and i32 %120, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp15.not = icmp eq i32 %121, 0
  br i1 %cmp15.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %call17141 = call i32 @cx18_msleep_timeout(i32 noundef 200, i32 noundef 0) #6
  br label %if.end31

for.body:                                         ; preds = %land.rhs
  %call16 = call i32 @cx18_msleep_timeout(i32 noundef 10, i32 noundef 0) #6
  %inc = add nuw nsw i32 %retries.0146, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %land.lhs.true, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.lhs.true:                                    ; preds = %for.body
  %call17 = call i32 @cx18_msleep_timeout(i32 noundef 200, i32 noundef 0) #6
  %122 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %123, i32 13041680
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %125 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp21.not = icmp eq i32 %125, 0
  br i1 %cmp21.not, label %land.lhs.true.if.end31_crit_edge, label %do.end25

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end25:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %name28 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name28) #9
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %for.end.thread
  call void @cx18_sw2_irq_disable_cpu(ptr noundef %cx, i32 noundef 136) #6
  %call33 = call i32 (ptr, ptr, i32, i32, ...) @cx18_vapi_result(ptr noundef %cx, ptr noundef nonnull %api_args, i32 noundef 536870915, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %126 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %127, i32 13074704
  br label %for.body.i.i127

for.body.i.i127:                                  ; preds = %for.body.backedge.i.i135, %if.end36
  %i.01.i.i125 = phi i32 [ 0, %if.end36 ], [ %i.01.be.i.i134, %for.body.backedge.i.i135 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 1310740) #6, !srcloc !70
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #6, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %cmp1.i.i126 = icmp eq i32 %128, -1
  br i1 %cmp1.i.i126, label %for.inc.i.i133, label %if.end.i.i131

if.end.i.i131:                                    ; preds = %for.body.i.i127
  %129 = and i32 %128, 1310740
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310720, i32 %129)
  %cmp4.i.i128 = icmp ne i32 %129, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i125)
  %cmp.i.i129 = icmp ult i32 %i.01.i.i125, 9
  %or.cond.i.i130 = select i1 %cmp4.i.i128, i1 %cmp.i.i129, i1 false
  br i1 %or.cond.i.i130, label %if.end.i.i131.for.body.backedge.i.i135_crit_edge, label %if.end.i.i131.cleanup_crit_edge

if.end.i.i131.cleanup_crit_edge:                  ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i131.for.body.backedge.i.i135_crit_edge: ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i135

for.inc.i.i133:                                   ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i125)
  %cmp.old.i.i132 = icmp ult i32 %i.01.i.i125, 9
  br i1 %cmp.old.i.i132, label %for.inc.i.i133.for.body.backedge.i.i135_crit_edge, label %for.inc.i.i133.cleanup_crit_edge

for.inc.i.i133.cleanup_crit_edge:                 ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.i133.for.body.backedge.i.i135_crit_edge: ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge.i.i135

for.body.backedge.i.i135:                         ; preds = %for.inc.i.i133.for.body.backedge.i.i135_crit_edge, %if.end.i.i131.for.body.backedge.i.i135_crit_edge
  %i.01.be.i.i134 = add nuw nsw i32 %i.01.i.i125, 1
  br label %for.body.i.i127

cleanup:                                          ; preds = %for.inc.i.i133.cleanup_crit_edge, %if.end.i.i131.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end25, %load_apu_fw_direct.exit.cleanup_crit_edge, %load_apu_fw_direct.exit.thread, %load_cpu_fw_direct.exit.cleanup_crit_edge, %load_cpu_fw_direct.exit.thread, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end25 ], [ %54, %load_cpu_fw_direct.exit.cleanup_crit_edge ], [ %113, %load_apu_fw_direct.exit.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %retval.0.i.ph, %load_cpu_fw_direct.exit.thread ], [ %retval.2.i.ph, %load_apu_fw_direct.exit.thread ], [ 0, %if.end.i.i131.cleanup_crit_edge ], [ 0, %for.inc.i.i133.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %api_args) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_sw1_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_sw2_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_init_scb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_sw2_irq_disable_cpu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_setup_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 201, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_halt_firmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_halt_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 385, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx18_firmware_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx18_firmware_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 392, i32 26}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 400, i32 26}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 419, i32 3}
!17 = !{ptr @cx18_firmware_init._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cx18_firmware_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_firmware385, !20, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 444, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware386, !22, !"__UNIQUE_ID_firmware386", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 445, i32 1}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 96, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @load_cpu_fw_direct._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @load_cpu_fw_direct._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 97, i32 3}
!30 = !{ptr @load_cpu_fw_direct._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @load_cpu_fw_direct._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 109, i32 5}
!34 = !{ptr @load_cpu_fw_direct._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @load_cpu_fw_direct._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 119, i32 3}
!38 = !{ptr @load_cpu_fw_direct._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @load_cpu_fw_direct._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 140, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @load_apu_fw_direct._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @load_apu_fw_direct._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 141, i32 3}
!47 = !{ptr @load_apu_fw_direct._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @load_apu_fw_direct._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 166, i32 3}
!51 = !{ptr @load_apu_fw_direct._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @load_apu_fw_direct._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @load_apu_fw_direct._entry.29, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 180, i32 6}
!55 = !{ptr @load_apu_fw_direct._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx18/cx18-firmware.c", i32 191, i32 3}
!58 = !{ptr @load_apu_fw_direct._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @load_apu_fw_direct._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2158654886}
!70 = !{i64 5754505}
!71 = !{i64 5754923}
!72 = !{i64 2158654516}
