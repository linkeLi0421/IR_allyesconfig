; ModuleID = '/llk/IR_all_yes/sound/drivers/mtpav.c_pt.bc'
source_filename = "../sound/drivers/mtpav.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mtpav = type { ptr, i32, ptr, i32, %struct.spinlock, i32, i32, %struct.timer_list, ptr, i32, [19 x %struct.mtpav_port], i32, i32, i32 }
%struct.mtpav_port = type { i8, i8, i8, i8, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author189 = internal constant [35 x i8] c"snd_mtpav.author=Michael T. Mayers\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [59 x i8] c"snd_mtpav.description=MOTU MidiTimePiece AV multiport MIDI\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [39 x i8] c"snd_mtpav.file=sound/drivers/snd-mtpav\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [22 x i8] c"snd_mtpav.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_mtpav.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype193 = internal constant [29 x i8] c"snd_mtpav.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index194 = internal constant [53 x i8] c"snd_mtpav.parm=index:Index value for MotuMTPAV MIDI.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_mtpav.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype195 = internal constant [28 x i8] c"snd_mtpav.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id196 = internal constant [48 x i8] c"snd_mtpav.parm=id:ID string for MotuMTPAV MIDI.\00", section ".modinfo", align 1
@__param_str_port = internal constant [15 x i8] c"snd_mtpav.port\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@port = internal global { i32, [28 x i8] } { i32 888, [28 x i8] zeroinitializer }, align 32
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @port } }, section "__param", align 4
@__UNIQUE_ID_porttype197 = internal constant [29 x i8] c"snd_mtpav.parmtype=port:long\00", section ".modinfo", align 1
@__UNIQUE_ID_port198 = internal constant [56 x i8] c"snd_mtpav.parm=port:Parallel port # for MotuMTPAV MIDI.\00", section ".modinfo", align 1
@__param_str_irq = internal constant [14 x i8] c"snd_mtpav.irq\00", align 1
@irq = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype199 = internal constant [27 x i8] c"snd_mtpav.parmtype=irq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq200 = internal constant [54 x i8] c"snd_mtpav.parm=irq:Parallel IRQ # for MotuMTPAV MIDI.\00", section ".modinfo", align 1
@__param_str_hwports = internal constant [18 x i8] c"snd_mtpav.hwports\00", align 1
@hwports = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_hwports = internal constant %struct.kernel_param { ptr @__param_str_hwports, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @hwports } }, section "__param", align 4
@__UNIQUE_ID_hwportstype201 = internal constant [31 x i8] c"snd_mtpav.parmtype=hwports:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hwports202 = internal constant [60 x i8] c"snd_mtpav.parm=hwports:Hardware ports # for MotuMTPAV MIDI.\00", section ".modinfo", align 1
@device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@snd_mtpav_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_mtpav_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_mtpav__203_759_alsa_card_mtpav_init6 = internal global ptr @alsa_card_mtpav_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_mtpav_exit = internal global ptr @alsa_card_mtpav_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_mtpav\00", [22 x i8] zeroinitializer }, align 32
@snd_mtpav_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mtp_card->spinlock\00", [44 x i8] zeroinitializer }, align 32
@snd_mtpav_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&mtp_card->timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MTPAV\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MTPAV on parallel port\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MTPAV on parallel port at 0x%lx\00", [32 x i8] zeroinitializer }, align 32
@snd_mtpav_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016Motu MidiTimePiece on parallel port irq: %d ioport: 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_mtpav_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/drivers/mtpav.c\00", [42 x i8] zeroinitializer }, align 32
@snd_mtpav_probe._entry_ptr = internal global ptr @snd_mtpav_probe._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MotuMIDI\00", [23 x i8] zeroinitializer }, align 32
@snd_mtpav_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mtpav_input_open, ptr @snd_mtpav_input_close, ptr @snd_mtpav_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_mtpav_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mtpav_output_open, ptr @snd_mtpav_output_close, ptr @snd_mtpav_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MTP AV MIDI\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MTP direct %d\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MTP remote %d\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MTP computer\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MTP ADAT\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MTP broadcast\00", [18 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MotuMTPAV MIDI\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013MTVAP port 0x%lx is busy\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOTU MTPAV\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013MTVAP IRQ %d busy\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 62, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 63, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 64, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 65, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"hwports\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 66, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 79, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"snd_mtpav_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 726, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 729, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 688, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 694, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 708, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 709, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 711, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 720, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 634, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"snd_mtpav_input\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 595, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"snd_mtpav_output\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 589, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 656, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 610, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 612, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 614, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 616, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 618, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 569, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 572, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 577, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [25 x i8] c"../sound/drivers/mtpav.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 578, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_hwports202, ptr @__UNIQUE_ID_hwportstype201, ptr @__UNIQUE_ID_id196, ptr @__UNIQUE_ID_idtype195, ptr @__UNIQUE_ID_index194, ptr @__UNIQUE_ID_indextype193, ptr @__UNIQUE_ID_irq200, ptr @__UNIQUE_ID_irqtype199, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_port198, ptr @__UNIQUE_ID_porttype197, ptr @__exitcall_alsa_card_mtpav_exit, ptr @__initcall__kmod_snd_mtpav__203_759_alsa_card_mtpav_init6, ptr @__param_hwports, ptr @__param_id, ptr @__param_index, ptr @__param_irq, ptr @__param_port, ptr @alsa_card_mtpav_exit, ptr @snd_mtpav_probe._entry, ptr @snd_mtpav_probe._entry_ptr, ptr @index, ptr @id, ptr @port, ptr @irq, ptr @hwports, ptr @device, ptr @snd_mtpav_driver, ptr @.str, ptr @snd_mtpav_probe.__key, ptr @.str.1, ptr @snd_mtpav_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_mtpav_input, ptr @snd_mtpav_output, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mtpav_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_mtpav_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @device, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_mtpav_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_mtpav_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_mtpav_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  store ptr %call.i.i, ptr @device, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_unregister(ptr noundef %call.i.i) #6
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i.i to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end6
  %err.0 = phi i32 [ %11, %if.else ], [ -19, %if.end6 ]
  call void @platform_driver_unregister(ptr noundef nonnull @snd_mtpav_driver) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_probe(ptr noundef %dev) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !110
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev1, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 364, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_mtpav_probe.__key, i16 noundef signext 3) #6
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %6, align 4
  %irq = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq, align 4
  %share_irq = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %share_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %share_irq, align 4
  %inmidistate = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 12
  %12 = ptrtoint ptr %inmidistate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %inmidistate, align 4
  %outmidihwport = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 13
  %13 = ptrtoint ptr %outmidihwport to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %outmidihwport, align 4
  %timer = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 7
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @snd_mtpav_output_timer, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_mtpav_probe.__key.2) #6
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_mtpav_free, ptr %private_free, align 4
  %17 = load i32, ptr @hwports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp slt i32 %17, 1
  br i1 %cmp.i, label %if.end.if.end3.sink.split.i_crit_edge, label %if.else.i

