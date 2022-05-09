; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_hw.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.112 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.109], %struct.media_entity_enum, i32 }
%struct.anon.109 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.osd_cmd_s = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.osd_cap_s = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@av7110_debiwrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: invalid count %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"av7110_debiwrite\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/av7110/av7110_hw.c\00", [55 x i8] zeroinitializer }, align 32
@av7110_debiwrite._entry_ptr = internal global ptr @av7110_debiwrite._entry, section ".printk_index", align 4
@av7110_debiwrite._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: wait_for_debi_done failed\0A\00", [33 x i8] zeroinitializer }, align 32
@av7110_debiwrite._entry_ptr.5 = internal global ptr @av7110_debiwrite._entry.3, section ".printk_index", align 4
@av7110_debiread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"av7110_debiread\00", [16 x i8] zeroinitializer }, align 32
@av7110_debiread._entry_ptr = internal global ptr @av7110_debiread._entry, section ".printk_index", align 4
@av7110_debiread._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: wait_for_debi_done #1 failed\0A\00", [62 x i8] zeroinitializer }, align 32
@av7110_debiread._entry_ptr.9 = internal global ptr @av7110_debiread._entry.7, section ".printk_index", align 4
@av7110_debiread._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: wait_for_debi_done #2 failed\0A\00", [62 x i8] zeroinitializer }, align 32
@av7110_debiread._entry_ptr.12 = internal global ptr @av7110_debiread._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"av7110/bootcode.bin\00", [44 x i8] zeroinitializer }, align 32
@av7110_debug = external dso_local local_unnamed_addr global i32, align 4
@av7110_bootarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017dvb_ttpci: %s(): %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"av7110_bootarm\00", [17 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr = internal global ptr @av7110_bootarm._entry, section ".printk_index", align 4
@av7110_bootarm._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013dvb-ttpci: debi test in av7110_bootarm() failed: %08x != %08x (check your BIOS 'Plug&Play OS' settings)\0A\00", [53 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.18 = internal global ptr @av7110_bootarm._entry.16, section ".printk_index", align 4
@av7110_bootarm._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dvb_ttpci: %s(): debi test OK\0A\00", [63 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.21 = internal global ptr @av7110_bootarm._entry.19, section ".printk_index", align 4
@av7110_bootarm._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dvb_ttpci: %s(): load boot code\0A\00", [61 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.24 = internal global ptr @av7110_bootarm._entry.22, section ".printk_index", align 4
@av7110_bootarm._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dvb-ttpci: Failed to load firmware \22%s\22\0A\00", [53 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.27 = internal global ptr @av7110_bootarm._entry.25, section ".printk_index", align 4
@av7110_bootarm._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013dvb-ttpci: av7110_bootarm(): saa7146_wait_for_debi_done() timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.30 = internal global ptr @av7110_bootarm._entry.28, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@av7110_bootarm._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dvb_ttpci: %s(): load dram code\0A\00", [61 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.33 = internal global ptr @av7110_bootarm._entry.31, section ".printk_index", align 4
@av7110_bootarm._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dvb-ttpci: av7110_bootarm(): load_dram() failed\0A\00", [45 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.36 = internal global ptr @av7110_bootarm._entry.34, section ".printk_index", align 4
@av7110_bootarm._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dvb_ttpci: %s(): load dpram code\0A\00", [60 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.39 = internal global ptr @av7110_bootarm._entry.37, section ".printk_index", align 4
@av7110_bootarm._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.15, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013dvb-ttpci: av7110_bootarm(): saa7146_wait_for_debi_done() timed out after loading DRAM\0A\00", [38 x i8] zeroinitializer }, align 32
@av7110_bootarm._entry_ptr.42 = internal global ptr @av7110_bootarm._entry.40, section ".printk_index", align 4
@__UNIQUE_ID_firmware385 = internal constant [39 x i8] c"dvb_ttpci.firmware=av7110/bootcode.bin\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@av7110_wait_msgstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: timeout waiting for MSGSTATE %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"av7110_wait_msgstate\00", [43 x i8] zeroinitializer }, align 32
@av7110_wait_msgstate._entry_ptr = internal global ptr @av7110_wait_msgstate._entry, section ".printk_index", align 4
@av7110_fw_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: %s len=%d is too big!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"av7110_fw_cmd\00", [18 x i8] zeroinitializer }, align 32
@av7110_fw_cmd._entry_ptr = internal global ptr @av7110_fw_cmd._entry, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb_ttpci\00", [22 x i8] zeroinitializer }, align 32
@av7110_fw_cmd._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dvb-ttpci: av7110_fw_cmd error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@av7110_fw_cmd._entry_ptr.50 = internal global ptr @av7110_fw_cmd._entry.48, section ".printk_index", align 4
@av7110_fw_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.51, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"av7110_fw_request\00", [46 x i8] zeroinitializer }, align 32
@av7110_fw_request._entry_ptr = internal global ptr @av7110_fw_request._entry, section ".printk_index", align 4
@av7110_fw_request._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dvb_ttpci: %s(): arm not ready.\0A\00", [61 x i8] zeroinitializer }, align 32
@av7110_fw_request._entry_ptr.54 = internal global ptr @av7110_fw_request._entry.52, section ".printk_index", align 4
@av7110_fw_request._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dvb-ttpci: av7110_fw_request error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@av7110_fw_request._entry_ptr.57 = internal global ptr @av7110_fw_request._entry.55, section ".printk_index", align 4
@av7110_fw_request._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: timeout waiting for COMMAND to complete\0A\00", [49 x i8] zeroinitializer }, align 32
@av7110_fw_request._entry_ptr.60 = internal global ptr @av7110_fw_request._entry.58, section ".printk_index", align 4
@av7110_firmversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.61, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"av7110_firmversion\00", [45 x i8] zeroinitializer }, align 32
@av7110_firmversion._entry_ptr = internal global ptr @av7110_firmversion._entry, section ".printk_index", align 4
@av7110_firmversion._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dvb-ttpci: failed to boot firmware @ card %d\0A\00", [50 x i8] zeroinitializer }, align 32
@av7110_firmversion._entry_ptr.64 = internal global ptr @av7110_firmversion._entry.62, section ".printk_index", align 4
@av7110_firmversion._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"dvb-ttpci: info @ card %d: firm %08x, rtsl %08x, vid %08x, app %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@av7110_firmversion._entry_ptr.67 = internal global ptr @av7110_firmversion._entry.65, section ".printk_index", align 4
@av7110_firmversion._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"dvb-ttpci: firmware @ card %d supports CI link layer interface\0A\00", [32 x i8] zeroinitializer }, align 32
@av7110_firmversion._entry_ptr.70 = internal global ptr @av7110_firmversion._entry.68, section ".printk_index", align 4
@av7110_firmversion._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"dvb-ttpci: no firmware support for CI link layer interface @ card %d\0A\00", [58 x i8] zeroinitializer }, align 32
@av7110_firmversion._entry_ptr.73 = internal global ptr @av7110_firmversion._entry.71, section ".printk_index", align 4
@av7110_diseqc_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.74, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"av7110_diseqc_send\00", [45 x i8] zeroinitializer }, align 32
@av7110_diseqc_send._entry_ptr = internal global ptr @av7110_diseqc_send._entry, section ".printk_index", align 4
@av7110_diseqc_send._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dvb-ttpci: av7110_diseqc_send error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@av7110_diseqc_send._entry_ptr.77 = internal global ptr @av7110_diseqc_send._entry.75, section ".printk_index", align 4
@bpp2bit = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@av7110_osd_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017dvb_ttpci: %s(): av7110_osd_cmd(%d) returns with -ERESTARTSYS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"av7110_osd_cmd\00", [17 x i8] zeroinitializer }, align 32
@av7110_osd_cmd._entry_ptr = internal global ptr @av7110_osd_cmd._entry, section ".printk_index", align 4
@av7110_osd_cmd._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dvb_ttpci: %s(): av7110_osd_cmd(%d) returns with %d\0A\00", [41 x i8] zeroinitializer }, align 32
@av7110_osd_cmd._entry_ptr.82 = internal global ptr @av7110_osd_cmd._entry.80, section ".printk_index", align 4
@load_dram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.83, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load_dram\00", [22 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr = internal global ptr @load_dram._entry, section ".printk_index", align 4
@load_dram._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb-ttpci: load_dram(): timeout at block %d\0A\00", [49 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr.86 = internal global ptr @load_dram._entry.84, section ".printk_index", align 4
@load_dram._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017dvb_ttpci: %s(): writing DRAM block %d\0A\00", [54 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr.89 = internal global ptr @load_dram._entry.87, section ".printk_index", align 4
@load_dram._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dvb-ttpci: load_dram(): timeout at last block\0A\00", [47 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr.92 = internal global ptr @load_dram._entry.90, section ".printk_index", align 4
@load_dram._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013dvb-ttpci: load_dram(): timeout after last block\0A\00", [44 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr.95 = internal global ptr @load_dram._entry.93, section ".printk_index", align 4
@load_dram._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dvb-ttpci: load_dram(): final handshake timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@load_dram._entry_ptr.98 = internal global ptr @load_dram._entry.96, section ".printk_index", align 4
@waitdebi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.99, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"waitdebi\00", [23 x i8] zeroinitializer }, align 32
@waitdebi._entry_ptr = internal global ptr @waitdebi._entry, section ".printk_index", align 4
@av7110_send_fw_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.100, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"av7110_send_fw_cmd\00", [45 x i8] zeroinitializer }, align 32
@av7110_send_fw_cmd._entry_ptr = internal global ptr @av7110_send_fw_cmd._entry, section ".printk_index", align 4
@av7110_send_fw_cmd._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dvb-ttpci: %s(): av7110_send_fw_cmd error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@av7110_send_fw_cmd._entry_ptr.103 = internal global ptr @av7110_send_fw_cmd._entry.101, section ".printk_index", align 4
@__av7110_send_fw_cmd._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.104, ptr @.str.2, i32 333, ptr null, ptr null }, align 1
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__av7110_send_fw_cmd\00", [43 x i8] zeroinitializer }, align 32
@__av7110_send_fw_cmd._entry_ptr = internal global ptr @__av7110_send_fw_cmd._entry, section ".printk_index", align 4
@__av7110_send_fw_cmd._entry.105 = internal constant %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 343, ptr null, ptr null }, align 1
@.str.106 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dvb-ttpci: %s(): timeout waiting for COMMAND idle\0A\00", [43 x i8] zeroinitializer }, align 32
@__av7110_send_fw_cmd._entry_ptr.107 = internal global ptr @__av7110_send_fw_cmd._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSG\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OSD\00", [28 x i8] zeroinitializer }, align 32
@__av7110_send_fw_cmd._entry.110 = internal constant %struct.pi_entry { ptr @.str.111, ptr @.str.104, ptr @.str.2, i32 400, ptr null, ptr null }, align 1
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: %s QUEUE overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@__av7110_send_fw_cmd._entry_ptr.112 = internal global ptr @__av7110_send_fw_cmd._entry.110, section ".printk_index", align 4
@__av7110_send_fw_cmd._entry.113 = internal constant %struct.pi_entry { ptr @.str.114, ptr @.str.104, ptr @.str.2, i32 407, ptr null, ptr null }, align 1
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: timeout waiting on busy %s QUEUE\0A\00", [56 x i8] zeroinitializer }, align 32
@__av7110_send_fw_cmd._entry_ptr.115 = internal global ptr @__av7110_send_fw_cmd._entry.113, section ".printk_index", align 4
@av7110_fw_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dvb-ttpci: av7110_fw_query error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"av7110_fw_query\00", [16 x i8] zeroinitializer }, align 32
@av7110_fw_query._entry_ptr = internal global ptr @av7110_fw_query._entry, section ".printk_index", align 4
@bpp2pal = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 0, i32 16, i32 0, i32 0, i32 0, i32 256], [32 x i8] zeroinitializer }, align 32
@OSDSetBlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dvb_ttpci: %s(): returns %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OSDSetBlock\00", [20 x i8] zeroinitializer }, align 32
@OSDSetBlock._entry_ptr = internal global ptr @OSDSetBlock._entry, section ".printk_index", align 4
@WaitUntilBmpLoaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"dvb-ttpci: warning: timeout waiting in LoadBitmap: %d, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WaitUntilBmpLoaded\00", [45 x i8] zeroinitializer }, align 32
@WaitUntilBmpLoaded._entry_ptr = internal global ptr @WaitUntilBmpLoaded._entry, section ".printk_index", align 4
@LoadBitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.122, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LoadBitmap\00", [21 x i8] zeroinitializer }, align 32
@LoadBitmap._entry_ptr = internal global ptr @LoadBitmap._entry, section ".printk_index", align 4
@LoadBitmap._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dvb_ttpci: %s(): av7110_fw_cmd: LoadBmp size %d\0A\00", [45 x i8] zeroinitializer }, align 32
@LoadBitmap._entry_ptr.125 = internal global ptr @LoadBitmap._entry.123, section ".printk_index", align 4
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@BlitBitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.129, ptr @.str.2, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BlitBitmap\00", [21 x i8] zeroinitializer }, align 32
@BlitBitmap._entry_ptr = internal global ptr @BlitBitmap._entry, section ".printk_index", align 4
@ReleaseBitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.130, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ReleaseBitmap\00", [18 x i8] zeroinitializer }, align 32
@ReleaseBitmap._entry_ptr = internal global ptr @ReleaseBitmap._entry, section ".printk_index", align 4
@ReleaseBitmap._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017dvb_ttpci: %s(): ReleaseBitmap called while BMP_LOADING\0A\00", [37 x i8] zeroinitializer }, align 32
@ReleaseBitmap._entry_ptr.133 = internal global ptr @ReleaseBitmap._entry.131, section ".printk_index", align 4
@FlushText._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dvb-ttpci: %s(): timeout waiting for BUFF1_BASE == 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FlushText\00", [22 x i8] zeroinitializer }, align 32
@FlushText._entry_ptr = internal global ptr @FlushText._entry, section ".printk_index", align 4
@WriteText._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013dvb-ttpci: %s: timeout waiting for BUFF1_BASE == 0\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WriteText\00", [22 x i8] zeroinitializer }, align 32
@WriteText._entry_ptr = internal global ptr @WriteText._entry, section ".printk_index", align 4
@WriteText._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dvb-ttpci: WriteText error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@WriteText._entry_ptr.140 = internal global ptr @WriteText._entry.138, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.142 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 5, i64 9, i64 128]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.144 = internal global [20 x i64] [i64 18, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 12, i64 13, i64 14, i64 15, i64 16, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 3, i64 7]
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 49, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 53, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 72, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 76, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 87, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 197, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 202, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 223, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 229, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 232, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 239, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 249, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 255, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 257, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 264, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 268, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 312, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 486, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 504, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 542, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 545, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 554, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 564, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 629, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 632, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 643, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 649, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 652, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 665, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 683, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [8 x i8] c"bpp2bit\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 836, i32 25 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1184, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1186, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 141, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 149, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 152, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 164, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 179, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 185, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 125, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 463, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 472, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 333, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 343, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 372, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 377, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 399, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 406, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 614, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [8 x i8] c"bpp2pal\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 833, i32 37 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1038, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 845, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 863, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 903, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 230, i32 6 }
@___asan_gen_.479 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 214, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 156, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 912, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 919, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 924, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 729, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 756, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [44 x i8] c"../drivers/staging/media/av7110/av7110_hw.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 786, i32 3 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @BlitBitmap._entry, ptr @BlitBitmap._entry_ptr, ptr @FlushText._entry, ptr @FlushText._entry_ptr, ptr @LoadBitmap._entry, ptr @LoadBitmap._entry.123, ptr @LoadBitmap._entry_ptr, ptr @LoadBitmap._entry_ptr.125, ptr @OSDSetBlock._entry, ptr @OSDSetBlock._entry_ptr, ptr @ReleaseBitmap._entry, ptr @ReleaseBitmap._entry.131, ptr @ReleaseBitmap._entry_ptr, ptr @ReleaseBitmap._entry_ptr.133, ptr @WaitUntilBmpLoaded._entry, ptr @WaitUntilBmpLoaded._entry_ptr, ptr @WriteText._entry, ptr @WriteText._entry.138, ptr @WriteText._entry_ptr, ptr @WriteText._entry_ptr.140, ptr @__UNIQUE_ID_firmware385, ptr @__av7110_send_fw_cmd._entry, ptr @__av7110_send_fw_cmd._entry.105, ptr @__av7110_send_fw_cmd._entry.110, ptr @__av7110_send_fw_cmd._entry.113, ptr @__av7110_send_fw_cmd._entry_ptr, ptr @__av7110_send_fw_cmd._entry_ptr.107, ptr @__av7110_send_fw_cmd._entry_ptr.112, ptr @__av7110_send_fw_cmd._entry_ptr.115, ptr @av7110_bootarm._entry, ptr @av7110_bootarm._entry.16, ptr @av7110_bootarm._entry.19, ptr @av7110_bootarm._entry.22, ptr @av7110_bootarm._entry.25, ptr @av7110_bootarm._entry.28, ptr @av7110_bootarm._entry.31, ptr @av7110_bootarm._entry.34, ptr @av7110_bootarm._entry.37, ptr @av7110_bootarm._entry.40, ptr @av7110_bootarm._entry_ptr, ptr @av7110_bootarm._entry_ptr.18, ptr @av7110_bootarm._entry_ptr.21, ptr @av7110_bootarm._entry_ptr.24, ptr @av7110_bootarm._entry_ptr.27, ptr @av7110_bootarm._entry_ptr.30, ptr @av7110_bootarm._entry_ptr.33, ptr @av7110_bootarm._entry_ptr.36, ptr @av7110_bootarm._entry_ptr.39, ptr @av7110_bootarm._entry_ptr.42, ptr @av7110_debiread._entry, ptr @av7110_debiread._entry.10, ptr @av7110_debiread._entry.7, ptr @av7110_debiread._entry_ptr, ptr @av7110_debiread._entry_ptr.12, ptr @av7110_debiread._entry_ptr.9, ptr @av7110_debiwrite._entry, ptr @av7110_debiwrite._entry.3, ptr @av7110_debiwrite._entry_ptr, ptr @av7110_debiwrite._entry_ptr.5, ptr @av7110_diseqc_send._entry, ptr @av7110_diseqc_send._entry.75, ptr @av7110_diseqc_send._entry_ptr, ptr @av7110_diseqc_send._entry_ptr.77, ptr @av7110_firmversion._entry, ptr @av7110_firmversion._entry.62, ptr @av7110_firmversion._entry.65, ptr @av7110_firmversion._entry.68, ptr @av7110_firmversion._entry.71, ptr @av7110_firmversion._entry_ptr, ptr @av7110_firmversion._entry_ptr.64, ptr @av7110_firmversion._entry_ptr.67, ptr @av7110_firmversion._entry_ptr.70, ptr @av7110_firmversion._entry_ptr.73, ptr @av7110_fw_cmd._entry, ptr @av7110_fw_cmd._entry.48, ptr @av7110_fw_cmd._entry_ptr, ptr @av7110_fw_cmd._entry_ptr.50, ptr @av7110_fw_query._entry, ptr @av7110_fw_query._entry_ptr, ptr @av7110_fw_request._entry, ptr @av7110_fw_request._entry.52, ptr @av7110_fw_request._entry.55, ptr @av7110_fw_request._entry.58, ptr @av7110_fw_request._entry_ptr, ptr @av7110_fw_request._entry_ptr.54, ptr @av7110_fw_request._entry_ptr.57, ptr @av7110_fw_request._entry_ptr.60, ptr @av7110_osd_cmd._entry, ptr @av7110_osd_cmd._entry.80, ptr @av7110_osd_cmd._entry_ptr, ptr @av7110_osd_cmd._entry_ptr.82, ptr @av7110_send_fw_cmd._entry, ptr @av7110_send_fw_cmd._entry.101, ptr @av7110_send_fw_cmd._entry_ptr, ptr @av7110_send_fw_cmd._entry_ptr.103, ptr @av7110_wait_msgstate._entry, ptr @av7110_wait_msgstate._entry_ptr, ptr @load_dram._entry, ptr @load_dram._entry.84, ptr @load_dram._entry.87, ptr @load_dram._entry.90, ptr @load_dram._entry.93, ptr @load_dram._entry.96, ptr @load_dram._entry_ptr, ptr @load_dram._entry_ptr.86, ptr @load_dram._entry_ptr.89, ptr @load_dram._entry_ptr.92, ptr @load_dram._entry_ptr.95, ptr @load_dram._entry_ptr.98, ptr @waitdebi._entry, ptr @waitdebi._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @bpp2bit, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @bpp2pal, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debiwrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debiwrite._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debiread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debiread._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debiread._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_bootarm._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_wait_msgstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_cmd._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_request._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_request._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_request._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_firmversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_firmversion._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_firmversion._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_firmversion._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_firmversion._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_diseqc_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_diseqc_send._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpp2bit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_osd_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_osd_cmd._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dram._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waitdebi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_send_fw_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_send_fw_cmd._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_fw_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpp2pal to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OSDSetBlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WaitUntilBmpLoaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LoadBitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LoadBitmap._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BlitBitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ReleaseBitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ReleaseBitmap._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlushText._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteText._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteText._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_debiwrite(ptr nocapture noundef readonly %av7110, i32 noundef %config, i32 noundef %addr, i32 noundef %val, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32764, i32 %count)
  %cmp = icmp ugt i32 %count, 32764
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %count) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @saa7146_wait_for_debi_done(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %do.body12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #13
  br label %cleanup

do.body12:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %config)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count)
  %cmp15 = icmp ult i32 %count, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp15, label %do.body17, label %do.body22

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %val)
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr21 = getelementptr i8, ptr %7, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %5) #10, !srcloc !262
  br label %do.body28

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %debi_bus = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 73
  %8 = ptrtoint ptr %debi_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debi_bus, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add.ptr26 = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %10) #10, !srcloc !262
  br label %do.body28

do.body28:                                        ; preds = %do.body22, %do.body17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %shl = shl nuw i32 %count, 17
  %and = and i32 %addr, 65535
  %or = or i32 %shl, %and
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %13) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 33554944) #10, !srcloc !262
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %do.end8, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end8 ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_wait_for_debi_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_debiread(ptr nocapture noundef readonly %av7110, i32 noundef %config, i32 noundef %addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32764, i32 %count)
  %cmp = icmp ugt i32 %count, 32764
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %count) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @saa7146_wait_for_debi_done(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %do.body12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.body12:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %debi_bus = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 73
  %2 = ptrtoint ptr %debi_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debi_bus, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  tail call void @arm_heavy_mb() #10
  %shl = shl nuw i32 %count, 17
  %and = and i32 %addr, 65535
  %or = or i32 %shl, %and
  %or18 = or i32 %or, 65536
  %7 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %7) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %config)
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %10) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  %add.ptr30 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 33554944) #10, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp31 = icmp ugt i32 %count, 4
  br i1 %cmp31, label %do.body12.cleanup_crit_edge, label %if.end33

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %do.body12
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 8
  %call35 = tail call i32 @saa7146_wait_for_debi_done(ptr noundef %16, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem, align 4
  %add.ptr45 = getelementptr i8, ptr %18, i32 136
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #10, !srcloc !269
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  %.neg = mul nsw i32 %count, -8
  %mul = add nsw i32 %.neg, 32
  %shr = lshr i32 -1, %mul
  %and49 = and i32 %20, %shr
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end40, %do.body12.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ 0, %do.end40 ], [ %and49, %if.end43 ], [ %count, %do.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_bootarm(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !271
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %3 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %av7110) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arm_ready = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 68
  %4 = ptrtoint ptr %arm_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arm_ready, align 4
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 2, i32 noundef 64) #10
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  tail call void @arm_heavy_mb() #10
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 220
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  %10 = and i32 %9, -134219777
  %11 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %10) #10, !srcloc !262
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134219776) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 8
  %mem14 = getelementptr inbounds %struct.saa7146_dev, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %mem14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem14, align 4
  %add.ptr15 = getelementptr i8, ptr %20, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -2146926584) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  %mem20 = getelementptr inbounds %struct.saa7146_dev, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %mem20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem20, align 4
  %add.ptr21 = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 8
  %mem26 = getelementptr inbounds %struct.saa7146_dev, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %mem26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem26, align 4
  %add.ptr27 = getelementptr i8, ptr %28, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 393222) #10, !srcloc !262
  %call.i = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 3014656, i32 noundef 16384, i32 noundef 1985229328, i32 noundef 4) #10
  %call.i173 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 3014656, i32 noundef 16384, i32 noundef 1985229328, i32 noundef 4) #10
  %call.i174 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16384, i32 noundef 4) #10
  %debi_virt.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 72
  %29 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debi_virt.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call.i174, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 271733878, i32 %call.i174)
  %cmp.not = icmp eq i32 %call.i174, 271733878
  br i1 %cmp.not, label %do.end4.for.body_crit_edge, label %do.end32

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end32:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call.i174, i32 noundef 271733878) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %i.0192 = phi i32 [ %add37, %for.body.for.body_crit_edge ], [ 0, %do.end4.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0192, 16384
  %call.i175 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 3014656, i32 noundef %add, i32 noundef 0, i32 noundef 4) #10
  %add37 = add nuw nsw i32 %i.0192, 4
  %cmp36 = icmp ult i32 %i.0192, 8188
  br i1 %cmp36, label %for.body.for.body_crit_edge, label %do.body38

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body38:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %32 = load i32, ptr @av7110_debug, align 4
  %and39 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.do.body50_crit_edge, label %do.end44

do.body38.do.body50_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #13
  br label %do.body50

do.body50:                                        ; preds = %do.end44, %do.body38.do.body50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %33 = load i32, ptr @av7110_debug, align 4
  %and51 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.end61_crit_edge, label %do.end56

do.body50.do.end61_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.15) #13
  br label %do.end61

do.end61:                                         ; preds = %do.end56, %do.body50.do.end61_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 0, i32 noundef 32) #10
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %2, i32 0, i32 8
  %34 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call63 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.13, ptr noundef %dev62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end71, label %do.end68

do.end68:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end71:                                         ; preds = %do.end61
  %36 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %42 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %debi_virt.i, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %39, i32 %41)
  %call.i177 = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef 16384, i32 noundef 0, i32 noundef %41) #10
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %46) #10
  %call.i178 = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 1, i32 noundef 2) #10
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 8
  %call73 = call i32 @saa7146_wait_for_debi_done(ptr noundef %48, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  call void @saa7146_setgpio(ptr noundef %2, i32 noundef 2, i32 noundef 80) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %50 = load i32, ptr @av7110_debug, align 4
  %and83 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.do.end93_crit_edge, label %do.end88

if.end81.do.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15) #13
  br label %do.end93

do.end93:                                         ; preds = %do.end88, %if.end81.do.end93_crit_edge
  %bin_root = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 92
  %51 = ptrtoint ptr %bin_root to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bin_root, align 8
  %size_root = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 93
  %53 = ptrtoint ptr %size_root to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size_root, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %55 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end93.do.end3.i_crit_edge, label %do.end.i

do.end93.do.end3.i_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  %call.i179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.83, ptr noundef %av7110) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end93.do.end3.i_crit_edge
  %.frozen = freeze i32 %54
  %div.i = sdiv i32 %.frozen, 3072
  %56 = mul i32 %div.i, 3072
  %rem.i.decomposed = sub i32 %.frozen, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %54)
  %cmp176.i = icmp sgt i32 %54, 3071
  br i1 %cmp176.i, label %do.end3.i.for.body.i_crit_edge, label %do.end3.i.for.end.i_crit_edge

do.end3.i.for.end.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.end3.i.for.body.i_crit_edge:                   ; preds = %do.end3.i
  br label %for.body.i

for.body.i:                                       ; preds = %do.end24.i.for.body.i_crit_edge, %do.end3.i.for.body.i_crit_edge
  %i.0179.i = phi i32 [ %inc.i, %do.end24.i.for.body.i_crit_edge ], [ 0, %do.end3.i.for.body.i_crit_edge ]
  %base.0178.i = phi i32 [ %add.i, %do.end24.i.for.body.i_crit_edge ], [ 771752964, %do.end3.i.for.body.i_crit_edge ]
  %bootblock.0177.i = phi i32 [ %xor.i, %do.end24.i.for.body.i_crit_edge ], [ 17408, %do.end3.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %57 = load i32, ptr @av7110_debug, align 4
  %and.i.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.for.body.i.i.preheader_crit_edge, label %do.end.i.i

for.body.i.for.body.i.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.99, ptr noundef %av7110) #13
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %do.end.i.i, %for.body.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %k.01.i.i = phi i32 [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %call.i.i.i = call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 2) #10
  %58 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debi_virt.i, align 4
  %res.i.0.extract.shift.i.i = lshr i32 %call.i.i.i, 16
  %res.i.0.extract.trunc.i.i = trunc i32 %res.i.0.extract.shift.i.i to i16
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %res.i.0.extract.trunc.i.i, ptr %59, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp5.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp5.i.i, label %do.body13.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 1073740) #10
  %inc.i.i = add nuw nsw i32 %k.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end9.i, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.end9.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %i.0179.i) #13
  br label %do.end99

do.body13.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %62 = load i32, ptr @av7110_debug, align 4
  %and14.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.do.end24.i_crit_edge, label %do.end19.i

do.body13.i.do.end24.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.end19.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83, i32 noundef %i.0179.i) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end19.i, %do.body13.i.do.end24.i_crit_edge
  %mul.i = mul nuw i32 %i.0179.i, 3072
  %add.ptr.i180 = getelementptr i8, ptr %52, i32 %mul.i
  %63 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %debi_virt.i, align 4
  %65 = call ptr @memcpy(ptr %64, ptr %add.ptr.i180, i32 3072)
  %call.i101.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef %bootblock.0177.i, i32 noundef 0, i32 noundef 3072) #10
  %xor.i = xor i32 %bootblock.0177.i, 5120
  %66 = call i32 @llvm.bswap.i32(i32 %base.0178.i) #10
  %call.i102.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef 17404, i32 noundef %66, i32 noundef 4) #10
  %call.i103.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17402, i32 noundef 3072, i32 noundef 2) #10
  %call.i104.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 1, i32 noundef 2) #10
  %add.i = add nuw i32 %base.0178.i, 3072
  %inc.i = add nuw nsw i32 %i.0179.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %do.end24.i.for.body.i_crit_edge

do.end24.i.for.body.i_crit_edge:                  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = mul i32 %div.i, 3072
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %do.end3.i.for.end.i_crit_edge
  %bootblock.0.lcssa.i = phi i32 [ 17408, %do.end3.i.for.end.i_crit_edge ], [ %xor.i, %for.end.loopexit.i ]
  %base.0.lcssa.i = phi i32 [ 771752964, %do.end3.i.for.end.i_crit_edge ], [ %add.i, %for.end.loopexit.i ]
  %i.0.lcssa.i = phi i32 [ 0, %do.end3.i.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp25.i = icmp sgt i32 %rem.i.decomposed, 0
  br i1 %cmp25.i, label %if.then26.i, label %for.end.i.if.end45.i_crit_edge

for.end.i.if.end45.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then26.i:                                      ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %67 = load i32, ptr @av7110_debug, align 4
  %and.i105.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool.not.i106.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool.not.i106.i, label %if.then26.i.for.body.i116.i.preheader_crit_edge, label %do.end.i108.i

if.then26.i.for.body.i116.i.preheader_crit_edge:  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i116.i.preheader

do.end.i108.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.99, ptr noundef %av7110) #13
  br label %for.body.i116.i.preheader

for.body.i116.i.preheader:                        ; preds = %do.end.i108.i, %if.then26.i.for.body.i116.i.preheader_crit_edge
  br label %for.body.i116.i

for.body.i116.i:                                  ; preds = %if.end7.i119.i.for.body.i116.i_crit_edge, %for.body.i116.i.preheader
  %k.01.i111.i = phi i32 [ %inc.i117.i, %if.end7.i119.i.for.body.i116.i_crit_edge ], [ 0, %for.body.i116.i.preheader ]
  %call.i.i112.i = call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 2) #10
  %68 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %debi_virt.i, align 4
  %res.i.0.extract.shift.i113.i = lshr i32 %call.i.i112.i, 16
  %res.i.0.extract.trunc.i114.i = trunc i32 %res.i.0.extract.shift.i113.i to i16
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %res.i.0.extract.trunc.i114.i, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112.i)
  %cmp5.i115.i = icmp eq i32 %call.i.i112.i, 0
  br i1 %cmp5.i115.i, label %if.end35.i, label %if.end7.i119.i

if.end7.i119.i:                                   ; preds = %for.body.i116.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 1073740) #10
  %inc.i117.i = add nuw nsw i32 %k.01.i111.i, 1
  %exitcond.not.i118.i = icmp eq i32 %inc.i117.i, 100
  br i1 %exitcond.not.i118.i, label %do.end32.i, label %if.end7.i119.i.for.body.i116.i_crit_edge

if.end7.i119.i.for.body.i116.i_crit_edge:         ; preds = %if.end7.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i116.i

do.end32.i:                                       ; preds = %if.end7.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  br label %do.end99

if.end35.i:                                       ; preds = %for.body.i116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem.i.decomposed)
  %cmp36.i = icmp sgt i32 %rem.i.decomposed, 4
  %add.ptr39.i = getelementptr i8, ptr %52, i32 %i.0.lcssa.i
  br i1 %cmp36.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %debi_virt.i, align 4
  %74 = call ptr @memcpy(ptr %73, ptr %add.ptr39.i, i32 %rem.i.decomposed)
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr42.i = getelementptr i8, ptr %add.ptr39.i, i32 -4
  %add43.i = add nsw i32 %rem.i.decomposed, 4
  %75 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debi_virt.i, align 4
  %77 = call ptr @memcpy(ptr %76, ptr %add.ptr42.i, i32 %add43.i)
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i, %if.then37.i
  %add43.sink.i = phi i32 [ %add43.i, %if.else.i ], [ %rem.i.decomposed, %if.then37.i ]
  %call.i125.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef %bootblock.0.lcssa.i, i32 noundef 0, i32 noundef %add43.sink.i) #10
  %78 = call i32 @llvm.bswap.i32(i32 %base.0.lcssa.i) #10
  %call.i126.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef 17404, i32 noundef %78, i32 noundef 4) #10
  %call.i127.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17402, i32 noundef %rem.i.decomposed, i32 noundef 2) #10
  %call.i128.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 1, i32 noundef 2) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end44.i, %for.end.i.if.end45.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %79 = load i32, ptr @av7110_debug, align 4
  %and.i129.i = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.i)
  %tobool.not.i130.i = icmp eq i32 %and.i129.i, 0
  br i1 %tobool.not.i130.i, label %if.end45.i.for.body.i140.i.preheader_crit_edge, label %do.end.i132.i