if.end.if.end3.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.sink.split.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp1.i = icmp ugt i32 %17, 8
  br i1 %cmp1.i, label %if.else.i.if.end3.sink.split.i_crit_edge, label %if.else.i.if.end3.i_crit_edge

if.else.i.if.end3.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.else.i.if.end3.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.sink.split.i

if.end3.sink.split.i:                             ; preds = %if.else.i.if.end3.sink.split.i_crit_edge, %if.end.if.end3.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end.if.end3.sink.split.i_crit_edge ], [ 8, %if.else.i.if.end3.sink.split.i_crit_edge ]
  store i32 %.sink.i, ptr @hwports, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end3.sink.split.i, %if.else.i.if.end3.i_crit_edge
  %18 = load i32, ptr @hwports, align 4
  %num_ports.i = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 9
  %19 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_ports.i, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %mul.i = shl i32 %18, 1
  %add5.i = add i32 %mul.i, 3
  %rmidi.i = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 8
  %call.i = call i32 @snd_rawmidi_new(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %add5.i, i32 noundef %add5.i, ptr noundef %rmidi.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %if.end3.i.cleanup_crit_edge, label %if.end12.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end3.i
  %22 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmidi.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %private_data.i, align 4
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %23, i32 0, i32 8, i32 1, i32 2
  %25 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %list.0115.i = load ptr, ptr %substreams.i, align 4
  %cmp.i.not116.i = icmp eq ptr %list.0115.i, %substreams.i
  br i1 %cmp.i.not116.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %snd_mtpav_set_name.exit.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %list.0117.i = phi ptr [ %list.0.i, %snd_mtpav_set_name.exit.i.for.body.i_crit_edge ], [ %list.0115.i, %if.end12.i.for.body.i_crit_edge ]
  %number.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 2
  %26 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i72.i = icmp sgt i32 %27, -1
  br i1 %cmp.i72.i, label %land.lhs.true.i.i, label %for.body.i.if.else19.i.i_crit_edge

for.body.i.if.else19.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %28 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp2.i.i = icmp slt i32 %27, %29
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 12
  %rem.i.i = srem i32 %27, %29
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i.i, ptr noundef nonnull @.str.12, i32 noundef %add.i.i) #6
  br label %snd_mtpav_set_name.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp6.i.i = icmp ugt i32 %27, 7
  %mul.i.i = shl i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul.i.i)
  %cmp10.i.i = icmp slt i32 %27, %mul.i.i
  %or.cond.i = select i1 %cmp6.i.i, i1 %cmp10.i.i, i1 false
  br i1 %or.cond.i, label %if.then11.i.i, label %if.else.i.i.if.else19.i.i_crit_edge

if.else.i.i.if.else19.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 12
  %rem16.i.i = srem i32 %27, %29
  %add17.i.i = add nuw nsw i32 %rem16.i.i, 1
  %call18.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name12.i.i, ptr noundef nonnull @.str.13, i32 noundef %add17.i.i) #6
  br label %snd_mtpav_set_name.exit.i

if.else19.i.i:                                    ; preds = %if.else.i.i.if.else19.i.i_crit_edge, %for.body.i.if.else19.i.i_crit_edge
  %30 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_ports.i, align 4
  %mul22.i.i = shl i32 %31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul22.i.i)
  %cmp23.i.i = icmp eq i32 %27, %mul22.i.i
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.else28.i.i

if.then24.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name25.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 12
  %32 = call ptr @memcpy(ptr %name25.i.i, ptr @.str.14, i32 13)
  br label %snd_mtpav_set_name.exit.i

if.else28.i.i:                                    ; preds = %if.else19.i.i
  %add32.i.i = or i32 %mul22.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add32.i.i)
  %cmp33.i.i = icmp eq i32 %27, %add32.i.i
  %name35.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 12
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.else38.i.i

if.then34.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call ptr @memcpy(ptr %name35.i.i, ptr @.str.15, i32 9)
  br label %snd_mtpav_set_name.exit.i

if.else38.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = call ptr @memcpy(ptr %name35.i.i, ptr @.str.16, i32 14)
  br label %snd_mtpav_set_name.exit.i

snd_mtpav_set_name.exit.i:                        ; preds = %if.else38.i.i, %if.then34.i.i, %if.then24.i.i, %if.then11.i.i, %if.then.i.i
  %ops.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.0117.i, i32 0, i32 15
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @snd_mtpav_input, ptr %ops.i, align 4
  %36 = ptrtoint ptr %list.0117.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %list.0.i = load ptr, ptr %list.0117.i, align 4
  %cmp.i.not.i = icmp eq ptr %list.0.i, %substreams.i
  br i1 %cmp.i.not.i, label %snd_mtpav_set_name.exit.i.for.end.i_crit_edge, label %snd_mtpav_set_name.exit.i.for.body.i_crit_edge

snd_mtpav_set_name.exit.i.for.body.i_crit_edge:   ; preds = %snd_mtpav_set_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_mtpav_set_name.exit.i.for.end.i_crit_edge:    ; preds = %snd_mtpav_set_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %snd_mtpav_set_name.exit.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %substreams21.i = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 8, i32 0, i32 2
  %37 = ptrtoint ptr %substreams21.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %list.1118.i = load ptr, ptr %substreams21.i, align 4
  %cmp.i73.not119.i = icmp eq ptr %list.1118.i, %substreams21.i
  br i1 %cmp.i73.not119.i, label %for.end.i.if.end10_crit_edge, label %for.end.i.for.body30.i_crit_edge