if.end45.i.for.body.i140.i.preheader_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i140.i.preheader

do.end.i132.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.99, ptr noundef %av7110) #13
  br label %for.body.i140.i.preheader

for.body.i140.i.preheader:                        ; preds = %do.end.i132.i, %if.end45.i.for.body.i140.i.preheader_crit_edge
  br label %for.body.i140.i

for.body.i140.i:                                  ; preds = %if.end7.i143.i.for.body.i140.i_crit_edge, %for.body.i140.i.preheader
  %k.01.i135.i = phi i32 [ %inc.i141.i, %if.end7.i143.i.for.body.i140.i_crit_edge ], [ 0, %for.body.i140.i.preheader ]
  %call.i.i136.i = call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 2) #10
  %80 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %debi_virt.i, align 4
  %res.i.0.extract.shift.i137.i = lshr i32 %call.i.i136.i, 16
  %res.i.0.extract.trunc.i138.i = trunc i32 %res.i.0.extract.shift.i137.i to i16
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %res.i.0.extract.trunc.i138.i, ptr %81, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136.i)
  %cmp5.i139.i = icmp eq i32 %call.i.i136.i, 0
  br i1 %cmp5.i139.i, label %if.end54.i, label %if.end7.i143.i

if.end7.i143.i:                                   ; preds = %for.body.i140.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 1073740) #10
  %inc.i141.i = add nuw nsw i32 %k.01.i135.i, 1
  %exitcond.not.i142.i = icmp eq i32 %inc.i141.i, 100
  br i1 %exitcond.not.i142.i, label %do.end51.i, label %if.end7.i143.i.for.body.i140.i_crit_edge

if.end7.i143.i.for.body.i140.i_crit_edge:         ; preds = %if.end7.i143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i140.i

do.end51.i:                                       ; preds = %if.end7.i143.i
  call void @__sanitizer_cov_trace_pc() #12
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #13
  br label %do.end99

if.end54.i:                                       ; preds = %for.body.i140.i
  %call.i146.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17402, i32 noundef 0, i32 noundef 2) #10
  %call.i147.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 1, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %84 = load i32, ptr @av7110_debug, align 4
  %and.i148.i = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148.i)
  %tobool.not.i149.i = icmp eq i32 %and.i148.i, 0
  br i1 %tobool.not.i149.i, label %if.end54.i.for.body.i159.i.preheader_crit_edge, label %do.end.i151.i

if.end54.i.for.body.i159.i.preheader_crit_edge:   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i159.i.preheader

do.end.i151.i:                                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.99, ptr noundef %av7110) #13
  br label %for.body.i159.i.preheader

for.body.i159.i.preheader:                        ; preds = %do.end.i151.i, %if.end54.i.for.body.i159.i.preheader_crit_edge
  br label %for.body.i159.i

for.body.i159.i:                                  ; preds = %if.end7.i162.i.for.body.i159.i_crit_edge, %for.body.i159.i.preheader
  %k.01.i154.i = phi i32 [ %inc.i160.i, %if.end7.i162.i.for.body.i159.i_crit_edge ], [ 0, %for.body.i159.i.preheader ]
  %call.i.i155.i = call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 17400, i32 noundef 2) #10
  %85 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %debi_virt.i, align 4
  %res.i.0.extract.shift.i156.i = lshr i32 %call.i.i155.i, 16
  %res.i.0.extract.trunc.i157.i = trunc i32 %res.i.0.extract.shift.i156.i to i16
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %res.i.0.extract.trunc.i157.i, ptr %86, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i155.i)
  %cmp5.i158.i = icmp eq i32 %call.i.i155.i, 2
  br i1 %cmp5.i158.i, label %if.end102, label %if.end7.i162.i

if.end7.i162.i:                                   ; preds = %for.body.i159.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 1073740) #10
  %inc.i160.i = add nuw nsw i32 %k.01.i154.i, 1
  %exitcond.not.i161.i = icmp eq i32 %inc.i160.i, 100
  br i1 %exitcond.not.i161.i, label %do.end60.i, label %if.end7.i162.i.for.body.i159.i_crit_edge

if.end7.i162.i.for.body.i159.i_crit_edge:         ; preds = %if.end7.i162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i159.i

do.end60.i:                                       ; preds = %if.end7.i162.i
  call void @__sanitizer_cov_trace_pc() #12
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #13
  br label %do.end99

do.end99:                                         ; preds = %do.end60.i, %do.end51.i, %do.end32.i, %do.end9.i
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end102:                                        ; preds = %for.body.i159.i
  call void @saa7146_setgpio(ptr noundef %2, i32 noundef 2, i32 noundef 64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %90 = load i32, ptr @av7110_debug, align 4
  %and104 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.do.end114_crit_edge, label %do.end109

if.end102.do.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.15) #13
  br label %do.end114

do.end114:                                        ; preds = %do.end109, %if.end102.do.end114_crit_edge
  %bin_dpram = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 90
  %91 = ptrtoint ptr %bin_dpram to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bin_dpram, align 8
  %size_dpram = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 91
  %93 = ptrtoint ptr %size_dpram to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size_dpram, align 4
  %95 = ptrtoint ptr %debi_virt.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %debi_virt.i, align 4
  %97 = call ptr @memcpy(ptr %96, ptr %92, i32 %94)
  %call.i182 = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef 16384, i32 noundef 0, i32 noundef %94) #10
  %98 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1, align 8
  %call116 = call i32 @saa7146_wait_for_debi_done(ptr noundef %99, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end124, label %do.end121

do.end121:                                        ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end124:                                        ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @saa7146_setgpio(ptr noundef %2, i32 noundef 2, i32 noundef 80) #10
  call void @msleep(i32 noundef 30) #10
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %call2.i183 = call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 24572, i32 noundef 2) #10
  %call6.i = call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 24572, i32 noundef 0, i32 noundef 2) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i183) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1, align 8
  %mem129 = getelementptr inbounds %struct.saa7146_dev, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %mem129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mem129, align 4
  %add.ptr130 = getelementptr i8, ptr %103, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 134219776) #10, !srcloc !262
  %104 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1, align 8
  %int_slock.i184 = getelementptr inbounds %struct.saa7146_dev, ptr %105, i32 0, i32 10
  %call2.i185 = call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i184) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  call void @arm_heavy_mb() #10
  %mem.i186 = getelementptr inbounds %struct.saa7146_dev, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %mem.i186 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mem.i186, align 4
  %add.ptr.i187 = getelementptr i8, ptr %107, i32 220
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  %109 = or i32 %108, 134217728
  %110 = ptrtoint ptr %mem.i186 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem.i186, align 4
  %add.ptr12.i188 = getelementptr i8, ptr %111, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i188, i32 %109) #10, !srcloc !262
  call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i184, i32 noundef %call2.i185) #10
  %arm_errors = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 61
  %112 = ptrtoint ptr %arm_errors to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arm_errors, align 8
  %113 = ptrtoint ptr %arm_ready to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %arm_ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end121, %do.end99, %do.end78, %do.end68, %do.end32
  %retval.0 = phi i32 [ -1, %do.end32 ], [ %call63, %do.end68 ], [ -110, %do.end78 ], [ -1, %do.end99 ], [ -110, %do.end121 ], [ 0, %if.end124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_wait_msgstate(ptr noundef %av7110, i16 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %0 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arm_app, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9757, i32 %and)
  %cmp = icmp ult i32 %and, 9757
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 100
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 22
  %3 = load volatile i32, ptr @jiffies, align 128
  %call27 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not28 = icmp eq i32 %call27, 0
  br i1 %tobool.not28, label %if.end3.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.lr.ph:                                    ; preds = %if.end
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %conv = zext i16 %flags to i32
  br label %if.end3

if.end3:                                          ; preds = %if.end16.if.end3_crit_edge, %if.end3.lr.ph
  %.pn = phi i32 [ %3, %if.end3.lr.ph ], [ %4, %if.end16.if.end3_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16632, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  %and6 = and i32 %call5.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %cmp129.in = sub i32 %add, %.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp129.in)
  %cmp129 = icmp slt i32 %cmp129.in, 0
  br i1 %cmp129, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %and6) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16.if.end3_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.if.end3_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -110, %do.end ], [ -512, %if.end.cleanup_crit_edge ], [ -512, %if.end16.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_fw_cmd(ptr noundef %av7110, i32 noundef %type, i32 noundef %com, i32 noundef %num, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !271
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %add = add i32 %num, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp ugt i32 %add, 8
  %1 = getelementptr inbounds i8, ptr %buf, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %num) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [8 x i16], ptr %buf, i32 0, i32 1
  %shl = shl i32 %type, 8
  %or = or i32 %shl, %com
  %conv = trunc i32 %or to i16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %buf, align 2
  %conv1 = trunc i32 %num to i16
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool.not = icmp eq i32 %num, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp435 = icmp sgt i32 %num, 0
  br i1 %cmp435, label %if.then3.for.body_crit_edge, label %if.then3.for.end_crit_edge

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %7 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.cur, align 4
  %conv6 = trunc i32 %8 to i16
  %add7 = add nuw i32 %i.036, 2
  %arrayidx8 = getelementptr [8 x i16], ptr %buf, i32 0, i32 %add7
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %arrayidx8, align 2
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then3.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end.if.end9_crit_edge
  %call11 = call fastcc i32 @av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef nonnull %buf, i32 noundef %add)
  %10 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %do.end18 [
    i32 0, label %if.end9.cleanup_crit_edge
    i32 -512, label %if.end9.cleanup_crit_edge37
  ]

if.end9.cleanup_crit_edge37:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge37, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge37 ], [ %call11, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @av7110_send_fw_cmd(ptr noundef %av7110, ptr nocapture noundef readonly %buf, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arm_ready = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 68
  %0 = ptrtoint ptr %arm_ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arm_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.100) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 22
  %call7 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @__av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef %buf, i32 noundef %length)
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  %3 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call11, label %do.end17 [
    i32 0, label %if.end10.cleanup_crit_edge
    i32 -512, label %if.end10.cleanup_crit_edge27
  ]

if.end10.cleanup_crit_edge27:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end10.cleanup_crit_edge, %if.end10.cleanup_crit_edge27, %if.end6.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -512, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge27 ], [ %call11, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_fw_request(ptr noundef %av7110, ptr nocapture noundef readonly %request_buf, i32 noundef %request_buf_len, ptr nocapture noundef writeonly %reply_buf, i32 noundef %reply_buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.51, ptr noundef %av7110) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %arm_ready = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 68
  %1 = ptrtoint ptr %arm_ready to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arm_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %do.body6, label %if.end18

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %3 = load i32, ptr @av7110_debug, align 4
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %do.end12

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end18:                                         ; preds = %do.end3
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 22
  %call19 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @__av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef %request_buf, i32 noundef %request_buf_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call23) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %5 = load volatile i32, ptr @jiffies, align 128
  %call2.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i73 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16636, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i73)
  %cmp3474 = icmp eq i32 %call5.i73, 0
  br i1 %cmp3474, label %if.end31.for.cond.preheader_crit_edge, label %if.end36.lr.ph

if.end31.for.cond.preheader_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.end36.lr.ph:                                   ; preds = %if.end31
  %add = add i32 %4, 100
  br label %if.end36

for.cond.preheader:                               ; preds = %if.end45.for.cond.preheader_crit_edge, %if.end31.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reply_buf_len)
  %cmp4675 = icmp sgt i32 %reply_buf_len, 0
  br i1 %cmp4675, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end36:                                         ; preds = %if.end45.if.end36_crit_edge, %if.end36.lr.ph
  %6 = phi i32 [ %5, %if.end36.lr.ph ], [ %7, %if.end45.if.end36_crit_edge ]
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp32 = icmp slt i32 %sub, 0
  br i1 %cmp32, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51) #13
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16636, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  %cmp34 = icmp eq i32 %call5.i, 0
  br i1 %cmp34, label %if.end45.for.cond.preheader_crit_edge, label %if.end45.if.end36_crit_edge

if.end45.if.end36_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end45.for.cond.preheader_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv77 = phi i32 [ %conv, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.076 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl nsw i32 %conv77, 1
  %add49 = add nsw i32 %mul, 16640
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i70 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef %add49, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i69) #10
  %conv51 = trunc i32 %call5.i70 to i16
  %arrayidx = getelementptr i16, ptr %reply_buf, i32 %conv77
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv51, ptr %arrayidx, align 2
  %inc = add i16 %i.076, 1
  %conv = sext i16 %inc to i32
  %cmp46 = icmp slt i32 %conv, %reply_buf_len
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end41, %if.then24, %if.end18.cleanup_crit_edge, %do.end12, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then24 ], [ 0, %for.end ], [ -110, %do.end41 ], [ -1, %do.end12 ], [ -1, %do.body6.cleanup_crit_edge ], [ -512, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__av7110_send_fw_cmd(ptr noundef %av7110, ptr nocapture noundef readonly %buf, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arm_ready = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 68
  %0 = ptrtoint ptr %arm_ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arm_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %4 = load volatile i32, ptr @jiffies, align 128
  %call2.i159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i160 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16636, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i159) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i160)
  %cmp8161 = icmp eq i32 %call5.i160, 0
  br i1 %cmp8161, label %if.end6.while.end_crit_edge, label %if.end10.lr.ph

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end10.lr.ph:                                   ; preds = %if.end6
  %add = add i32 %3, 100
  br label %if.end10

if.end10:                                         ; preds = %if.end18.if.end10_crit_edge, %if.end10.lr.ph
  %5 = phi i32 [ %4, %if.end10.lr.ph ], [ %8, %if.end18.if.end10_crit_edge ]
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104) #13
  %arm_errors = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 61
  %6 = ptrtoint ptr %arm_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arm_errors, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arm_errors, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16636, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  %cmp8 = icmp eq i32 %call5.i, 0
  br i1 %cmp8, label %if.end18.while.end_crit_edge, label %if.end18.if.end10_crit_edge

if.end18.if.end10_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %if.end6.while.end_crit_edge
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %9 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arm_app, align 4
  %and19 = and i32 %10, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 9760, i32 %and19)
  %cmp20 = icmp ult i32 %and19, 9760
  br i1 %cmp20, label %if.then21, label %while.end.if.end22_crit_edge

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i129 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 24570, i32 noundef 65535, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i128) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %while.end.if.end22_crit_edge
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %buf, align 2
  %13 = lshr i16 %12, 8
  %trunc = trunc i16 %13 to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %trunc, label %if.end22.if.end75_crit_edge [
    i8 1, label %if.end22.if.then40_crit_edge
    i8 5, label %if.end22.if.then40_crit_edge172
    i8 9, label %if.end22.if.then40_crit_edge173
    i8 2, label %if.end22.if.then40_crit_edge174
    i8 3, label %sw.bb26
    i8 -128, label %sw.bb29
  ]

if.end22.if.then40_crit_edge174:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end22.if.then40_crit_edge173:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end22.if.then40_crit_edge172:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end22.if.then40_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end22.if.end75_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

sw.bb26:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

sw.bb29:                                          ; preds = %if.end22
  %15 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arm_app, align 4
  %and31 = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9756, i32 %and31)
  %cmp32 = icmp ugt i32 %and31, 9756
  br i1 %cmp32, label %sw.bb29.if.then40_crit_edge, label %sw.bb29.if.end75_crit_edge

sw.bb29.if.end75_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

sw.bb29.if.then40_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %sw.bb29.if.then40_crit_edge, %sw.bb26, %if.end22.if.then40_crit_edge, %if.end22.if.then40_crit_edge172, %if.end22.if.then40_crit_edge173, %if.end22.if.then40_crit_edge174
  %flags.sroa.0.0.ph = phi i32 [ 32, %sw.bb26 ], [ 2, %if.end22.if.then40_crit_edge ], [ 2, %if.end22.if.then40_crit_edge172 ], [ 2, %if.end22.if.then40_crit_edge173 ], [ 2, %if.end22.if.then40_crit_edge174 ], [ 2, %sw.bb29.if.then40_crit_edge ]
  %flags.sroa.7.0.ph = phi i32 [ 16, %sw.bb26 ], [ 1, %if.end22.if.then40_crit_edge ], [ 1, %if.end22.if.then40_crit_edge172 ], [ 1, %if.end22.if.then40_crit_edge173 ], [ 1, %if.end22.if.then40_crit_edge174 ], [ 64, %sw.bb29.if.then40_crit_edge ]
  %type.0.ph = phi ptr [ @.str.109, %sw.bb26 ], [ @.str.108, %if.end22.if.then40_crit_edge ], [ @.str.108, %if.end22.if.then40_crit_edge172 ], [ @.str.108, %if.end22.if.then40_crit_edge173 ], [ @.str.108, %if.end22.if.then40_crit_edge174 ], [ @.str.108, %sw.bb29.if.then40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add41 = add i32 %17, 100
  %18 = load volatile i32, ptr @jiffies, align 128
  %call2.i131166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i132167 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16632, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i131166) #10
  %and49168 = and i32 %call5.i132167, %flags.sroa.0.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49168)
  %tobool50.not169 = icmp eq i32 %and49168, 0
  br i1 %tobool50.not169, label %if.then40.if.end57_crit_edge, label %if.then40.do.end54_crit_edge

if.then40.do.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.then40.if.end57_crit_edge:                     ; preds = %if.then40
  br label %if.end57

do.end54:                                         ; preds = %if.end74.do.end54_crit_edge, %if.then40.do.end54_crit_edge
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.104, ptr noundef nonnull %type.0.ph) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end74.if.end57_crit_edge, %if.then40.if.end57_crit_edge
  %call5.i132171 = phi i32 [ %call5.i132, %if.end74.if.end57_crit_edge ], [ %call5.i132167, %if.then40.if.end57_crit_edge ]
  %.pn = phi i32 [ %21, %if.end74.if.end57_crit_edge ], [ %18, %if.then40.if.end57_crit_edge ]
  %and60 = and i32 %call5.i132171, %flags.sroa.7.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.end57.if.end75_crit_edge, label %if.end64

if.end57.if.end75_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end64:                                         ; preds = %if.end57
  %cmp43170.in = sub i32 %add41, %.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp43170.in)
  %cmp43170 = icmp slt i32 %cmp43170.in, 0
  br i1 %cmp43170, label %do.end69, label %if.end74

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.104, ptr noundef nonnull %type.0.ph) #13
  %arm_errors72 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 61
  %19 = ptrtoint ptr %arm_errors72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arm_errors72, align 8
  %inc73 = add i32 %20, 1
  store i32 %inc73, ptr %arm_errors72, align 8
  br label %cleanup

if.end74:                                         ; preds = %if.end64
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call2.i131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i132 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16632, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i131) #10
  %and49 = and i32 %call5.i132, %flags.sroa.0.0.ph
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end74.if.end57_crit_edge, label %if.end74.do.end54_crit_edge

if.end74.do.end54_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.end74.if.end57_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end75:                                         ; preds = %if.end57.if.end75_crit_edge, %sw.bb29.if.end75_crit_edge, %if.end22.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp77162 = icmp sgt i32 %length, 2
  br i1 %cmp77162, label %if.end75.for.body_crit_edge, label %if.end75.for.end83_crit_edge

if.end75.for.end83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end75.for.body_crit_edge
  %i.0163 = phi i32 [ %inc82, %for.body.for.body_crit_edge ], [ 2, %if.end75.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0163, 1
  %add79 = add i32 %mul, 16636
  %arrayidx80 = getelementptr i16, ptr %buf, i32 %i.0163
  %22 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx80, align 2
  %conv81 = zext i16 %23 to i32
  %call2.i134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i135 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef %add79, i32 noundef %conv81, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i134) #10
  %inc82 = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc82, %length
  br i1 %exitcond.not, label %for.body.for.end83_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end83_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.end83:                                        ; preds = %for.body.for.end83_crit_edge, %if.end75.for.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool84.not = icmp eq i32 %length, 0
  br i1 %tobool84.not, label %for.end83.if.end88_crit_edge, label %if.then85

for.end83.if.end88_crit_edge:                     ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then85:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx86 = getelementptr i16, ptr %buf, i32 1
  %24 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx86, align 2
  %conv87 = zext i16 %25 to i32
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %for.end83.if.end88_crit_edge
  %.sink = phi i32 [ %conv87, %if.then85 ], [ 0, %for.end83.if.end88_crit_edge ]
  %call2.i140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i141 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16638, i32 noundef %.sink, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i140) #10
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %buf, align 2
  %conv90 = zext i16 %27 to i32
  %call2.i143 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i144 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16636, i32 noundef %conv90, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i143) #10
  %28 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arm_app, align 4
  %and92 = and i32 %29, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 9760, i32 %and92)
  %cmp93 = icmp ult i32 %and92, 9760
  br i1 %cmp93, label %if.then95, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then95:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i146 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i147 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef 24570, i32 noundef 0, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i146) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end88.cleanup_crit_edge, %do.end69, %do.end54, %do.end15, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end54 ], [ -110, %do.end69 ], [ -110, %do.end15 ], [ -6, %do.end ], [ -6, %do.body.cleanup_crit_edge ], [ 0, %if.then95 ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_firmversion(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  %tag.addr.i = alloca i16, align 2
  %buf = alloca [20 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #10
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %1 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.61, ptr noundef %av7110) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tag.addr.i)
  %2 = ptrtoint ptr %tag.addr.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1798, ptr %tag.addr.i, align 2
  %call.i = call i32 @av7110_fw_request(ptr noundef %av7110, ptr noundef nonnull %tag.addr.i, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %call.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tag.addr.i)
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %3 = ptrtoint ptr %dvb_adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dvb_adapter, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %4) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tag.addr.i)
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %buf, align 2
  %conv = zext i16 %6 to i32
  %shl = shl nuw i32 %conv, 16
  %arrayidx13 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %8 to i32
  %add = or i32 %shl, %conv14
  %arm_fw = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 63
  %9 = ptrtoint ptr %arm_fw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %arm_fw, align 8
  %arrayidx15 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %11 to i32
  %shl17 = shl nuw i32 %conv16, 16
  %arrayidx18 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx18, align 2
  %conv19 = zext i16 %13 to i32
  %add20 = or i32 %shl17, %conv19
  %arm_rtsl = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 64
  %14 = ptrtoint ptr %arm_rtsl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add20, ptr %arm_rtsl, align 4
  %arrayidx21 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %16 to i32
  %shl23 = shl nuw i32 %conv22, 16
  %arrayidx24 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %18 to i32
  %add26 = or i32 %shl23, %conv25
  %arm_vid = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 65
  %19 = ptrtoint ptr %arm_vid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add26, ptr %arm_vid, align 8
  %arrayidx27 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %21 to i32
  %shl29 = shl nuw i32 %conv28, 16
  %arrayidx30 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %23 to i32
  %add32 = or i32 %shl29, %conv31
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %24 = ptrtoint ptr %arm_app to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add32, ptr %arm_app, align 4
  %arrayidx33 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 8
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %26 to i32
  %shl35 = shl nuw i32 %conv34, 16
  %arrayidx36 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %28 to i32
  %add38 = or i32 %shl35, %conv37
  %avtype = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 67
  %29 = ptrtoint ptr %avtype to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add38, ptr %avtype, align 8
  %dvb_adapter43 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %30 = ptrtoint ptr %dvb_adapter43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dvb_adapter43, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %31, i32 noundef %add, i32 noundef %add20, i32 noundef %add26, i32 noundef %add32) #13
  %32 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arm_app, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool52.not = icmp sgt i32 %33, -1
  %34 = ptrtoint ptr %dvb_adapter43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dvb_adapter43, align 4
  br i1 %tobool52.not, label %do.end63, label %do.end56

do.end56:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %35) #13
  br label %cleanup

do.end63:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %35) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.end56, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ 0, %do.end63 ], [ 0, %do.end56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_diseqc_send(ptr noundef %av7110, i32 noundef %len, ptr nocapture noundef readonly %msg, i32 noundef %burst) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #10
  %0 = getelementptr inbounds i8, ptr %buf, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1542, ptr %buf, align 2
  %3 = getelementptr inbounds <{ i16, i16, [16 x i16] }>, ptr %buf, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.74, ptr noundef %av7110) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = tail call i32 @llvm.smin.i32(i32 %len, i32 10)
  %6 = trunc i32 %5 to i16
  %conv = add i16 %6, 2
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %3, align 2
  %arrayidx7 = getelementptr inbounds [18 x i16], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %burst)
  %cmp8.not = icmp eq i32 %burst, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %tobool11.not = icmp ne i32 %burst, 0
  %conv12 = zext i1 %tobool11.not to i16
  %conv12.sink = select i1 %cmp8.not, i16 -1, i16 %conv12
  %9 = getelementptr inbounds [18 x i16], ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12.sink, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1644 = icmp sgt i32 %len, 0
  br i1 %cmp1644, label %for.body.preheader, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %do.end3
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx18 = getelementptr i8, ptr %msg, i32 %i.045
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %12 to i16
  %add20 = add nuw nsw i32 %i.045, 4
  %arrayidx21 = getelementptr [18 x i16], ptr %buf, i32 0, i32 %add20
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv19, ptr %arrayidx21, align 2
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end3.for.end_crit_edge
  %call22 = call fastcc i32 @av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef nonnull %buf, i32 noundef 18)
  %14 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call22, label %do.end29 [
    i32 0, label %for.end.if.end32_crit_edge
    i32 -512, label %for.end.if.end32_crit_edge46
  ]

for.end.if.end32_crit_edge46:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %call22) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %for.end.if.end32_crit_edge, %for.end.if.end32_crit_edge46
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #10
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_osd_cmd(ptr noundef %av7110, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %buf.i.i.i = alloca [8 x i16], align 2
  %textbuf = alloca [240 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_mutex = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 29
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %osd_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup388_crit_edge

entry.cleanup388_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup388

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dc, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %1, label %if.end.sw.epilog.thread_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb36
    i32 4, label %sw.bb40
    i32 5, label %sw.bb44
    i32 6, label %sw.bb48
    i32 7, label %sw.bb54
    i32 8, label %sw.bb66
    i32 10, label %sw.bb151
    i32 12, label %sw.bb161
    i32 13, label %if.end.sw.bb164_crit_edge
    i32 14, label %sw.bb172
    i32 15, label %sw.bb189
    i32 16, label %sw.bb209
    i32 19, label %sw.bb227
    i32 20, label %sw.bb266
    i32 21, label %sw.bb279
    i32 22, label %sw.bb293
  ]

if.end.sw.bb164_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb164

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %3 = ptrtoint ptr %osdwin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %osdwin, align 4
  %conv.i = and i32 %4, 255
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef %conv.i) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %color = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %5 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %color, align 4
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 7
  %conv3 = and i16 %8, 7
  %osdwin4 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %9 = ptrtoint ptr %osdwin4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %osdwin4, align 4
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3, ptr %arrayidx, align 2
  %12 = load i32, ptr %osdwin4, align 4
  %arrayidx9 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %12
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx9, align 2
  %idxprom = zext i16 %14 to i32
  %arrayidx10 = getelementptr [8 x i32], ptr @bpp2bit, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %x1 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %17 = ptrtoint ptr %x1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %x1, align 4
  %x0 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %19 = ptrtoint ptr %x0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x0, align 4
  %sub11 = add i32 %18, 1
  %conv12 = sub i32 %sub11, %20
  %y1 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %21 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y1, align 4
  %y0 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %23 = ptrtoint ptr %y0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y0, align 4
  %sub13 = add i32 %22, 1
  %conv15 = sub i32 %sub13, %24
  %conv.i557 = and i32 %12, 255
  %conv1.i = and i32 %conv12, 65535
  %conv2.i = and i32 %conv15, 65535
  %call.i558 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef %conv.i557, i32 noundef %16, i32 noundef %conv1.i, i32 noundef %conv2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i558)
  %tobool17.not = icmp eq i32 %call.i558, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb2
  %data = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.then21, label %if.end19.sw.epilog.thread605_crit_edge

if.end19.sw.epilog.thread605_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread605

if.then21:                                        ; preds = %if.end19
  %27 = ptrtoint ptr %osdwin4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %osdwin4, align 4
  %29 = ptrtoint ptr %x0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x0, align 4
  %31 = ptrtoint ptr %y0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y0, align 4
  %conv.i559 = and i32 %28, 255
  %conv1.i560 = and i32 %30, 65535
  %conv2.i561 = and i32 %32, 65535
  %call.i562 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 3, i32 noundef 3, i32 noundef %conv.i559, i32 noundef %conv1.i560, i32 noundef %conv2.i561) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i562)
  %tobool29.not = icmp eq i32 %call.i562, 0
  br i1 %tobool29.not, label %if.end31, label %if.then21.sw.epilog_crit_edge

if.then21.sw.epilog_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %osdwin4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %osdwin4, align 4
  %conv.i563 = and i32 %34, 255
  %call.i564 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 13, i32 noundef 1, i32 noundef %conv.i563) #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin37 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %35 = ptrtoint ptr %osdwin37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %osdwin37, align 4
  %conv.i565 = and i32 %36, 255
  %call.i566 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 2, i32 noundef 3, i32 noundef %conv.i565, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin41 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %37 = ptrtoint ptr %osdwin41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %osdwin41, align 4
  %conv.i567 = and i32 %38, 255
  %call.i568 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 4, i32 noundef 1, i32 noundef %conv.i567) #10
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin45 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %39 = ptrtoint ptr %osdwin45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %osdwin45, align 4
  %conv.i569 = and i32 %40, 255
  %call.i570 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 6, i32 noundef 6, i32 noundef %conv.i569, i32 noundef 0, i32 noundef 0, i32 noundef 720, i32 noundef 576, i32 noundef 0) #10
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin49 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %41 = ptrtoint ptr %osdwin49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %osdwin49, align 4
  %color51 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %43 = ptrtoint ptr %color51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %color51, align 4
  %conv.i571 = and i32 %42, 255
  %conv5.i = and i32 %44, 65535
  %call.i572 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 6, i32 noundef 6, i32 noundef %conv.i571, i32 noundef 0, i32 noundef 0, i32 noundef 720, i32 noundef 576, i32 noundef %conv5.i) #10
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %color55 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %45 = ptrtoint ptr %color55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %color55, align 4
  %conv56 = trunc i32 %46 to i8
  %x057 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %47 = ptrtoint ptr %x057 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %x057, align 4
  %conv58 = trunc i32 %48 to i8
  %y059 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %49 = ptrtoint ptr %y059 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %y059, align 4
  %conv60 = trunc i32 %50 to i8
  %x161 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %51 = ptrtoint ptr %x161 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %x161, align 4
  %conv62 = trunc i32 %52 to i8
  %y163 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %53 = ptrtoint ptr %y163 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %y163, align 4
  %conv64 = trunc i32 %54 to i8
  %call65 = tail call fastcc i32 @OSDSetColor(ptr noundef %av7110, i8 noundef zeroext %conv56, i8 noundef zeroext %conv58, i8 noundef zeroext %conv60, i8 noundef zeroext %conv62, i8 noundef zeroext %conv64)
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %55 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arm_app, align 4
  %and67 = and i32 %56, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 9751, i32 %and67)
  %cmp = icmp ugt i32 %and67, 9751
  br i1 %cmp, label %if.then69, label %if.else

if.then69:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #12
  %data70 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %57 = ptrtoint ptr %data70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data70, align 4
  %color71 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %59 = ptrtoint ptr %color71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %color71, align 4
  %conv72 = trunc i32 %60 to i8
  %x073 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %61 = ptrtoint ptr %x073 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %x073, align 4
  %conv74 = trunc i32 %62 to i8
  %call75 = tail call fastcc i32 @OSDSetPalette(ptr noundef %av7110, ptr noundef %58, i8 noundef zeroext %conv72, i8 noundef zeroext %conv74)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb66
  %x076 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %63 = ptrtoint ptr %x076 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %x076, align 4
  %color77 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %65 = ptrtoint ptr %color77 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %color77, align 4
  %sub78 = add i32 %64, 1
  %add79 = sub i32 %sub78, %66
  %data80 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %67 = ptrtoint ptr %data80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add79)
  %cmp81611 = icmp sgt i32 %add79, 0
  br i1 %cmp81611, label %if.else.for.body_crit_edge, label %if.else.sw.epilog.thread605_crit_edge

if.else.sw.epilog.thread605_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread605

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

for.cond:                                         ; preds = %if.end142
  %inc = add nuw nsw i32 %i.0612, 1
  %exitcond.not = icmp eq i32 %inc, %add79
  br i1 %exitcond.not, label %for.cond.sw.epilog.thread605_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.sw.epilog.thread605_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread605

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0612 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1091) #10
  %mul = shl i32 %i.0612, 2
  %add.ptr = getelementptr i8, ptr %68, i32 %mul
  %69 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !281
  %and.i = and i32 %71, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %72 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #10, !srcloc !284
  %asmresult = extractvalue { i32, i32 } %72, 0
  %asmresult84 = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %conv85 = trunc i32 %asmresult84 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool87.not = icmp eq i32 %asmresult, 0
  br i1 %tobool87.not, label %lor.lhs.false, label %for.body.sw.epilog.thread_crit_edge

for.body.sw.epilog.thread_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

lor.lhs.false:                                    ; preds = %for.body
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1092) #10
  %add.ptr93 = getelementptr i8, ptr %add.ptr, i32 1
  %73 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i545 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i545 to ptr
  %cpu_domain.i.i546 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i546) #8, !srcloc !281
  %and.i547 = and i32 %75, -13
  %or.i548 = or i32 %and.i547, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i548) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %76 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr93, i32 -1226833921) #10, !srcloc !285
  %asmresult100 = extractvalue { i32, i32 } %76, 0
  %asmresult101 = extractvalue { i32, i32 } %76, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %conv102 = trunc i32 %asmresult101 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult100)
  %tobool104.not = icmp eq i32 %asmresult100, 0
  br i1 %tobool104.not, label %lor.lhs.false105, label %lor.lhs.false.sw.epilog.thread_crit_edge