for.end.i.for.body30.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body30.i

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body30.i:                                     ; preds = %translate_subdevice_to_hwport.exit.i.for.body30.i_crit_edge, %for.end.i.for.body30.i_crit_edge
  %list.1120.i = phi ptr [ %list.1.i, %translate_subdevice_to_hwport.exit.i.for.body30.i_crit_edge ], [ %list.1118.i, %for.end.i.for.body30.i_crit_edge ]
  %number.i75.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 2
  %38 = ptrtoint ptr %number.i75.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number.i75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i76.i = icmp sgt i32 %39, -1
  br i1 %cmp.i76.i, label %land.lhs.true.i79.i, label %for.body30.i.if.else19.i98.i_crit_edge

for.body30.i.if.else19.i98.i_crit_edge:           ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19.i98.i

land.lhs.true.i79.i:                              ; preds = %for.body30.i
  %40 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp2.i78.i = icmp slt i32 %39, %41
  br i1 %cmp2.i78.i, label %if.then.i84.i, label %if.else.i86.i

if.then.i84.i:                                    ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i80.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 12
  %rem.i81.i = srem i32 %39, %41
  %add.i82.i = add nuw nsw i32 %rem.i81.i, 1
  %call.i83.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i80.i, ptr noundef nonnull @.str.12, i32 noundef %add.i82.i) #6
  br label %snd_mtpav_set_name.exit107.i

if.else.i86.i:                                    ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp6.i85.i = icmp ugt i32 %39, 7
  %mul.i87.i = shl i32 %41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul.i87.i)
  %cmp10.i88.i = icmp slt i32 %39, %mul.i87.i
  %or.cond114.i = select i1 %cmp6.i85.i, i1 %cmp10.i88.i, i1 false
  br i1 %or.cond114.i, label %if.then11.i94.i, label %if.else.i86.i.if.else19.i98.i_crit_edge

if.else.i86.i.if.else19.i98.i_crit_edge:          ; preds = %if.else.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19.i98.i

if.then11.i94.i:                                  ; preds = %if.else.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  %name12.i90.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 12
  %rem16.i91.i = srem i32 %39, %41
  %add17.i92.i = add nuw nsw i32 %rem16.i91.i, 1
  %call18.i93.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name12.i90.i, ptr noundef nonnull @.str.13, i32 noundef %add17.i92.i) #6
  br label %snd_mtpav_set_name.exit107.i

if.else19.i98.i:                                  ; preds = %if.else.i86.i.if.else19.i98.i_crit_edge, %for.body30.i.if.else19.i98.i_crit_edge
  %42 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ports.i, align 4
  %mul22.i96.i = shl i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul22.i96.i)
  %cmp23.i97.i = icmp eq i32 %39, %mul22.i96.i
  br i1 %cmp23.i97.i, label %if.then24.i100.i, label %if.else28.i104.i

if.then24.i100.i:                                 ; preds = %if.else19.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  %name25.i99.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 12
  %44 = call ptr @memcpy(ptr %name25.i99.i, ptr @.str.14, i32 13)
  br label %snd_mtpav_set_name.exit107.i

if.else28.i104.i:                                 ; preds = %if.else19.i98.i
  %add32.i101.i = or i32 %mul22.i96.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add32.i101.i)
  %cmp33.i102.i = icmp eq i32 %39, %add32.i101.i
  %name35.i103.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 12
  br i1 %cmp33.i102.i, label %if.then34.i105.i, label %if.else38.i106.i

if.then34.i105.i:                                 ; preds = %if.else28.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = call ptr @memcpy(ptr %name35.i103.i, ptr @.str.15, i32 9)
  br label %snd_mtpav_set_name.exit107.i

if.else38.i106.i:                                 ; preds = %if.else28.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = call ptr @memcpy(ptr %name35.i103.i, ptr @.str.16, i32 14)
  br label %snd_mtpav_set_name.exit107.i

snd_mtpav_set_name.exit107.i:                     ; preds = %if.else38.i106.i, %if.then34.i105.i, %if.then24.i100.i, %if.then11.i94.i, %if.then.i84.i
  %ops34.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.1120.i, i32 0, i32 15
  %47 = ptrtoint ptr %ops34.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @snd_mtpav_output, ptr %ops34.i, align 4
  %48 = ptrtoint ptr %number.i75.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number.i75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i108.i = icmp slt i32 %49, 0
  br i1 %cmp.i108.i, label %snd_mtpav_set_name.exit107.i.translate_subdevice_to_hwport.exit.i_crit_edge, label %if.else.i110.i

snd_mtpav_set_name.exit107.i.translate_subdevice_to_hwport.exit.i_crit_edge: ; preds = %snd_mtpav_set_name.exit107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %translate_subdevice_to_hwport.exit.i

if.else.i110.i:                                   ; preds = %snd_mtpav_set_name.exit107.i
  %50 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp1.i.i = icmp sgt i32 %51, %49
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i111.i = add nuw nsw i32 %49, 1
  br label %translate_subdevice_to_hwport.exit.i

if.else3.i.i:                                     ; preds = %if.else.i110.i
  %mul.i112.i = shl i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i112.i, i32 %49)
  %cmp5.i.i = icmp sgt i32 %mul.i112.i, %49
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else9.i.i

if.then6.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nuw i32 %49, 9
  %add8.i.i = sub i32 %sub.i.i, %51
  br label %translate_subdevice_to_hwport.exit.i

if.else9.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i112.i, i32 %49)
  %cmp13.i.i = icmp eq i32 %mul.i112.i, %49
  br i1 %cmp13.i.i, label %if.else9.i.i.translate_subdevice_to_hwport.exit.i_crit_edge, label %if.else15.i.i

if.else9.i.i.translate_subdevice_to_hwport.exit.i_crit_edge: ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %translate_subdevice_to_hwport.exit.i

if.else15.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i113.i = add i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i113.i, i32 %49)
  %cmp18.i.i = icmp eq i32 %add17.i113.i, %49
  %..i.i = select i1 %cmp18.i.i, i32 99, i32 0
  br label %translate_subdevice_to_hwport.exit.i

translate_subdevice_to_hwport.exit.i:             ; preds = %if.else15.i.i, %if.else9.i.i.translate_subdevice_to_hwport.exit.i_crit_edge, %if.then6.i.i, %if.then2.i.i, %snd_mtpav_set_name.exit107.i.translate_subdevice_to_hwport.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i111.i, %if.then2.i.i ], [ %add8.i.i, %if.then6.i.i ], [ 1, %snd_mtpav_set_name.exit107.i.translate_subdevice_to_hwport.exit.i_crit_edge ], [ 17, %if.else9.i.i.translate_subdevice_to_hwport.exit.i_crit_edge ], [ %..i.i, %if.else15.i.i ]
  %conv.i = trunc i32 %retval.0.i.i to i8
  %hwport.i = getelementptr %struct.mtpav, ptr %6, i32 0, i32 10, i32 %49, i32 1
  %52 = ptrtoint ptr %hwport.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %hwport.i, align 1
  %53 = ptrtoint ptr %list.1120.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %list.1.i = load ptr, ptr %list.1120.i, align 4
  %cmp.i73.not.i = icmp eq ptr %list.1.i, %substreams21.i
  br i1 %cmp.i73.not.i, label %translate_subdevice_to_hwport.exit.i.if.end10_crit_edge, label %translate_subdevice_to_hwport.exit.i.for.body30.i_crit_edge

translate_subdevice_to_hwport.exit.i.for.body30.i_crit_edge: ; preds = %translate_subdevice_to_hwport.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

translate_subdevice_to_hwport.exit.i.if.end10_crit_edge: ; preds = %translate_subdevice_to_hwport.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %translate_subdevice_to_hwport.exit.i.if.end10_crit_edge, %for.end.i.if.end10_crit_edge
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 3
  %54 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %info_flags.i, align 8
  %or.i = or i32 %55, 7
  store i32 %or.i, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 5
  %56 = call ptr @memcpy(ptr %name.i, ptr @.str.11, i32 12)
  %57 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ports.i, align 4
  %add = add i32 %58, 2
  %inmidiport = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 11
  %59 = ptrtoint ptr %inmidiport to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %inmidiport, align 4
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %64 = load i32, ptr @port, align 4
  %call.i51 = call ptr @__devm_request_region(ptr noundef %63, ptr noundef nonnull @ioport_resource, i32 noundef %64, i32 noundef 3, ptr noundef nonnull @.str.17) #6
  %res_port.i = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 2
  %65 = ptrtoint ptr %res_port.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i51, ptr %res_port.i, align 4
  %tobool.not.i = icmp eq ptr %call.i51, null
  %66 = load i32, ptr @port, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 572, ptr noundef nonnull @.str.18, i32 noundef %66) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %port.i = getelementptr inbounds %struct.mtpav, ptr %6, i32 0, i32 1
  %67 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %port.i, align 4
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %6, align 4
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 27
  %70 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev3.i, align 8
  %72 = load i32, ptr @irq, align 4
  %call.i.i52 = call i32 @devm_request_threaded_irq(ptr noundef %71, i32 noundef %72, ptr noundef nonnull @snd_mtpav_irqh, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool5.not.i = icmp eq i32 %call.i.i52, 0
  %73 = load i32, ptr @irq, align 4
  br i1 %tobool5.not.i, label %if.end14, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 578, ptr noundef nonnull @.str.20, i32 noundef %73) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %irq, align 4
  %75 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 2
  %77 = call ptr @memcpy(ptr %driver, ptr @.str.4, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 3
  %78 = call ptr @memcpy(ptr %shortname, ptr @.str.5, i32 23)
  %longname = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 4
  %79 = load i32, ptr @port, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.6, i32 noundef %79)
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 0) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 1) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 3) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 4) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 5) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 6) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -11) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext 7) #6
  call fastcc void @snd_mtpav_send_byte(ptr noundef %6, i8 noundef zeroext -2) #6
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %6, align 4
  %call21 = call i32 @snd_card_register(ptr noundef %81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end14.cleanup_crit_edge, label %if.end24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %driver_data.i.i, align 4
  %85 = load i32, ptr @irq, align 4
  %86 = load i32, ptr @port, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %85, i32 noundef %86) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end14.cleanup_crit_edge, %if.then6.i, %if.then.i, %if.end3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ %call21, %if.end14.cleanup_crit_edge ], [ %call.i, %if.end3.i.cleanup_crit_edge ], [ -16, %if.then6.i ], [ -16, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mtpav_output_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -68
  %spinlock = getelementptr i8, ptr %t, i32 -52
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  %num_ports = getelementptr i8, ptr %t, i32 52
  %1 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ports, align 4
  %mul24 = shl i32 %2, 1
  %add725 = add i32 %mul24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add725)
  %cmp8.not26 = icmp slt i32 %add725, 0
  br i1 %cmp8.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr i8, ptr %t, i32 56
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %p.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.mtpav_port], ptr %ports, i32 0, i32 %p.027
  %mode = getelementptr inbounds %struct.mtpav_port, ptr %arrayidx, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 2
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %output = getelementptr inbounds %struct.mtpav_port, ptr %arrayidx, i32 0, i32 5
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_mtpav_output_port_write(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %p.027, 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %mul = shl i32 %9, 1
  %add7 = add i32 %mul, 2
  %cmp8.not.not = icmp slt i32 %p.027, %add7
  br i1 %cmp8.not.not, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mtpav_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %istimer = getelementptr inbounds %struct.mtpav, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %istimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %istimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timer.i = getelementptr inbounds %struct.mtpav, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mtpav_output_port_write(ptr nocapture noundef %mtp_card, ptr nocapture noundef %portp, ptr noundef %substream) unnamed_addr #2 align 64 {
entry:
  %outbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %outbyte) #6
  %0 = ptrtoint ptr %outbyte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %outbyte, align 1, !annotation !110
  %call = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %outbyte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwport = getelementptr inbounds %struct.mtpav_port, ptr %portp, i32 0, i32 1
  %1 = ptrtoint ptr %hwport to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hwport, align 1
  %conv = zext i8 %2 to i32
  %outmidihwport = getelementptr inbounds %struct.mtpav, ptr %mtp_card, i32 0, i32 13
  %3 = ptrtoint ptr %outmidihwport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outmidihwport, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp1.not = icmp eq i32 %4, %conv
  br i1 %cmp1.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %outmidihwport to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %outmidihwport, align 4
  call fastcc void @snd_mtpav_send_byte(ptr noundef %mtp_card, i8 noundef zeroext -11)
  %6 = ptrtoint ptr %hwport to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hwport, align 1
  call fastcc void @snd_mtpav_send_byte(ptr noundef %mtp_card, i8 noundef zeroext %7)
  %8 = ptrtoint ptr %outbyte to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %outbyte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %land.lhs.true, label %if.then3.if.end14_crit_edge

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then3
  %running_status = getelementptr inbounds %struct.mtpav_port, ptr %portp, i32 0, i32 3
  %10 = ptrtoint ptr %running_status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %running_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @snd_mtpav_send_byte(ptr noundef %mtp_card, i8 noundef zeroext %11)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %if.then3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %running_status19 = getelementptr inbounds %struct.mtpav_port, ptr %portp, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %if.end14
  %12 = ptrtoint ptr %outbyte to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %outbyte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool17.not = icmp sgt i8 %13, -1
  br i1 %tobool17.not, label %do.body.if.end20_crit_edge, label %if.then18

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %running_status19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %running_status19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body.if.end20_crit_edge
  call fastcc void @snd_mtpav_send_byte(ptr noundef %mtp_card, i8 noundef zeroext %13)
  %call21 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %outbyte, i32 noundef 1) #6
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %if.end20.do.body_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %outbyte) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mtpav_send_byte(ptr nocapture noundef readonly %chip, i8 noundef zeroext %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i.i = getelementptr inbounds %struct.mtpav, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %1, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not8.i = icmp slt i8 %3, 0
  br i1 %tobool.not8.i, label %entry.snd_mtpav_wait_rfdhi.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.snd_mtpav_wait_rfdhi.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_wait_rfdhi.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %counts.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 10000, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %counts.09.i, -1
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 4
  %add.i5.i = add i32 %5, 1
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add2.i7.i = or i32 %and.i6.i, -18874368
  %6 = inttoptr i32 %add2.i7.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp slt i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %while.body.i.snd_mtpav_wait_rfdhi.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.snd_mtpav_wait_rfdhi.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_wait_rfdhi.exit

snd_mtpav_wait_rfdhi.exit:                        ; preds = %while.body.i.snd_mtpav_wait_rfdhi.exit_crit_edge, %entry.snd_mtpav_wait_rfdhi.exit_crit_edge
  %9 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i.i, align 4
  %add13.i = add i32 %10, 2
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %11 = inttoptr i32 %add15.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %13 = and i8 %12, 24
  %14 = or i8 %13, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i.i, align 4
  %and.i = and i32 %16, 1048575
  %add6.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %byte) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i.i, align 4
  %add.i = add i32 %19, 2
  %and.i11 = and i32 %add.i, 1048575
  %add6.i12 = or i32 %and.i11, -18874368
  %20 = inttoptr i32 %add6.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %13) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i.i, align 4
  %add.i14 = add i32 %22, 2
  %and.i15 = and i32 %add.i14, 1048575
  %add6.i16 = or i32 %and.i15, -18874368
  %23 = inttoptr i32 %add6.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %14) #6, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_input_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %mode = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 2
  %8 = or i8 %7, 1
  store i8 %8, ptr %mode, align 2
  %input = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 4
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %input, align 4
  %share_irq = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %share_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %share_irq, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %share_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %port.i = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 2
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 20) #6, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_input_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %mode = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 2
  %8 = and i8 %7, -2
  store i8 %8, ptr %mode, align 2
  %input = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 4
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %input, align 4
  %share_irq = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %share_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %share_irq, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %share_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %port.i = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 2
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mtpav_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %mode7 = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode7, align 2
  %8 = and i8 %7, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %.sink = or i8 %8, %masksel
  store i8 %.sink, ptr %mode7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_output_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %mode = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 2
  %8 = or i8 %7, 2
  store i8 %8, ptr %mode, align 2
  %output = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 5
  %9 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %output, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %mode = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 2
  %8 = and i8 %7, -3
  store i8 %8, ptr %mode, align 2
  %output = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 5
  %9 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %output, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mtpav_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %mode15 = getelementptr %struct.mtpav, ptr %3, i32 0, i32 10, i32 %5, i32 2
  %6 = ptrtoint ptr %mode15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode15, align 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.then.if.then27_crit_edge