lor.lhs.false.sw.epilog.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

lor.lhs.false105:                                 ; preds = %lor.lhs.false
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1093) #10
  %add.ptr111 = getelementptr i8, ptr %add.ptr, i32 2
  %77 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i549 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i549 to ptr
  %cpu_domain.i.i550 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i550) #8, !srcloc !281
  %and.i551 = and i32 %79, -13
  %or.i552 = or i32 %and.i551, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i552) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %80 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr111, i32 -1226833921) #10, !srcloc !286
  %asmresult118 = extractvalue { i32, i32 } %80, 0
  %asmresult119 = extractvalue { i32, i32 } %80, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %conv120 = trunc i32 %asmresult119 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult118)
  %tobool122.not = icmp eq i32 %asmresult118, 0
  br i1 %tobool122.not, label %lor.lhs.false123, label %lor.lhs.false105.sw.epilog.thread_crit_edge

lor.lhs.false105.sw.epilog.thread_crit_edge:      ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

lor.lhs.false123:                                 ; preds = %lor.lhs.false105
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1094) #10
  %add.ptr129 = getelementptr i8, ptr %add.ptr, i32 3
  %81 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i553 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i553 to ptr
  %cpu_domain.i.i554 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 4
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i554) #8, !srcloc !281
  %and.i555 = and i32 %83, -13
  %or.i556 = or i32 %and.i555, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i556) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %84 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr129, i32 -1226833921) #10, !srcloc !287
  %asmresult136 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult136)
  %tobool140.not = icmp eq i32 %asmresult136, 0
  br i1 %tobool140.not, label %if.end142, label %lor.lhs.false123.sw.epilog.thread_crit_edge

lor.lhs.false123.sw.epilog.thread_crit_edge:      ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end142:                                        ; preds = %lor.lhs.false123
  %asmresult137 = extractvalue { i32, i32 } %84, 1
  %conv138 = trunc i32 %asmresult137 to i8
  %85 = ptrtoint ptr %color77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %color77, align 4
  %add144 = add i32 %86, %i.0612
  %conv145 = trunc i32 %add144 to i8
  %call146 = tail call fastcc i32 @OSDSetColor(ptr noundef %av7110, i8 noundef zeroext %conv145, i8 noundef zeroext %conv85, i8 noundef zeroext %conv102, i8 noundef zeroext %conv120, i8 noundef zeroext %conv138)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.cond, label %if.end142.sw.epilog_crit_edge

if.end142.sw.epilog_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb151:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin152 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %87 = ptrtoint ptr %osdwin152 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %osdwin152, align 4
  %x0154 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %89 = ptrtoint ptr %x0154 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %x0154, align 4
  %y0156 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %91 = ptrtoint ptr %y0156 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %y0156, align 4
  %color158 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %93 = ptrtoint ptr %color158 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %color158, align 4
  %conv.i573 = and i32 %88, 255
  %conv1.i574 = and i32 %90, 65535
  %conv2.i575 = and i32 %92, 65535
  %conv5.i576 = and i32 %94, 65535
  %call.i577 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 7, i32 noundef 6, i32 noundef %conv.i573, i32 noundef %conv1.i574, i32 noundef %conv2.i575, i32 noundef 0, i32 noundef 0, i32 noundef %conv5.i576) #10
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %y0162 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %95 = ptrtoint ptr %y0162 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %y0162, align 4
  %y1163 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %97 = ptrtoint ptr %y1163 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %y1163, align 4
  br label %sw.bb164

sw.bb164:                                         ; preds = %sw.bb161, %if.end.sw.bb164_crit_edge
  %x0165 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %98 = ptrtoint ptr %x0165 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %x0165, align 4
  %y0166 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %100 = ptrtoint ptr %y0166 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %y0166, align 4
  %x1167 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %102 = ptrtoint ptr %x1167 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %x1167, align 4
  %y1168 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %104 = ptrtoint ptr %y1168 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %y1168, align 4
  %color169 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %106 = ptrtoint ptr %color169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %color169, align 4
  %data170 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %108 = ptrtoint ptr %data170 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data170, align 4
  %sub.i = sub i32 %103, %99
  %add.i = add i32 %sub.i, 1
  %sub1.i = sub i32 %105, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i = icmp slt i32 %107, 1
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 719, i32 %sub.i)
  %110 = icmp ugt i32 %sub.i, 719
  call void @__sanitizer_cov_trace_const_cmp4(i32 575, i32 %sub1.i)
  %111 = icmp ugt i32 %sub1.i, 575
  %112 = or i1 %110, %111
  br i1 %112, label %sw.bb164.sw.epilog.thread_crit_edge, label %if.end10.i

sw.bb164.sw.epilog.thread_crit_edge:              ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end10.i:                                       ; preds = %sw.bb164
  %add2.i = add nuw nsw i32 %sub1.i, 1
  %osdwin.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %113 = ptrtoint ptr %osdwin.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %osdwin.i, align 4
  %arrayidx.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %114
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.i, align 2
  %conv.i578 = zext i16 %116 to i32
  %add11.i = add nuw nsw i32 %conv.i578, 1
  %mul.i = mul nuw nsw i32 %add11.i, %add.i
  %add12.i = add nuw nsw i32 %mul.i, 7
  %div150.i = lshr i32 %add12.i, 3
  %mul13.i = mul nuw i32 %div150.i, %add2.i
  %div14.i = udiv i32 32768, %div150.i
  %mul15.i = mul i32 %div150.i, %div14.i
  %div16.i = udiv i32 %mul13.i, %mul15.i
  %mul17.i = mul i32 %div16.i, %div14.i
  %mul18.i = mul i32 %div150.i, %mul17.i
  %sub19.i = sub i32 %mul13.i, %mul18.i
  %bmp_state.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 19
  %117 = ptrtoint ptr %bmp_state.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %bmp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp20.i = icmp eq i32 %118, 1
  br i1 %cmp20.i, label %do.body.i, label %if.end10.i.if.end38.i_crit_edge

if.end10.i.if.end38.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

do.body.i:                                        ; preds = %if.end10.i
  %arm_app.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %119 = ptrtoint ptr %arm_app.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arm_app.i, align 4
  %and23.i = and i32 %120, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 9757, i32 %and23.i)
  %cmp24.i = icmp ugt i32 %and23.i, 9757
  br i1 %cmp24.i, label %do.body28.i, label %do.end34.i, !prof !288

do.body28.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/media/av7110/av7110_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1010, 0\0A.popsection", ""() #10, !srcloc !289
  unreachable

do.end34.i:                                       ; preds = %do.body.i
  %call.i579 = tail call fastcc i32 @WaitUntilBmpLoaded(ptr noundef %av7110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i579)
  %tobool35.not.i = icmp eq i32 %call.i579, 0
  br i1 %tobool35.not.i, label %do.end34.i.if.end38.i_crit_edge, label %do.end34.i.sw.epilog_crit_edge

do.end34.i.sw.epilog_crit_edge:                   ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end34.i.if.end38.i_crit_edge:                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end34.i.if.end38.i_crit_edge, %if.end10.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul15.i, i32 %mul13.i)
  %cmp39170.not.i = icmp ugt i32 %mul15.i, %mul13.i
  br i1 %cmp39170.not.i, label %if.end38.i.land.lhs.true.i_crit_edge, label %for.body.lr.ph.i

if.end38.i.land.lhs.true.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.body.lr.ph.i:                                 ; preds = %if.end38.i
  %conv41.i = trunc i32 %add.i to i16
  %conv42.i = trunc i32 %div14.i to i16
  %conv.i.i = and i32 %99, 65535
  %mul55.i = mul i32 %div14.i, %spec.select.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div16.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end54.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0172.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc56.i, %if.end54.i.for.body.i_crit_edge ]
  %data.addr.0171.i = phi ptr [ %109, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end54.i.for.body.i_crit_edge ]
  %call43.i = tail call fastcc i32 @LoadBitmap(ptr noundef %av7110, i16 noundef zeroext %conv41.i, i16 noundef zeroext %conv42.i, i32 noundef %spec.select.i, ptr noundef %data.addr.0171.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %for.body.i.if.end72.i_crit_edge

for.body.i.if.end72.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.end46.i:                                       ; preds = %for.body.i
  %mul48.i = mul i32 %i.0172.i, %div14.i
  %add49.i = add i32 %mul48.i, %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %121 = load i32, ptr @av7110_debug, align 4
  %and.i.i = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end46.i.BlitBitmap.exit.i_crit_edge, label %do.end.i.i

if.end46.i.BlitBitmap.exit.i_crit_edge:           ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %BlitBitmap.exit.i

do.end.i.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.129, ptr noundef %av7110) #13
  br label %BlitBitmap.exit.i

BlitBitmap.exit.i:                                ; preds = %do.end.i.i, %if.end46.i.BlitBitmap.exit.i_crit_edge
  %122 = ptrtoint ptr %osdwin.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %osdwin.i, align 4
  %conv3.i.i = and i32 %add49.i, 65535
  %call4.i.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 16, i32 noundef 4, i32 noundef %123, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool52.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %BlitBitmap.exit.i.if.end72.i_crit_edge

BlitBitmap.exit.i.if.end72.i_crit_edge:           ; preds = %BlitBitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.end54.i:                                       ; preds = %BlitBitmap.exit.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.0171.i, i32 %mul55.i
  %inc56.i = add nuw i32 %i.0172.i, 1
  %exitcond.not.i = icmp eq i32 %inc56.i, %umax.i
  br i1 %exitcond.not.i, label %if.end54.i.land.lhs.true.i_crit_edge, label %if.end54.i.for.body.i_crit_edge

if.end54.i.for.body.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end54.i.land.lhs.true.i_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end54.i.land.lhs.true.i_crit_edge, %if.end38.i.land.lhs.true.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %109, %if.end38.i.land.lhs.true.i_crit_edge ], [ %add.ptr.i, %if.end54.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i, i32 %mul18.i)
  %tobool58.not.i = icmp eq i32 %mul13.i, %mul18.i
  br i1 %tobool58.not.i, label %land.lhs.true.i.if.end72.i_crit_edge, label %if.then59.i

land.lhs.true.i.if.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  %conv60.i = trunc i32 %add.i to i16
  %div61.i = udiv i32 %sub19.i, %div150.i
  %conv62.i = trunc i32 %div61.i to i16
  %call63.i = tail call fastcc i32 @LoadBitmap(ptr noundef %av7110, i16 noundef zeroext %conv60.i, i16 noundef zeroext %conv62.i, i32 noundef %spec.select.i, ptr noundef %data.addr.0.lcssa.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.then59.i.if.end72.i_crit_edge

if.then59.i.if.end72.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then65.i:                                      ; preds = %if.then59.i
  %add68.i = add i32 %mul17.i, %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %124 = load i32, ptr @av7110_debug, align 4
  %and.i154.i = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154.i)
  %tobool.not.i155.i = icmp eq i32 %and.i154.i, 0
  br i1 %tobool.not.i155.i, label %if.then65.i.BlitBitmap.exit162.i_crit_edge, label %do.end.i157.i

if.then65.i.BlitBitmap.exit162.i_crit_edge:       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %BlitBitmap.exit162.i

do.end.i157.i:                                    ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i156.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.129, ptr noundef %av7110) #13
  br label %BlitBitmap.exit162.i

BlitBitmap.exit162.i:                             ; preds = %do.end.i157.i, %if.then65.i.BlitBitmap.exit162.i_crit_edge
  %125 = ptrtoint ptr %osdwin.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %osdwin.i, align 4
  %conv.i159.i = and i32 %99, 65535
  %conv3.i160.i = and i32 %add68.i, 65535
  %call4.i161.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 16, i32 noundef 4, i32 noundef %126, i32 noundef %conv.i159.i, i32 noundef %conv3.i160.i, i32 noundef 0) #10
  br label %if.end72.i

if.end72.i:                                       ; preds = %BlitBitmap.exit162.i, %if.then59.i.if.end72.i_crit_edge, %land.lhs.true.i.if.end72.i_crit_edge, %BlitBitmap.exit.i.if.end72.i_crit_edge, %for.body.i.if.end72.i_crit_edge
  %rc.2.i = phi i32 [ %call63.i, %if.then59.i.if.end72.i_crit_edge ], [ %call4.i161.i, %BlitBitmap.exit162.i ], [ 0, %land.lhs.true.i.if.end72.i_crit_edge ], [ %call4.i.i, %BlitBitmap.exit.i.if.end72.i_crit_edge ], [ %call43.i, %for.body.i.if.end72.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %127 = load i32, ptr @av7110_debug, align 4
  %and.i163.i = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163.i)
  %tobool.not.i164.i = icmp eq i32 %and.i163.i, 0
  br i1 %tobool.not.i164.i, label %if.end72.i.do.end2.i.i_crit_edge, label %do.end.i166.i

if.end72.i.do.end2.i.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i.i

do.end.i166.i:                                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i165.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.130, ptr noundef %av7110) #13
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i166.i, %if.end72.i.do.end2.i.i_crit_edge
  %128 = ptrtoint ptr %bmp_state.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %bmp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp.not.i.i = icmp eq i32 %129, 2
  br i1 %cmp.not.i.i, label %do.end2.i.i.if.end6.i.i_crit_edge, label %land.lhs.true.i.i

do.end2.i.i.if.end6.i.i_crit_edge:                ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %do.end2.i.i
  %arm_app.i.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %130 = ptrtoint ptr %arm_app.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arm_app.i.i, align 4
  %and3.i.i = and i32 %131, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 9758, i32 %and3.i.i)
  %cmp4.i.i = icmp ult i32 %and3.i.i, 9758
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.ReleaseBitmap.exit.i_crit_edge, label %land.lhs.true.i.i.if.end6.i.i_crit_edge

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

land.lhs.true.i.i.ReleaseBitmap.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ReleaseBitmap.exit.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i.if.end6.i.i_crit_edge, %do.end2.i.i.if.end6.i.i_crit_edge
  %132 = ptrtoint ptr %bmp_state.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %bmp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp8.i.i = icmp eq i32 %133, 1
  br i1 %cmp8.i.i, label %do.body10.i.i, label %if.end6.i.i.if.end20.i.i_crit_edge

if.end6.i.i.if.end20.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

do.body10.i.i:                                    ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %134 = load i32, ptr @av7110_debug, align 4
  %and11.i.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body10.i.i.if.end20.i.i_crit_edge, label %do.end15.i.i

do.body10.i.i.if.end20.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

do.end15.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130) #13
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end15.i.i, %do.body10.i.i.if.end20.i.i_crit_edge, %if.end6.i.i.if.end20.i.i_crit_edge
  %135 = ptrtoint ptr %bmp_state.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 0, ptr %bmp_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i.i) #10
  %136 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 4
  %137 = call ptr @memset(ptr %136, i32 255, i32 12)
  %138 = getelementptr inbounds [8 x i16], ptr %buf.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 785, ptr %buf.i.i.i, align 2
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %138, align 2
  %call11.i.i.i = call fastcc i32 @av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef nonnull %buf.i.i.i, i32 noundef 2) #10
  %141 = zext i32 %call11.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call11.i.i.i, label %do.end18.i.i.i [
    i32 0, label %if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge
    i32 -512, label %if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge619
  ]

if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge619: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %av7110_fw_cmd.exit.i.i

if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge:    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %av7110_fw_cmd.exit.i.i

do.end18.i.i.i:                                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call11.i.i.i) #13
  br label %av7110_fw_cmd.exit.i.i

av7110_fw_cmd.exit.i.i:                           ; preds = %do.end18.i.i.i, %if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge, %if.end20.i.i.av7110_fw_cmd.exit.i.i_crit_edge619
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i.i) #10
  br label %ReleaseBitmap.exit.i

ReleaseBitmap.exit.i:                             ; preds = %av7110_fw_cmd.exit.i.i, %land.lhs.true.i.i.ReleaseBitmap.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call11.i.i.i, %av7110_fw_cmd.exit.i.i ], [ -1, %land.lhs.true.i.i.ReleaseBitmap.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool74.not.i = icmp eq i32 %rc.2.i, 0
  %spec.select153.i = select i1 %tobool74.not.i, i32 %retval.0.i.i, i32 %rc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select153.i)
  %tobool77.not.i = icmp eq i32 %spec.select153.i, 0
  br i1 %tobool77.not.i, label %ReleaseBitmap.exit.i.sw.epilog.thread605_crit_edge, label %do.body79.i

ReleaseBitmap.exit.i.sw.epilog.thread605_crit_edge: ; preds = %ReleaseBitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread605

do.body79.i:                                      ; preds = %ReleaseBitmap.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %142 = load i32, ptr @av7110_debug, align 4
  %and80.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %do.body79.i.sw.epilog_crit_edge, label %do.end85.i