if.then.if.then27_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then7:                                         ; preds = %if.then
  %istimer = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %istimer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %istimer, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %istimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then10, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %timer.i = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %11, 1
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7.if.end_crit_edge
  %12 = ptrtoint ptr %mode15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode15, align 2
  %14 = or i8 %13, 8
  store i8 %14, ptr %mode15, align 2
  br label %if.then27

if.else:                                          ; preds = %entry
  %15 = and i8 %7, -9
  %16 = ptrtoint ptr %mode15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %mode15, align 2
  %istimer19 = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %istimer19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %istimer19, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %istimer19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp20 = icmp eq i32 %dec, 0
  br i1 %cmp20, label %if.then22, label %if.end28.critedge

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %timer.i42 = getelementptr inbounds %struct.mtpav, ptr %3, i32 0, i32 7
  %call.i43 = tail call i32 @del_timer(ptr noundef %timer.i42) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  br label %if.end28

if.then27:                                        ; preds = %if.end, %if.then.if.then27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  %19 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmidi, align 4
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i, align 4
  %23 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number, align 4
  %arrayidx.i = getelementptr %struct.mtpav, ptr %22, i32 0, i32 10, i32 %24
  %spinlock.i = getelementptr inbounds %struct.mtpav, ptr %22, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  tail call fastcc void @snd_mtpav_output_port_write(ptr noundef %22, ptr noundef %arrayidx.i, ptr noundef %substream) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #6
  br label %if.end28

if.end28.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %if.then27, %if.then22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mtpav_irqh(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %inbyte.addr.i29.i.i = alloca i8, align 1
  %inbyte.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.mtpav, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %port.i.i = getelementptr inbounds %struct.mtpav, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %1, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.snd_mtpav_read_bytes.exit_crit_edge, label %if.end.i

entry.snd_mtpav_read_bytes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_read_bytes.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i.i, align 4
  %add13.i.i = add i32 %6, 2
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %7 = inttoptr i32 %add15.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %9 = and i8 %8, 20
  %10 = or i8 %9, 8
  %inmidistate.i.i = getelementptr inbounds %struct.mtpav, ptr %dev_id, i32 0, i32 12
  %num_ports20.i.i.i = getelementptr inbounds %struct.mtpav, ptr %dev_id, i32 0, i32 9
  %inmidiport.i.i = getelementptr inbounds %struct.mtpav, ptr %dev_id, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %snd_mtpav_inmidi_h.exit.i.do.body.i_crit_edge, %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i.i, align 4
  %add.i43.i = add i32 %12, 2
  %and.i44.i = and i32 %add.i43.i, 1048575
  %add6.i.i = or i32 %and.i44.i, -18874368
  %13 = inttoptr i32 %add6.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #6, !srcloc !115
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i.i, align 4
  %add.i46.i = add i32 %15, 1
  %and.i47.i = and i32 %add.i46.i, 1048575
  %add2.i48.i = or i32 %and.i47.i, -18874368
  %16 = inttoptr i32 %add2.i48.i to ptr
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i.i, align 4
  %add.i50.i = add i32 %19, 2
  %and.i51.i = and i32 %add.i50.i, 1048575
  %add6.i52.i = or i32 %and.i51.i, -18874368
  %20 = inttoptr i32 %add6.i52.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %9) #6, !srcloc !115
  %21 = lshr i8 %17, 4
  %22 = and i8 %21, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i.i, align 4
  %add.i43.1.i = add i32 %24, 2
  %and.i44.1.i = and i32 %add.i43.1.i, 1048575
  %add6.i.1.i = or i32 %and.i44.1.i, -18874368
  %25 = inttoptr i32 %add6.i.1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %10) #6, !srcloc !115
  %26 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i.i, align 4
  %add.i46.1.i = add i32 %27, 1
  %and.i47.1.i = and i32 %add.i46.1.i, 1048575
  %add2.i48.1.i = or i32 %and.i47.1.i, -18874368
  %28 = inttoptr i32 %add2.i48.1.i to ptr
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i.i, align 4
  %add.i50.1.i = add i32 %31, 2
  %and.i51.1.i = and i32 %add.i50.1.i, 1048575
  %add6.i52.1.i = or i32 %and.i51.1.i, -18874368
  %32 = inttoptr i32 %add6.i52.1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %9) #6, !srcloc !115
  %33 = lshr i8 %29, 2
  %34 = and i8 %33, 12
  %conv17.1.i = or i8 %34, %22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i.i, align 4
  %add.i43.2.i = add i32 %36, 2
  %and.i44.2.i = and i32 %add.i43.2.i, 1048575
  %add6.i.2.i = or i32 %and.i44.2.i, -18874368
  %37 = inttoptr i32 %add6.i.2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %10) #6, !srcloc !115
  %38 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i.i, align 4
  %add.i46.2.i = add i32 %39, 1
  %and.i47.2.i = and i32 %add.i46.2.i, 1048575
  %add2.i48.2.i = or i32 %and.i47.2.i, -18874368
  %40 = inttoptr i32 %add2.i48.2.i to ptr
  %41 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i.i, align 4
  %add.i50.2.i = add i32 %43, 2
  %and.i51.2.i = and i32 %add.i50.2.i, 1048575
  %add6.i52.2.i = or i32 %and.i51.2.i, -18874368
  %44 = inttoptr i32 %add6.i52.2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %9) #6, !srcloc !115
  %45 = and i8 %41, 48
  %conv17.2.i = or i8 %conv17.1.i, %45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i.i, align 4
  %add.i43.3.i = add i32 %47, 2
  %and.i44.3.i = and i32 %add.i43.3.i, 1048575
  %add6.i.3.i = or i32 %and.i44.3.i, -18874368
  %48 = inttoptr i32 %add6.i.3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %10) #6, !srcloc !115
  %49 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i.i, align 4
  %add.i46.3.i = add i32 %50, 1
  %and.i47.3.i = and i32 %add.i46.3.i, 1048575
  %add2.i48.3.i = or i32 %and.i47.3.i, -18874368
  %51 = inttoptr i32 %add2.i48.3.i to ptr
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i.i, align 4
  %add.i50.3.i = add i32 %54, 2
  %and.i51.3.i = and i32 %add.i50.3.i, 1048575
  %add6.i52.3.i = or i32 %and.i51.3.i, -18874368
  %55 = inttoptr i32 %add6.i52.3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %9) #6, !srcloc !115
  %56 = shl i8 %52, 2
  %57 = and i8 %56, -64
  %conv17.3.i = or i8 %conv17.2.i, %57
  %conv.i.i = zext i8 %conv17.3.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %conv17.3.i)
  %cmp.i.i = icmp ugt i8 %conv17.3.i, -9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inbyte.addr.i.i.i) #6
  %58 = ptrtoint ptr %inbyte.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv17.3.i, ptr %inbyte.addr.i.i.i, align 1
  %59 = ptrtoint ptr %inmidiport.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inmidiport.i.i, align 4
  %61 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_ports20.i.i.i, align 4
  %mul.i.i.i = shl i32 %62, 1
  %add.i.i.i = add i32 %mul.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %60, %add.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_inmidi_process.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %mode.i.i.i = getelementptr %struct.mtpav, ptr %dev_id, i32 0, i32 10, i32 %60, i32 2
  %63 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mode.i.i.i, align 2
  %65 = and i8 %64, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_inmidi_process.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %input.i.i.i = getelementptr %struct.mtpav, ptr %dev_id, i32 0, i32 10, i32 %60, i32 4
  %66 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %input.i.i.i, align 4
  %call.i.i.i = call i32 @snd_rawmidi_receive(ptr noundef %67, ptr noundef nonnull %inbyte.addr.i.i.i, i32 noundef 1) #6
  br label %snd_mtpav_inmidi_process.exit.i.i