do.body79.i.sw.epilog_crit_edge:                  ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end85.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #12
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef %spec.select153.i) #13
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin173 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %143 = ptrtoint ptr %osdwin173 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %osdwin173, align 4
  %conv174 = trunc i32 %144 to i8
  %x0175 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %145 = ptrtoint ptr %x0175 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %x0175, align 4
  %conv176 = trunc i32 %146 to i16
  %y0177 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %147 = ptrtoint ptr %y0177 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %y0177, align 4
  %conv178 = trunc i32 %148 to i16
  %x1179 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %149 = ptrtoint ptr %x1179 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %x1179, align 4
  %sub181 = sub i32 %150, %146
  %151 = trunc i32 %sub181 to i16
  %conv183 = add i16 %151, 1
  %y1184 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %152 = ptrtoint ptr %y1184 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %y1184, align 4
  %conv185 = trunc i32 %153 to i16
  %color186 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %154 = ptrtoint ptr %color186 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %color186, align 4
  %conv187 = trunc i32 %155 to i16
  %call188 = tail call fastcc i32 @DrawBlock(ptr noundef %av7110, i8 noundef zeroext %conv174, i16 noundef zeroext %conv176, i16 noundef zeroext %conv178, i16 noundef zeroext %conv183, i16 noundef zeroext %conv185, i16 noundef zeroext %conv187)
  br label %sw.epilog

sw.bb189:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin190 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %156 = ptrtoint ptr %osdwin190 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %osdwin190, align 4
  %conv191 = trunc i32 %157 to i8
  %x0192 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %158 = ptrtoint ptr %x0192 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %x0192, align 4
  %conv193 = trunc i32 %159 to i16
  %y0194 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %160 = ptrtoint ptr %y0194 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %y0194, align 4
  %conv195 = trunc i32 %161 to i16
  %x1196 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %162 = ptrtoint ptr %x1196 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %x1196, align 4
  %sub198 = sub i32 %163, %159
  %164 = trunc i32 %sub198 to i16
  %conv200 = add i16 %164, 1
  %y1201 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %165 = ptrtoint ptr %y1201 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %y1201, align 4
  %sub203 = sub i32 %166, %161
  %167 = trunc i32 %sub203 to i16
  %conv205 = add i16 %167, 1
  %color206 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %168 = ptrtoint ptr %color206 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %color206, align 4
  %conv207 = trunc i32 %169 to i16
  %call208 = tail call fastcc i32 @DrawBlock(ptr noundef %av7110, i8 noundef zeroext %conv191, i16 noundef zeroext %conv193, i16 noundef zeroext %conv195, i16 noundef zeroext %conv200, i16 noundef zeroext %conv205, i16 noundef zeroext %conv207)
  br label %sw.epilog

sw.bb209:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin210 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %170 = ptrtoint ptr %osdwin210 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %osdwin210, align 4
  %conv211 = trunc i32 %171 to i8
  %x0212 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %172 = ptrtoint ptr %x0212 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %x0212, align 4
  %conv213 = trunc i32 %173 to i16
  %y0214 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %174 = ptrtoint ptr %y0214 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %y0214, align 4
  %conv215 = trunc i32 %175 to i16
  %x1216 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %176 = ptrtoint ptr %x1216 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %x1216, align 4
  %sub218 = sub i32 %177, %173
  %conv219 = trunc i32 %sub218 to i16
  %y1220 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %178 = ptrtoint ptr %y1220 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %y1220, align 4
  %sub222 = sub i32 %179, %175
  %conv223 = trunc i32 %sub222 to i16
  %color224 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %180 = ptrtoint ptr %color224 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %color224, align 4
  %conv225 = trunc i32 %181 to i16
  %call226 = tail call fastcc i32 @DrawLine(ptr noundef %av7110, i8 noundef zeroext %conv211, i16 noundef zeroext %conv213, i16 noundef zeroext %conv215, i16 noundef zeroext %conv219, i16 noundef zeroext %conv223, i16 noundef zeroext %conv225)
  br label %sw.epilog

sw.bb227:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %textbuf) #10
  %182 = call ptr @memset(ptr %textbuf, i32 255, i32 240)
  %data228 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %183 = ptrtoint ptr %data228 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data228, align 4
  %call229 = call i32 @strncpy_from_user(ptr noundef nonnull %textbuf, ptr noundef %184, i32 noundef 240) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %sw.bb227.cleanup_crit_edge, label %if.end233

sw.bb227.cleanup_crit_edge:                       ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end233:                                        ; preds = %sw.bb227
  %arrayidx234 = getelementptr inbounds [240 x i8], ptr %textbuf, i32 0, i32 239
  %185 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %arrayidx234, align 1
  %x1235 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %186 = ptrtoint ptr %x1235 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %x1235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %187)
  %cmp236 = icmp sgt i32 %187, 3
  br i1 %cmp236, label %if.then238, label %if.end233.if.end240_crit_edge

if.end233.if.end240_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %x1235 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 3, ptr %x1235, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end233.if.end240_crit_edge
  %osdwin241 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %189 = ptrtoint ptr %osdwin241 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %osdwin241, align 4
  %191 = ptrtoint ptr %x1235 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %x1235, align 4
  %color245 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %193 = ptrtoint ptr %color245 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %color245, align 4
  %195 = lshr i32 %194, 16
  %conv.i580 = and i32 %190, 255
  %conv1.i581 = and i32 %192, 255
  %conv2.i582 = and i32 %194, 65535
  %call.i583 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 9, i32 noundef 4, i32 noundef %conv.i580, i32 noundef %conv1.i581, i32 noundef %conv2.i582, i32 noundef %195) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i583)
  %tobool251.not = icmp eq i32 %call.i583, 0
  br i1 %tobool251.not, label %if.end254, label %if.end240.cleanup_crit_edge

if.end240.cleanup_crit_edge:                      ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end254:                                        ; preds = %if.end240
  %call253 = call fastcc i32 @FlushText(ptr noundef %av7110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool255.not = icmp eq i32 %call253, 0
  br i1 %tobool255.not, label %if.then256, label %if.end254.cleanup_crit_edge

if.end254.cleanup_crit_edge:                      ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then256:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %osdwin241 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %osdwin241, align 4
  %conv258 = trunc i32 %197 to i8
  %x0259 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %198 = ptrtoint ptr %x0259 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %x0259, align 4
  %conv260 = trunc i32 %199 to i16
  %y0261 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %200 = ptrtoint ptr %y0261 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %y0261, align 4
  %conv262 = trunc i32 %201 to i16
  %call264 = call fastcc i32 @WriteText(ptr noundef %av7110, i8 noundef zeroext %conv258, i16 noundef zeroext %conv260, i16 noundef zeroext %conv262, ptr noundef nonnull %textbuf)
  br label %cleanup

cleanup:                                          ; preds = %if.then256, %if.end254.cleanup_crit_edge, %if.end240.cleanup_crit_edge, %sw.bb227.cleanup_crit_edge
  %ret.4 = phi i32 [ -14, %sw.bb227.cleanup_crit_edge ], [ %call253, %if.end254.cleanup_crit_edge ], [ %call264, %if.then256 ], [ %call.i583, %if.end240.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %textbuf) #10
  br label %sw.epilog

sw.bb266:                                         ; preds = %if.end
  %x0267 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %202 = ptrtoint ptr %x0267 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %x0267, align 4
  %204 = add i32 %203, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %204)
  %205 = icmp ult i32 %204, -7
  br i1 %205, label %sw.bb266.sw.epilog.thread_crit_edge, label %if.else275

sw.bb266.sw.epilog.thread_crit_edge:              ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.else275:                                       ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #12
  %osdwin277 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %206 = ptrtoint ptr %osdwin277 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %203, ptr %osdwin277, align 4
  br label %sw.epilog.thread605

sw.bb279:                                         ; preds = %if.end
  %osdwin280 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %207 = ptrtoint ptr %osdwin280 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %osdwin280, align 4
  %x0282 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %209 = ptrtoint ptr %x0282 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %x0282, align 4
  %y0284 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %211 = ptrtoint ptr %y0284 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %y0284, align 4
  %conv.i584 = and i32 %208, 255
  %conv1.i585 = and i32 %210, 65535
  %conv2.i586 = and i32 %212, 65535
  %call.i587 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 3, i32 noundef 3, i32 noundef %conv.i584, i32 noundef %conv1.i585, i32 noundef %conv2.i586) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i587)
  %tobool287.not = icmp eq i32 %call.i587, 0
  br i1 %tobool287.not, label %if.then288, label %sw.bb279.sw.epilog_crit_edge

sw.bb279.sw.epilog_crit_edge:                     ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then288:                                       ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %osdwin280 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %osdwin280, align 4
  %conv.i588 = and i32 %214, 255
  %call.i589 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 13, i32 noundef 1, i32 noundef %conv.i588) #10
  br label %sw.epilog

sw.bb293:                                         ; preds = %if.end
  %color294 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 5
  %215 = ptrtoint ptr %color294 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %color294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %216)
  %217 = icmp ugt i32 %216, 19
  br i1 %217, label %sw.bb293.sw.epilog.thread_crit_edge, label %land.lhs.true

sw.bb293.sw.epilog.thread_crit_edge:              ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

land.lhs.true:                                    ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %216)
  %cmp307 = icmp ult i32 %216, 8
  %and311 = and i32 %216, 3
  %notmask = shl nsw i32 -1, %and311
  %218 = trunc i32 %notmask to i16
  %conv313 = xor i16 %218, -1
  %.sink = select i1 %cmp307, i16 %conv313, i16 0
  %osdwin319 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %219 = ptrtoint ptr %osdwin319 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %osdwin319, align 4
  %arrayidx320 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %220
  %221 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %.sink, ptr %arrayidx320, align 2
  %osdwin322 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %222 = ptrtoint ptr %osdwin322 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %osdwin322, align 4
  %224 = ptrtoint ptr %color294 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %color294, align 4
  %x1325 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 3
  %226 = ptrtoint ptr %x1325 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %x1325, align 4
  %x0326 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 1
  %228 = ptrtoint ptr %x0326 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %x0326, align 4
  %sub327 = add i32 %227, 1
  %conv329 = sub i32 %sub327, %229
  %y1330 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 4
  %230 = ptrtoint ptr %y1330 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %y1330, align 4
  %y0331 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 2
  %232 = ptrtoint ptr %y0331 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %y0331, align 4
  %sub332 = add i32 %231, 1
  %conv334 = sub i32 %sub332, %233
  %conv.i590 = and i32 %223, 255
  %conv1.i591 = and i32 %conv329, 65535
  %conv2.i592 = and i32 %conv334, 65535
  %call.i593 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef %conv.i590, i32 noundef %225, i32 noundef %conv1.i591, i32 noundef %conv2.i592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i593)
  %tobool336.not = icmp eq i32 %call.i593, 0
  br i1 %tobool336.not, label %if.end338, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end338:                                        ; preds = %land.lhs.true
  %data339 = getelementptr inbounds %struct.osd_cmd_s, ptr %dc, i32 0, i32 6
  %234 = ptrtoint ptr %data339 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %data339, align 4
  %tobool340.not = icmp eq ptr %235, null
  br i1 %tobool340.not, label %if.then341, label %if.end338.sw.epilog.thread605_crit_edge

if.end338.sw.epilog.thread605_crit_edge:          ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread605

if.then341:                                       ; preds = %if.end338
  %236 = ptrtoint ptr %osdwin322 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %osdwin322, align 4
  %238 = ptrtoint ptr %x0326 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %x0326, align 4
  %240 = ptrtoint ptr %y0331 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %y0331, align 4
  %conv.i594 = and i32 %237, 255
  %conv1.i595 = and i32 %239, 65535
  %conv2.i596 = and i32 %241, 65535
  %call.i597 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 3, i32 noundef 3, i32 noundef %conv.i594, i32 noundef %conv1.i595, i32 noundef %conv2.i596) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i597)
  %tobool349.not = icmp eq i32 %call.i597, 0
  br i1 %tobool349.not, label %if.then350, label %if.then341.sw.epilog_crit_edge

if.then341.sw.epilog_crit_edge:                   ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then350:                                       ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %osdwin322 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %osdwin322, align 4
  %conv.i598 = and i32 %243, 255
  %call.i599 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 13, i32 noundef 1, i32 noundef %conv.i598) #10
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %sw.bb293.sw.epilog.thread_crit_edge, %sw.bb266.sw.epilog.thread_crit_edge, %sw.bb164.sw.epilog.thread_crit_edge, %lor.lhs.false123.sw.epilog.thread_crit_edge, %lor.lhs.false105.sw.epilog.thread_crit_edge, %lor.lhs.false.sw.epilog.thread_crit_edge, %for.body.sw.epilog.thread_crit_edge, %if.end.sw.epilog.thread_crit_edge
  %ret.5.ph = phi i32 [ -22, %sw.bb164.sw.epilog.thread_crit_edge ], [ -22, %if.end.sw.epilog.thread_crit_edge ], [ -22, %sw.bb293.sw.epilog.thread_crit_edge ], [ -22, %sw.bb266.sw.epilog.thread_crit_edge ], [ -14, %for.body.sw.epilog.thread_crit_edge ], [ -14, %lor.lhs.false.sw.epilog.thread_crit_edge ], [ -14, %lor.lhs.false105.sw.epilog.thread_crit_edge ], [ -14, %lor.lhs.false123.sw.epilog.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %osd_mutex) #10
  br label %do.body373

sw.epilog.thread605:                              ; preds = %if.end338.sw.epilog.thread605_crit_edge, %if.else275, %ReleaseBitmap.exit.i.sw.epilog.thread605_crit_edge, %for.cond.sw.epilog.thread605_crit_edge, %if.else.sw.epilog.thread605_crit_edge, %if.end19.sw.epilog.thread605_crit_edge
  tail call void @mutex_unlock(ptr noundef %osd_mutex) #10
  br label %cleanup388

sw.epilog:                                        ; preds = %if.then350, %if.then341.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.then288, %sw.bb279.sw.epilog_crit_edge, %cleanup, %sw.bb209, %sw.bb189, %sw.bb172, %do.end85.i, %do.body79.i.sw.epilog_crit_edge, %do.end34.i.sw.epilog_crit_edge, %sw.bb151, %if.end142.sw.epilog_crit_edge, %if.then69, %sw.bb54, %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb36, %if.end31, %if.then21.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb
  %ret.5 = phi i32 [ %call.i593, %land.lhs.true.sw.epilog_crit_edge ], [ %call.i597, %if.then341.sw.epilog_crit_edge ], [ %call.i599, %if.then350 ], [ %call.i587, %sw.bb279.sw.epilog_crit_edge ], [ %call.i589, %if.then288 ], [ %ret.4, %cleanup ], [ %call226, %sw.bb209 ], [ %call208, %sw.bb189 ], [ %call188, %sw.bb172 ], [ %call.i577, %sw.bb151 ], [ %call75, %if.then69 ], [ %call65, %sw.bb54 ], [ %call.i572, %sw.bb48 ], [ %call.i570, %sw.bb44 ], [ %call.i568, %sw.bb40 ], [ %call.i566, %sw.bb36 ], [ %call.i558, %sw.bb2.sw.epilog_crit_edge ], [ %call.i562, %if.then21.sw.epilog_crit_edge ], [ %call.i564, %if.end31 ], [ %call.i, %sw.bb ], [ %call.i579, %do.end34.i.sw.epilog_crit_edge ], [ %spec.select153.i, %do.body79.i.sw.epilog_crit_edge ], [ %spec.select153.i, %do.end85.i ], [ %call146, %if.end142.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %osd_mutex) #10
  %244 = zext i32 %ret.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %ret.5, label %sw.epilog.do.body373_crit_edge [
    i32 -512, label %do.body
    i32 0, label %sw.epilog.cleanup388_crit_edge
  ]

sw.epilog.cleanup388_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup388

sw.epilog.do.body373_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body373

do.body:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %245 = load i32, ptr @av7110_debug, align 4
  %and360 = and i32 %245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  br i1 %tobool361.not, label %do.body.cleanup388_crit_edge, label %do.end

do.body.cleanup388_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup388

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %246 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %dc, align 4
  %call366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %247) #13
  br label %cleanup388

do.body373:                                       ; preds = %sw.epilog.do.body373_crit_edge, %sw.epilog.thread
  %ret.5603 = phi i32 [ %ret.5.ph, %sw.epilog.thread ], [ %ret.5, %sw.epilog.do.body373_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %248 = load i32, ptr @av7110_debug, align 4
  %and374 = and i32 %248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374)
  %tobool375.not = icmp eq i32 %and374, 0
  br i1 %tobool375.not, label %do.body373.cleanup388_crit_edge, label %do.end379

do.body373.cleanup388_crit_edge:                  ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup388

do.end379:                                        ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dc, align 4
  %call382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %250, i32 noundef %ret.5603) #13
  br label %cleanup388