snd_mtpav_inmidi_process.exit.i.i:                ; preds = %if.then2.i.i.i, %if.end.i.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge, %if.then.i.i.snd_mtpav_inmidi_process.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inbyte.addr.i.i.i) #6
  br label %snd_mtpav_inmidi_h.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %68 = ptrtoint ptr %inmidistate.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %inmidistate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp2.i.i = icmp eq i32 %69, 0
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.then13.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %conv17.3.i)
  %cmp6.i.i = icmp eq i8 %conv17.3.i, -11
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %inmidistate.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %inmidistate.i.i, align 4
  br label %snd_mtpav_inmidi_h.exit.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inbyte.addr.i29.i.i) #6
  %71 = ptrtoint ptr %inbyte.addr.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv17.3.i, ptr %inbyte.addr.i29.i.i, align 1
  %72 = ptrtoint ptr %inmidiport.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %inmidiport.i.i, align 4
  %74 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ports20.i.i.i, align 4
  %mul.i32.i.i = shl i32 %75, 1
  %add.i33.i.i = add i32 %mul.i32.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add.i33.i.i)
  %cmp.i34.i.i = icmp sgt i32 %73, %add.i33.i.i
  br i1 %cmp.i34.i.i, label %if.else.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge, label %if.end.i37.i.i

if.else.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_inmidi_process.exit41.i.i

if.end.i37.i.i:                                   ; preds = %if.else.i.i
  %mode.i35.i.i = getelementptr %struct.mtpav, ptr %dev_id, i32 0, i32 10, i32 %73, i32 2
  %76 = ptrtoint ptr %mode.i35.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mode.i35.i.i, align 2
  %78 = and i8 %77, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i36.i.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i36.i.i, label %if.end.i37.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge, label %if.then2.i40.i.i

if.end.i37.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge: ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_inmidi_process.exit41.i.i

if.then2.i40.i.i:                                 ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %input.i38.i.i = getelementptr %struct.mtpav, ptr %dev_id, i32 0, i32 10, i32 %73, i32 4
  %79 = ptrtoint ptr %input.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %input.i38.i.i, align 4
  %call.i39.i.i = call i32 @snd_rawmidi_receive(ptr noundef %80, ptr noundef nonnull %inbyte.addr.i29.i.i, i32 noundef 1) #6
  br label %snd_mtpav_inmidi_process.exit41.i.i

snd_mtpav_inmidi_process.exit41.i.i:              ; preds = %if.then2.i40.i.i, %if.end.i37.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge, %if.else.i.i.snd_mtpav_inmidi_process.exit41.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inbyte.addr.i29.i.i) #6
  br label %snd_mtpav_inmidi_h.exit.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17.3.i)
  %cmp.i42.i.i = icmp eq i8 %conv17.3.i, 0
  br i1 %cmp.i42.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_ports20.i.i.i, align 4
  %add.i44.i.i = add i32 %82, 2
  br label %translate_hwport_to_subdevice.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv17.3.i)
  %cmp1.i.i.i = icmp ult i8 %conv17.3.i, 9
  br i1 %cmp1.i.i.i, label %if.then2.i45.i.i, label %if.else6.i.i.i

if.then2.i45.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %83 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_ports20.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv.i.i)
  %cmp4.not.not.i.i.i = icmp slt i32 %84, %conv.i.i
  %spec.store.select.i.i.i = select i1 %cmp4.not.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %translate_hwport_to_subdevice.exit.i.i

if.else6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %conv17.3.i)
  %cmp7.i.i.i = icmp ult i8 %conv17.3.i, 17
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.else17.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub9.i.i.i = add nsw i32 %conv.i.i, -9
  %85 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_ports20.i.i.i, align 4
  %add11.i.i.i = add i32 %sub9.i.i.i, %86
  %mul.i46.i.i = shl i32 %86, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i, i32 %mul.i46.i.i)
  %cmp13.not.i.i.i = icmp slt i32 %add11.i.i.i, %mul.i46.i.i
  %spec.select.i.i.i = select i1 %cmp13.not.i.i.i, i32 %add11.i.i.i, i32 %86
  br label %translate_hwport_to_subdevice.exit.i.i

if.else17.i.i.i:                                  ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %conv17.3.i)
  %cmp18.i.i.i = icmp ne i8 %conv17.3.i, 17
  %87 = ptrtoint ptr %num_ports20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ports20.i.i.i, align 4
  %add24.i.i.i = zext i1 %cmp18.i.i.i to i32
  %spec.select39.i.i.i = add i32 %88, %add24.i.i.i
  br label %translate_hwport_to_subdevice.exit.i.i

translate_hwport_to_subdevice.exit.i.i:           ; preds = %if.else17.i.i.i, %if.then8.i.i.i, %if.then2.i45.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i44.i.i, %if.then.i.i.i ], [ %spec.store.select.i.i.i, %if.then2.i45.i.i ], [ %spec.select.i.i.i, %if.then8.i.i.i ], [ %spec.select39.i.i.i, %if.else17.i.i.i ]
  %89 = ptrtoint ptr %inmidiport.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i.i.i, ptr %inmidiport.i.i, align 4
  %90 = ptrtoint ptr %inmidistate.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %inmidistate.i.i, align 4
  br label %snd_mtpav_inmidi_h.exit.i

snd_mtpav_inmidi_h.exit.i:                        ; preds = %translate_hwport_to_subdevice.exit.i.i, %snd_mtpav_inmidi_process.exit41.i.i, %if.then8.i.i, %snd_mtpav_inmidi_process.exit.i.i
  %91 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port.i.i, align 4
  %add.i54.i = add i32 %92, 1
  %and.i55.i = and i32 %add.i54.i, 1048575
  %add2.i56.i = or i32 %and.i55.i, -18874368
  %93 = inttoptr i32 %add2.i56.i to ptr
  %94 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %93) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %95 = and i8 %94, 8
  %tobool21.not.i = icmp eq i8 %95, 0
  br i1 %tobool21.not.i, label %snd_mtpav_inmidi_h.exit.i.snd_mtpav_read_bytes.exit_crit_edge, label %snd_mtpav_inmidi_h.exit.i.do.body.i_crit_edge

snd_mtpav_inmidi_h.exit.i.do.body.i_crit_edge:    ; preds = %snd_mtpav_inmidi_h.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

snd_mtpav_inmidi_h.exit.i.snd_mtpav_read_bytes.exit_crit_edge: ; preds = %snd_mtpav_inmidi_h.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_mtpav_read_bytes.exit