cleanup388:                                       ; preds = %do.end379, %do.body373.cleanup388_crit_edge, %do.end, %do.body.cleanup388_crit_edge, %sw.epilog.cleanup388_crit_edge, %sw.epilog.thread605, %entry.cleanup388_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup388_crit_edge ], [ %ret.5, %sw.epilog.cleanup388_crit_edge ], [ %ret.5603, %do.end379 ], [ %ret.5603, %do.body373.cleanup388_crit_edge ], [ -512, %do.body.cleanup388_crit_edge ], [ -512, %do.end ], [ 0, %sw.epilog.thread605 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @DrawBlock(ptr noundef %av7110, i8 noundef zeroext %windownr, i16 noundef zeroext %x, i16 noundef zeroext %y, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i16 noundef zeroext %color) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %windownr to i32
  %conv1 = zext i16 %x to i32
  %conv2 = zext i16 %y to i32
  %conv3 = zext i16 %dx to i32
  %conv4 = zext i16 %dy to i32
  %conv5 = zext i16 %color to i32
  %call = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 6, i32 noundef 6, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @OSDSetColor(ptr noundef %av7110, i8 noundef zeroext %color, i8 noundef zeroext %r, i8 noundef zeroext %g, i8 noundef zeroext %b, i8 noundef zeroext %blend) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %blend)
  %tobool.not = icmp eq i8 %blend, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i8 %r to i16
  %conv2 = zext i8 %g to i16
  %conv3 = zext i8 %b to i16
  %conv.i = zext i8 %r to i32
  %mul.i = mul nuw nsw i16 %conv1, 77
  %mul2.i = mul nuw i16 %conv2, 150
  %add.i = add nuw i16 %mul2.i, %mul.i
  %conv3.i = zext i8 %b to i32
  %mul4.i = mul nuw nsw i16 %conv3, 29
  %add5.i = add nuw i16 %add.i, %mul4.i
  %mul8.i = shl nuw nsw i32 %conv3.i, 3
  %add9.i = or i32 %mul8.i, 2048
  %0 = lshr i16 %add5.i, 5
  %1 = zext i16 %0 to i32
  %sub.i = sub nuw nsw i32 %add9.i, %1
  %mul13.i = shl nuw nsw i32 %conv.i, 3
  %add14.i = or i32 %mul13.i, 2048
  %sub17.i = sub nuw nsw i32 %add14.i, %1
  %div36.i = and i16 %add5.i, -256
  %2 = lshr i32 %sub17.i, 4
  %3 = shl nuw nsw i32 %sub.i, 12
  %shl.i = and i32 %3, 16711680
  %shl30.i = zext i16 %div36.i to i32
  %or.i = or i32 %2, %shl30.i
  %or31.i = or i32 %or.i, %shl.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %or31.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %shr = lshr i32 %cond, 16
  %osdwin = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %4 = ptrtoint ptr %osdwin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osdwin, align 4
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %7 to i32
  %arrayidx9 = getelementptr [8 x i32], ptr @bpp2pal, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %conv.i37 = and i32 %5, 255
  %conv1.i = zext i8 %color to i32
  %conv3.i38 = and i32 %cond, 65535
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 10, i32 noundef 5, i32 noundef %conv.i37, i32 noundef %9, i32 noundef %conv1.i, i32 noundef %shr, i32 noundef %conv3.i38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %osdwin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osdwin, align 4
  %arrayidx17 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %11
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17, align 2
  %idxprom18 = zext i16 %13 to i32
  %arrayidx19 = getelementptr [8 x i32], ptr @bpp2pal, i32 0, i32 %idxprom18
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %16 = lshr i8 %blend, 4
  %conv.i39 = and i32 %11, 255
  %conv2.i41 = zext i8 %16 to i32
  %call.i42 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 11, i32 noundef 4, i32 noundef %conv.i39, i32 noundef %15, i32 noundef %conv1.i, i32 noundef %conv2.i41) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %cond.end.if.end_crit_edge ], [ %call.i42, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @OSDSetPalette(ptr noundef %av7110, ptr noundef %colors, i8 noundef zeroext %first, i8 noundef zeroext %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %last to i32
  %conv1 = zext i8 %first to i32
  %sub = sub nsw i32 %conv, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3.not53 = icmp slt i32 %sub, 0
  br i1 %cmp3.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 974) #10
  %add.ptr = getelementptr i32, ptr %colors, i32 %i.054
  %0 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !281
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #10, !srcloc !290
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end8, label %for.body.cleanup32_crit_edge

for.body.cleanup32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end8:                                          ; preds = %for.body
  %and = lshr i32 %asmresult5, 4
  %shr = and i32 %and, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool9.not = icmp eq i32 %shr, 0
  br i1 %tobool9.not, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = trunc i32 %asmresult5 to i16
  %conv11 = and i16 %4, 255
  %5 = lshr i16 %4, 8
  %shr15 = lshr i32 %asmresult5, 16
  %6 = trunc i32 %shr15 to i16
  %conv17 = and i16 %6, 255
  %mul.i = mul nuw nsw i16 %conv11, 77
  %mul2.i = mul nuw i16 %5, 150
  %add.i = add nuw i16 %mul2.i, %mul.i
  %mul4.i = mul nuw nsw i16 %conv17, 29
  %add5.i = add nuw i16 %add.i, %mul4.i
  %7 = shl nuw nsw i16 %conv17, 3
  %8 = or i16 %7, 2048
  %9 = lshr i16 %add5.i, 5
  %narrow = sub nuw nsw i16 %8, %9
  %sub.i = zext i16 %narrow to i32
  %10 = shl nuw nsw i16 %conv11, 3
  %11 = or i16 %10, 2048
  %narrow52 = sub nuw nsw i16 %11, %9
  %div36.i = and i16 %add5.i, -256
  %12 = lshr i16 %narrow52, 4
  %13 = zext i16 %12 to i32
  %14 = shl nuw nsw i32 %sub.i, 12
  %shl.i = and i32 %14, 268369920
  %shl30.i = zext i16 %div36.i to i32
  %or.i51 = or i32 %shr, %shl30.i
  %or31.i = or i32 %or.i51, %13
  %or = or i32 %or31.i, %shl.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge
  %cond = phi i32 [ %or, %cond.true ], [ 0, %if.end8.cond.end_crit_edge ]
  %or22 = tail call i32 @llvm.fshl.i32(i32 %cond, i32 %cond, i32 16)
  %mul23 = shl i32 %i.054, 2
  %add24 = add nuw nsw i32 %mul23, 23040
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef %add24, i32 noundef %or22, i32 noundef 4) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  %inc = add nuw nsw i32 %i.054, 1
  %cmp3.not.not = icmp slt i32 %i.054, %sub
  br i1 %cmp3.not.not, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %osdwin = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %15 = ptrtoint ptr %osdwin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %osdwin, align 4
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %18 to i32
  %arrayidx28 = getelementptr [8 x i32], ptr @bpp2pal, i32 0, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx28, align 4
  %call31 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 20, i32 noundef 4, i32 noundef %16, i32 noundef %20, i32 noundef %conv1, i32 noundef %conv)
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %for.body.cleanup32_crit_edge
  %retval.2 = phi i32 [ %call31, %for.end ], [ -14, %for.body.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @DrawLine(ptr noundef %av7110, i8 noundef zeroext %windownr, i16 noundef zeroext %x, i16 noundef zeroext %y, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i16 noundef zeroext %color) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %windownr to i32
  %conv1 = zext i16 %x to i32
  %conv2 = zext i16 %y to i32
  %conv3 = zext i16 %dx to i32
  %conv4 = zext i16 %dy to i32
  %conv5 = zext i16 %color to i32
  %call = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 7, i32 noundef 6, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FlushText(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 22
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %1 = load volatile i32, ptr @jiffies, align 128
  %call2.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i16 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16672, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i16)
  %cmp217 = icmp eq i32 %call5.i16, 0
  br i1 %cmp217, label %if.end.cleanup.sink.split_crit_edge, label %if.end4.lr.ph

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end4.lr.ph:                                    ; preds = %if.end
  %add = add i32 %0, 100
  br label %if.end4

if.end4:                                          ; preds = %if.end9.if.end4_crit_edge, %if.end4.lr.ph
  %2 = phi i32 [ %1, %if.end4.lr.ph ], [ %3, %if.end9.if.end4_crit_edge ]
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #13
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end4
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16672, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  %cmp2 = icmp eq i32 %call5.i, 0
  br i1 %cmp2, label %if.end9.cleanup.sink.split_crit_edge, label %if.end9.if.end4_crit_edge

if.end9.if.end4_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %do.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -110, %do.end ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @WriteText(ptr noundef %av7110, i8 noundef zeroext %win, i16 noundef zeroext %x, i16 noundef zeroext %y, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %cbuf = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %buf) #14
  %add = add i32 %call, 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cbuf) #10
  %0 = getelementptr inbounds [5 x i16], ptr %cbuf, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i16], ptr %cbuf, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i16], ptr %cbuf, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i16], ptr %cbuf, i32 0, i32 4
  %4 = ptrtoint ptr %cbuf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 776, ptr %cbuf, align 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %0, align 2
  %conv = zext i8 %win to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %1, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %x, ptr %2, align 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %y, ptr %3, align 2
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 22
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 21
  %10 = load volatile i32, ptr @jiffies, align 128
  %call2.i66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i67 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16672, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i67)
  %cmp868 = icmp eq i32 %call5.i67, 0
  br i1 %cmp868, label %if.end.for.cond.preheader_crit_edge, label %if.end11.lr.ph

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.end11.lr.ph:                                   ; preds = %if.end
  %add5 = add i32 %9, 100
  br label %if.end11

for.cond.preheader:                               ; preds = %if.end16.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %div = sdiv i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp1769 = icmp sgt i32 %add, 1
  br i1 %cmp1769, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end11:                                         ; preds = %if.end16.if.end11_crit_edge, %if.end11.lr.ph
  %11 = phi i32 [ %10, %if.end11.lr.ph ], [ %12, %if.end16.if.end11_crit_edge ]
  %sub = sub i32 %add5, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #13
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  tail call void @msleep(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 917504, i32 noundef 16672, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #10
  %cmp8 = icmp eq i32 %call5.i, 0
  br i1 %cmp8, label %if.end16.for.cond.preheader_crit_edge, label %if.end16.if.end11_crit_edge

if.end16.if.end11_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end16.for.cond.preheader_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl nuw i32 %i.070, 1
  %add19 = add nuw i32 %mul, 16672
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv21 = zext i16 %15 to i32
  %call2.i60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i61 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef %add19, i32 noundef %conv21, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i60) #10
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = shl nsw i32 %div, 1
  %phi.bo72 = add i32 %phi.bo, 16672
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 16672, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo72, %for.end.loopexit ]
  %and = and i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.end.if.end26_crit_edge, label %if.then23

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #10
  %call5.i64 = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 917504, i32 noundef %i.0.lcssa, i32 noundef 0, i32 noundef 2) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i63) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.end.if.end26_crit_edge
  %call27 = call fastcc i32 @__av7110_send_fw_cmd(ptr noundef %av7110, ptr noundef nonnull %cbuf, i32 noundef 5)
  tail call void @mutex_unlock(ptr noundef %dcomlock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %do.end35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call27) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ -512, %entry.cleanup_crit_edge ], [ %call27, %do.end35 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cbuf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @av7110_osd_capability(ptr nocapture noundef readonly %av7110, ptr nocapture noundef %cap) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %2 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arm_app, align 4
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %val1 = getelementptr inbounds %struct.osd_cap_s, ptr %cap, i32 0, i32 1
  %. = select i1 %tobool.not, i32 92000, i32 1000000
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %val1, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @WaitUntilBmpLoaded(ptr noundef %av7110) unnamed_addr #6 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 843) #10
  %bmp_state = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 19
  %0 = ptrtoint ptr %bmp_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bmp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.then8, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

if.then8:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %bmpq = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 20
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %bmpq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %3 = ptrtoint ptr %bmp_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bmp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp12.not66.not = icmp eq i32 %4, 1
  br i1 %cmp12.not66.not, label %if.then8.cleanup_crit_edge, label %if.end32.thread

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  br label %cleanup

if.end32.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %bmpq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup44

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %__ret9.168 = phi i32 [ %__ret9.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then8.cleanup_crit_edge ]
  %call29 = call i32 @schedule_timeout(i32 noundef %__ret9.168) #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %bmpq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %bmp_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %bmp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp12.not = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool16.not = icmp eq i32 %call29, 0
  %spec.store.select45 = select i1 %tobool16.not, i32 1, i32 %call29
  %__ret9.1 = select i1 %cmp12.not, i32 %call29, i32 %spec.store.select45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %tobool22.not = icmp eq i32 %__ret9.1, 0
  %not.cmp12.not = xor i1 %cmp12.not, true
  %7 = select i1 %not.cmp12.not, i1 true, i1 %tobool22.not
  br i1 %7, label %if.end32, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %phi.cmp = icmp eq i32 %__ret9.1, 0
  call void @finish_wait(ptr noundef %bmpq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end38, label %if.end32.cleanup44_crit_edge

if.end32.cleanup44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %bmp_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bmp_state, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef 0, i32 noundef %9) #13
  %10 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %bmp_state, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %do.end38, %if.end32.cleanup44_crit_edge, %if.end32.thread, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ -110, %do.end38 ], [ 0, %if.end32.cleanup44_crit_edge ], [ 0, %entry.cleanup44_crit_edge ], [ 0, %if.end32.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LoadBitmap(ptr noundef %av7110, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i32 noundef %inc, ptr noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.122, ptr noundef %av7110) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %osdwin = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 27
  %1 = ptrtoint ptr %osdwin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %osdwin, align 4
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 28, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %4 to i32
  %arrayidx4 = getelementptr [8 x i32], ptr @bpp2bit, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %bmp_state = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 19
  %7 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %bmp_state, align 4
  %conv5 = and i32 %6, 65535
  %8 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %4, label %if.else17 [
    i16 7, label %do.end3.if.end27_crit_edge
    i16 3, label %if.then11
    i16 1, label %if.then16
  ]

do.end3.if.end27_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then11:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then16:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else17:                                        ; preds = %do.end3
  %9 = lshr i32 117, %idxprom
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19.not = icmp eq i32 %10, 0
  br i1 %cmp19.not, label %if.else22, label %if.else17.if.end27_crit_edge

if.else17.if.end27_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %bmp_state, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.else17.if.end27_crit_edge, %if.then16, %if.then11, %do.end3.if.end27_crit_edge
  %bpp.0 = phi i32 [ 4, %if.then11 ], [ 2, %if.then16 ], [ 8, %do.end3.if.end27_crit_edge ], [ 1, %if.else17.if.end27_crit_edge ]
  %cmp72180 = phi i1 [ true, %if.then11 ], [ true, %if.then16 ], [ false, %do.end3.if.end27_crit_edge ], [ true, %if.else17.if.end27_crit_edge ]
  %cmp72 = phi i1 [ false, %if.then11 ], [ true, %if.then16 ], [ false, %do.end3.if.end27_crit_edge ], [ true, %if.else17.if.end27_crit_edge ]
  %cmp72.2 = phi i1 [ false, %if.then11 ], [ false, %if.then16 ], [ false, %do.end3.if.end27_crit_edge ], [ true, %if.else17.if.end27_crit_edge ]
  %delta.0 = phi i32 [ 2, %if.then11 ], [ 4, %if.then16 ], [ 1, %do.end3.if.end27_crit_edge ], [ 8, %if.else17.if.end27_crit_edge ]
  %conv28 = zext i16 %dx to i32
  %conv29 = zext i16 %dy to i32
  %mul = mul nuw i32 %conv29, %conv28
  %mul30 = mul i32 %bpp.0, %mul
  %add = add i32 %mul30, 7
  %and31 = and i32 %add, -8
  %div = sdiv i32 %and31, 8
  %bmplen = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 18
  %12 = ptrtoint ptr %bmplen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %bmplen, align 8
  %bmpp = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 17
  %13 = ptrtoint ptr %bmpp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bmpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262151, i32 %and31)
  %cmp33 = icmp sgt i32 %and31, 262151
  br i1 %cmp33, label %if.then35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dy)
  %cmp39178.not = icmp eq i16 %dy, 0
  br i1 %cmp39178.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bmpbuf = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 16
  br label %for.body

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %bmp_state, align 4
  br label %cleanup

for.cond:                                         ; preds = %if.end.i.i
  %inc52 = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc52, %conv29
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %for.cond.for.body_crit_edge ]
  %15 = ptrtoint ptr %bmpbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmpbuf, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 1024
  %mul42 = mul nuw i32 %i.0179, %conv28
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 %mul42
  %mul44 = mul i32 %i.0179, %inc
  %add.ptr45 = getelementptr i8, ptr %data, i32 %mul44
  tail call void @__check_object_size(ptr noundef %add.ptr43, i32 noundef %conv28, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.128, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr45, i32 %conv28, i32 -1226833920) #15, !srcloc !291
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !292

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr43, i32 noundef %conv28) #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !251) #10
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !281
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr43, ptr noundef %add.ptr45, i32 noundef %conv28) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv28, %for.body.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv28, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond, label %if.then11.i.i, !prof !292

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %conv28, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr43, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %22 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %bmp_state, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %4)
  %cmp54.not = icmp eq i16 %4, 7
  br i1 %cmp54.not, label %for.end.if.end94_crit_edge, label %for.cond57.preheader

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

for.cond57.preheader:                             ; preds = %for.end
  %div61 = sdiv i32 %mul, %delta.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div61)
  %cmp62183 = icmp sgt i32 %div61, 0
  br i1 %cmp62183, label %for.body64.lr.ph, label %for.cond57.preheader.if.end94_crit_edge

for.cond57.preheader.if.end94_crit_edge:          ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

for.body64.lr.ph:                                 ; preds = %for.cond57.preheader
  %bmpbuf65 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 16
  %add68 = add nsw i32 %delta.0, -1
  %sub70 = add nsw i32 %delta.0, -2
  %dec = add nsw i32 %delta.0, -3
  %mul83.1 = shl nuw nsw i32 %bpp.0, 1
  %dec.1 = add nsw i32 %delta.0, -4
  %mul83.2 = mul nuw nsw i32 %bpp.0, 3
  %dec.2 = add nsw i32 %delta.0, -5
  %mul83.3 = shl nuw nsw i32 %bpp.0, 2
  %dec.3 = add nsw i32 %delta.0, -6
  %mul83.4 = mul nuw nsw i32 %bpp.0, 5
  %dec.4 = add nsw i32 %delta.0, -7
  %mul83.5 = mul nuw nsw i32 %bpp.0, 6
  %dec.5 = add nsw i32 %delta.0, -8
  %mul83.6 = mul nuw nsw i32 %bpp.0, 7
  br label %for.body64

for.body64:                                       ; preds = %for.inc91.for.body64_crit_edge, %for.body64.lr.ph
  %i.1184 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc92, %for.inc91.for.body64_crit_edge ]
  %mul66 = mul i32 %i.1184, %delta.0
  %add67 = add i32 %mul66, 1024
  br i1 %cmp72180, label %for.body74.lr.ph, label %for.body64.for.inc91_crit_edge

for.body64.for.inc91_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc91

for.body74.lr.ph:                                 ; preds = %for.body64
  %add87 = add nuw i32 %i.1184, 1024
  %23 = ptrtoint ptr %bmpbuf65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmpbuf65, align 8
  %sub = add i32 %add68, %add67
  %arrayidx69 = getelementptr i8, ptr %24, i32 %sub
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx69, align 1
  %add78 = add i32 %sub70, %add67
  %arrayidx79 = getelementptr i8, ptr %24, i32 %add78
  %27 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %28 to i32
  %shl = shl i32 %conv80, %bpp.0
  %29 = trunc i32 %shl to i8
  %conv85 = or i8 %26, %29
  %arrayidx88 = getelementptr i8, ptr %24, i32 %add87
  %30 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv85, ptr %arrayidx88, align 1
  br i1 %cmp72, label %for.body74.1, label %for.body74.lr.ph.for.inc91_crit_edge

for.body74.lr.ph.for.inc91_crit_edge:             ; preds = %for.body74.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc91

for.body74.1:                                     ; preds = %for.body74.lr.ph
  %31 = ptrtoint ptr %bmpbuf65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmpbuf65, align 8
  %add78.1 = add i32 %dec, %add67
  %arrayidx79.1 = getelementptr i8, ptr %32, i32 %add78.1
  %33 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx79.1, align 1
  %conv80.1 = zext i8 %34 to i32
  %shl.1 = shl i32 %conv80.1, %mul83.1
  %35 = trunc i32 %shl.1 to i8
  %conv85.1 = or i8 %conv85, %35
  %arrayidx88.1 = getelementptr i8, ptr %32, i32 %add87
  %36 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv85.1, ptr %arrayidx88.1, align 1
  %37 = load ptr, ptr %bmpbuf65, align 8
  %add78.2 = add i32 %dec.1, %add67
  %arrayidx79.2 = getelementptr i8, ptr %37, i32 %add78.2
  %38 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx79.2, align 1
  %conv80.2 = zext i8 %39 to i32
  %shl.2 = shl i32 %conv80.2, %mul83.2
  %40 = trunc i32 %shl.2 to i8
  %conv85.2 = or i8 %conv85.1, %40
  %arrayidx88.2 = getelementptr i8, ptr %37, i32 %add87
  %41 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv85.2, ptr %arrayidx88.2, align 1
  br i1 %cmp72.2, label %for.body74.3, label %for.body74.1.for.inc91_crit_edge

for.body74.1.for.inc91_crit_edge:                 ; preds = %for.body74.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc91

for.body74.3:                                     ; preds = %for.body74.1
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %bmpbuf65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmpbuf65, align 8
  %add78.3 = add i32 %dec.2, %add67
  %arrayidx79.3 = getelementptr i8, ptr %43, i32 %add78.3
  %44 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx79.3, align 1
  %conv80.3 = zext i8 %45 to i32
  %shl.3 = shl i32 %conv80.3, %mul83.3
  %46 = trunc i32 %shl.3 to i8
  %conv85.3 = or i8 %conv85.2, %46
  %arrayidx88.3 = getelementptr i8, ptr %43, i32 %add87
  %47 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv85.3, ptr %arrayidx88.3, align 1
  %48 = load ptr, ptr %bmpbuf65, align 8
  %add78.4 = add i32 %dec.3, %add67
  %arrayidx79.4 = getelementptr i8, ptr %48, i32 %add78.4
  %49 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx79.4, align 1
  %conv80.4 = zext i8 %50 to i32
  %shl.4 = shl i32 %conv80.4, %mul83.4
  %51 = trunc i32 %shl.4 to i8
  %conv85.4 = or i8 %conv85.3, %51
  %arrayidx88.4 = getelementptr i8, ptr %48, i32 %add87
  %52 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv85.4, ptr %arrayidx88.4, align 1
  %53 = load ptr, ptr %bmpbuf65, align 8
  %add78.5 = add i32 %dec.4, %add67
  %arrayidx79.5 = getelementptr i8, ptr %53, i32 %add78.5
  %54 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx79.5, align 1
  %conv80.5 = zext i8 %55 to i32
  %shl.5 = shl i32 %conv80.5, %mul83.5
  %56 = trunc i32 %shl.5 to i8
  %conv85.5 = or i8 %conv85.4, %56
  %arrayidx88.5 = getelementptr i8, ptr %53, i32 %add87
  %57 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv85.5, ptr %arrayidx88.5, align 1
  %58 = load ptr, ptr %bmpbuf65, align 8
  %add78.6 = add i32 %dec.5, %add67
  %arrayidx79.6 = getelementptr i8, ptr %58, i32 %add78.6
  %59 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx79.6, align 1
  %conv80.6 = zext i8 %60 to i32
  %shl.6 = shl i32 %conv80.6, %mul83.6
  %61 = trunc i32 %shl.6 to i8
  %conv85.6 = or i8 %conv85.5, %61
  %arrayidx88.6 = getelementptr i8, ptr %58, i32 %add87
  %62 = ptrtoint ptr %arrayidx88.6 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv85.6, ptr %arrayidx88.6, align 1
  br label %for.inc91

for.inc91:                                        ; preds = %for.body74.3, %for.body74.1.for.inc91_crit_edge, %for.body74.lr.ph.for.inc91_crit_edge, %for.body64.for.inc91_crit_edge
  %inc92 = add nuw nsw i32 %i.1184, 1
  %exitcond191.not = icmp eq i32 %inc92, %div61
  br i1 %exitcond191.not, label %for.inc91.if.end94_crit_edge, label %for.inc91.for.body64_crit_edge

for.inc91.for.body64_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

for.inc91.if.end94_crit_edge:                     ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end94:                                         ; preds = %for.inc91.if.end94_crit_edge, %for.cond57.preheader.if.end94_crit_edge, %for.end.if.end94_crit_edge
  %63 = ptrtoint ptr %bmplen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bmplen, align 8
  %add96 = add i32 %64, 1024
  store i32 %add96, ptr %bmplen, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %65 = load i32, ptr @av7110_debug, align 4
  %and98 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end94.do.end109_crit_edge, label %do.end103

if.end94.do.end109_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

do.end103:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef %add96) #13
  br label %do.end109

do.end109:                                        ; preds = %do.end103, %if.end94.do.end109_crit_edge
  %call113 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 3, i32 noundef 15, i32 noundef 3, i32 noundef %conv5, i32 noundef %conv28, i32 noundef %conv29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %do.end109.cleanup_crit_edge

do.end109.cleanup_crit_edge:                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then115:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = tail call fastcc i32 @WaitUntilBmpLoaded(ptr noundef %av7110)
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %do.end109.cleanup_crit_edge, %if.then11.i.i, %if.then35, %if.else22
  %retval.0 = phi i32 [ -22, %if.then35 ], [ -22, %if.then11.i.i ], [ -22, %if.else22 ], [ %call113, %do.end109.cleanup_crit_edge ], [ %call116, %if.then115 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !250}
!llvm.named.register.sp = !{!251}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @av7110_debiwrite._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @av7110_debiwrite._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 53, i32 3}
!8 = !{ptr @av7110_debiwrite._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @av7110_debiwrite._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 72, i32 3}
!12 = !{ptr @av7110_debiread._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @av7110_debiread._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 76, i32 3}
!16 = !{ptr @av7110_debiread._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @av7110_debiread._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 87, i32 3}
!20 = !{ptr @av7110_debiread._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @av7110_debiread._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 197, i32 24}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 202, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @av7110_bootarm._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @av7110_bootarm._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 223, i32 3}
!31 = !{ptr @av7110_bootarm._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @av7110_bootarm._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 229, i32 2}
!35 = !{ptr @av7110_bootarm._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @av7110_bootarm._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 232, i32 2}
!39 = !{ptr @av7110_bootarm._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @av7110_bootarm._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 239, i32 3}
!43 = !{ptr @av7110_bootarm._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @av7110_bootarm._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 249, i32 3}
!47 = !{ptr @av7110_bootarm._entry.28, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @av7110_bootarm._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 255, i32 2}
!51 = !{ptr @av7110_bootarm._entry.31, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @av7110_bootarm._entry_ptr.33, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 257, i32 3}
!55 = !{ptr @av7110_bootarm._entry.34, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @av7110_bootarm._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 264, i32 2}
!59 = !{ptr @av7110_bootarm._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @av7110_bootarm._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 268, i32 3}
!63 = !{ptr @av7110_bootarm._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @av7110_bootarm._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_firmware385, !66, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 283, i32 1}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 312, i32 4}
!69 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @av7110_wait_msgstate._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @av7110_wait_msgstate._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 486, i32 3}
!74 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @av7110_fw_cmd._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @av7110_fw_cmd._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 504, i32 3}
!80 = !{ptr @av7110_fw_cmd._entry.48, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @av7110_fw_cmd._entry_ptr.50, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 542, i32 2}
!84 = !{ptr @av7110_fw_request._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @av7110_fw_request._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 545, i32 3}
!88 = !{ptr @av7110_fw_request._entry.52, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @av7110_fw_request._entry_ptr.54, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 554, i32 3}
!92 = !{ptr @av7110_fw_request._entry.55, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @av7110_fw_request._entry_ptr.57, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 564, i32 4}
!96 = !{ptr @av7110_fw_request._entry.58, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @av7110_fw_request._entry_ptr.60, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 629, i32 2}
!100 = !{ptr @av7110_firmversion._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @av7110_firmversion._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 632, i32 3}
!104 = !{ptr @av7110_firmversion._entry.62, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @av7110_firmversion._entry_ptr.64, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.66, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 643, i32 2}
!108 = !{ptr @av7110_firmversion._entry.65, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @av7110_firmversion._entry_ptr.67, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 649, i32 3}
!112 = !{ptr @av7110_firmversion._entry.68, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @av7110_firmversion._entry_ptr.70, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 652, i32 3}
!116 = !{ptr @av7110_firmversion._entry.71, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @av7110_firmversion._entry_ptr.73, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 665, i32 2}
!120 = !{ptr @av7110_diseqc_send._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @av7110_diseqc_send._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.76, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 683, i32 3}
!124 = !{ptr @av7110_diseqc_send._entry.75, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @av7110_diseqc_send._entry_ptr.77, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.78, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 1184, i32 3}
!128 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @av7110_osd_cmd._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @av7110_osd_cmd._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 1186, i32 3}
!133 = !{ptr @av7110_osd_cmd._entry.80, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @av7110_osd_cmd._entry_ptr.82, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.83, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 141, i32 2}
!137 = !{ptr @load_dram._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @load_dram._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 149, i32 4}
!141 = !{ptr @load_dram._entry.84, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @load_dram._entry_ptr.86, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.88, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 152, i32 3}
!145 = !{ptr @load_dram._entry.87, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @load_dram._entry_ptr.89, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 164, i32 4}
!149 = !{ptr @load_dram._entry.90, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @load_dram._entry_ptr.92, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 179, i32 3}
!153 = !{ptr @load_dram._entry.93, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @load_dram._entry_ptr.95, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.97, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 185, i32 3}
!157 = !{ptr @load_dram._entry.96, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @load_dram._entry_ptr.98, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.99, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 125, i32 2}
!161 = !{ptr @waitdebi._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @waitdebi._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 463, i32 3}
!165 = !{ptr @av7110_send_fw_cmd._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @av7110_send_fw_cmd._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.102, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 472, i32 3}
!169 = !{ptr @av7110_send_fw_cmd._entry.101, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @av7110_send_fw_cmd._entry_ptr.103, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.104, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 333, i32 3}
!173 = !{ptr @__av7110_send_fw_cmd._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @__av7110_send_fw_cmd._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 343, i32 4}
!177 = !{ptr @__av7110_send_fw_cmd._entry.105, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @__av7110_send_fw_cmd._entry_ptr.107, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.108, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 372, i32 10}
!181 = !{ptr @.str.109, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 377, i32 10}
!183 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 399, i32 5}
!185 = !{ptr @__av7110_send_fw_cmd._entry.110, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @__av7110_send_fw_cmd._entry_ptr.112, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.114, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 406, i32 5}
!189 = !{ptr @__av7110_send_fw_cmd._entry.113, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @__av7110_send_fw_cmd._entry_ptr.115, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.116, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 614, i32 3}
!193 = !{ptr @.str.117, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @av7110_fw_query._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @av7110_fw_query._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @bpp2bit, !197, !"bpp2bit", i1 false, i1 false}
!197 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 836, i32 25}
!198 = !{ptr @bpp2pal, !199, !"bpp2pal", i1 false, i1 false}
!199 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 833, i32 37}
!200 = !{ptr @.str.118, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 1038, i32 3}
!202 = !{ptr @.str.119, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @OSDSetBlock._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @OSDSetBlock._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.120, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 845, i32 3}
!207 = !{ptr @.str.121, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @WaitUntilBmpLoaded._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @WaitUntilBmpLoaded._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 863, i32 2}
!212 = !{ptr @LoadBitmap._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @LoadBitmap._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 903, i32 2}
!216 = !{ptr @LoadBitmap._entry.123, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @LoadBitmap._entry_ptr.125, !215, !"_entry_ptr", i1 false, i1 false}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!220 = !{ptr @.str.126, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!223 = !{ptr @.str.128, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!225 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 912, i32 2}
!227 = !{ptr @BlitBitmap._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @BlitBitmap._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 919, i32 2}
!231 = !{ptr @ReleaseBitmap._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ReleaseBitmap._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 924, i32 3}
!235 = !{ptr @ReleaseBitmap._entry.131, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ReleaseBitmap._entry_ptr.133, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 729, i32 4}
!239 = !{ptr @.str.135, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @FlushText._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @FlushText._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.136, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 756, i32 4}
!244 = !{ptr @.str.137, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @WriteText._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @WriteText._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.139, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/staging/media/av7110/av7110_hw.c", i32 786, i32 3}
!249 = !{ptr @WriteText._entry.138, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @WriteText._entry_ptr.140, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{!"sp"}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 2158609025}
!262 = !{i64 5195566}
!263 = !{i64 2158610541}
!264 = !{i64 2158611110}
!265 = !{i64 2158614403}
!266 = !{i64 2158614980}
!267 = !{i64 2158615562}
!268 = !{i64 2158616056}
!269 = !{i64 5195984}
!270 = !{i64 2158618220}
!271 = !{!"auto-init"}
!272 = !{i64 2158576043}
!273 = !{i64 2158576957}
!274 = !{i64 2158632858}
!275 = !{i64 2158633431}
!276 = !{i64 2158633952}
!277 = !{i64 2158634606}
!278 = !{i64 2158653533}
!279 = !{i64 2158578780}
!280 = !{i64 2158579692}
!281 = !{i64 4697656}
!282 = !{i64 4697853}
!283 = !{i64 2152183086}
!284 = !{i64 2158734993, i64 2158735273, i64 2158735607, i64 2158735941}
!285 = !{i64 2158747209, i64 2158747489, i64 2158747823, i64 2158748157}
!286 = !{i64 2158759425, i64 2158759705, i64 2158760039, i64 2158760373}
!287 = !{i64 2158771673, i64 2158771953, i64 2158772287, i64 2158772621}
!288 = !{!"branch_weights", i32 1, i32 2000}
!289 = !{i64 2158728420, i64 2158728926, i64 2158728457, i64 2158728513, i64 2158728547, i64 2158728571, i64 2158728612, i64 2158728633, i64 2158728661, i64 2158728695}
!290 = !{i64 2158724181, i64 2158724461, i64 2158724795, i64 2158725129}
!291 = !{i64 2152202101, i64 2152202126}
!292 = !{!"branch_weights", i32 2000, i32 1}