snd_mtpav_read_bytes.exit:                        ; preds = %snd_mtpav_inmidi_h.exit.i.snd_mtpav_read_bytes.exit_crit_edge, %entry.snd_mtpav_read_bytes.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !60, !62, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/drivers/mtpav.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/drivers/mtpav.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/drivers/mtpav.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/drivers/mtpav.c", i32 68, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype193, !8, !"__UNIQUE_ID_indextype193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index194, !11, !"__UNIQUE_ID_index194", i1 false, i1 false}
!11 = !{!"../sound/drivers/mtpav.c", i32 69, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/drivers/mtpav.c", i32 70, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype195, !13, !"__UNIQUE_ID_idtype195", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id196, !16, !"__UNIQUE_ID_id196", i1 false, i1 false}
!16 = !{!"../sound/drivers/mtpav.c", i32 71, i32 1}
!17 = !{ptr @__param_port, !18, !"__param_port", i1 false, i1 false}
!18 = !{!"../sound/drivers/mtpav.c", i32 72, i32 1}
!19 = !{ptr @__UNIQUE_ID_porttype197, !18, !"__UNIQUE_ID_porttype197", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_port198, !21, !"__UNIQUE_ID_port198", i1 false, i1 false}
!21 = !{!"../sound/drivers/mtpav.c", i32 73, i32 1}
!22 = !{ptr @__param_irq, !23, !"__param_irq", i1 false, i1 false}
!23 = !{!"../sound/drivers/mtpav.c", i32 74, i32 1}
!24 = !{ptr @__UNIQUE_ID_irqtype199, !23, !"__UNIQUE_ID_irqtype199", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_irq200, !26, !"__UNIQUE_ID_irq200", i1 false, i1 false}
!26 = !{!"../sound/drivers/mtpav.c", i32 75, i32 1}
!27 = !{ptr @__param_hwports, !28, !"__param_hwports", i1 false, i1 false}
!28 = !{!"../sound/drivers/mtpav.c", i32 76, i32 1}
!29 = !{ptr @__UNIQUE_ID_hwportstype201, !28, !"__UNIQUE_ID_hwportstype201", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_hwports202, !31, !"__UNIQUE_ID_hwports202", i1 false, i1 false}
!31 = !{!"../sound/drivers/mtpav.c", i32 77, i32 1}
!32 = !{ptr @__initcall__kmod_snd_mtpav__203_759_alsa_card_mtpav_init6, !33, !"__initcall__kmod_snd_mtpav__203_759_alsa_card_mtpav_init6", i1 false, i1 false}
!33 = !{!"../sound/drivers/mtpav.c", i32 759, i32 1}
!34 = !{ptr @__exitcall_alsa_card_mtpav_exit, !35, !"__exitcall_alsa_card_mtpav_exit", i1 false, i1 false}
!35 = !{!"../sound/drivers/mtpav.c", i32 760, i32 1}
!36 = !{ptr @device, !37, !"device", i1 false, i1 false}
!37 = !{!"../sound/drivers/mtpav.c", i32 79, i32 32}
!38 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!39 = !{ptr @index, !40, !"index", i1 false, i1 false}
!40 = !{!"../sound/drivers/mtpav.c", i32 62, i32 12}
!41 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!42 = !{ptr @id, !43, !"id", i1 false, i1 false}
!43 = !{!"../sound/drivers/mtpav.c", i32 63, i32 14}
!44 = !{ptr @__param_str_port, !18, !"__param_str_port", i1 false, i1 false}
!45 = !{ptr @port, !46, !"port", i1 false, i1 false}
!46 = !{!"../sound/drivers/mtpav.c", i32 64, i32 13}
!47 = !{ptr @__param_str_irq, !23, !"__param_str_irq", i1 false, i1 false}
!48 = !{ptr @irq, !49, !"irq", i1 false, i1 false}
!49 = !{!"../sound/drivers/mtpav.c", i32 65, i32 12}
!50 = !{ptr @__param_str_hwports, !28, !"__param_str_hwports", i1 false, i1 false}
!51 = !{ptr @hwports, !52, !"hwports", i1 false, i1 false}
!52 = !{!"../sound/drivers/mtpav.c", i32 66, i32 12}
!53 = !{ptr @.str, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/drivers/mtpav.c", i32 729, i32 11}
!55 = !{ptr @snd_mtpav_driver, !56, !"snd_mtpav_driver", i1 false, i1 false}
!56 = !{!"../sound/drivers/mtpav.c", i32 726, i32 31}
!57 = !{ptr @snd_mtpav_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../sound/drivers/mtpav.c", i32 688, i32 2}
!59 = !{ptr @.str.1, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @snd_mtpav_probe.__key.2, !61, !"__key", i1 false, i1 false}
!61 = !{!"../sound/drivers/mtpav.c", i32 694, i32 2}
!62 = !{ptr @.str.3, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.4, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/drivers/mtpav.c", i32 708, i32 23}
!65 = !{ptr @.str.5, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/drivers/mtpav.c", i32 709, i32 26}
!67 = !{ptr @.str.6, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/drivers/mtpav.c", i32 711, i32 4}
!69 = !{ptr @.str.7, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/drivers/mtpav.c", i32 720, i32 2}
!71 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @snd_mtpav_probe._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_mtpav_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/drivers/mtpav.c", i32 634, i32 38}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/drivers/mtpav.c", i32 656, i32 25}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/drivers/mtpav.c", i32 610, i32 28}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/drivers/mtpav.c", i32 612, i32 28}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/drivers/mtpav.c", i32 614, i32 27}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/drivers/mtpav.c", i32 616, i32 27}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/drivers/mtpav.c", i32 618, i32 27}
!89 = !{ptr @snd_mtpav_input, !90, !"snd_mtpav_input", i1 false, i1 false}
!90 = !{!"../sound/drivers/mtpav.c", i32 595, i32 37}
!91 = !{ptr @snd_mtpav_output, !92, !"snd_mtpav_output", i1 false, i1 false}
!92 = !{!"../sound/drivers/mtpav.c", i32 589, i32 37}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/drivers/mtpav.c", i32 569, i32 20}
!95 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/drivers/mtpav.c", i32 572, i32 3}
!97 = !{ptr @.str.19, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/drivers/mtpav.c", i32 577, i32 9}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/drivers/mtpav.c", i32 578, i32 3}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i64 4215563}
!112 = !{i64 2153111097}
!113 = !{i64 2153111390}
!114 = !{i64 2153111780}
!115 = !{i64 4215168}
