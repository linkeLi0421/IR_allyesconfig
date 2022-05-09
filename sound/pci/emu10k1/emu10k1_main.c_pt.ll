; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1_main.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_emu_chip_details = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.77, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.77 = type { ptr }
%struct.snd_util_memhdr = type { i32, %struct.list_head, i32, i32, i32, %struct.mutex }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware242 = internal constant [33 x i8] c"snd_emu10k1.firmware=emu/hana.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [39 x i8] c"snd_emu10k1.firmware=emu/audio_dock.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [37 x i8] c"snd_emu10k1.firmware=emu/emu1010b.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [39 x i8] c"snd_emu10k1.firmware=emu/micro_dock.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [36 x i8] c"snd_emu10k1.firmware=emu/emu0404.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware247 = internal constant [45 x i8] c"snd_emu10k1.firmware=emu/emu1010_notebook.fw\00", section ".modinfo", align 1
@snd_emu10k1_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&emu->reg_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&emu->emu_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&emu->spi_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&emu->i2c_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&emu->voice_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&emu->synth_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&emu->memblk_lock\00", [46 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&emu->fx8010.lock\00", [46 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&emu->emu1010.firmware_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&emu->emu1010.firmware_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 1, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_emu10k1\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_emu10k1_create\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/pci/emu10k1/emu10k1_main.c\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"vendor = 0x%x, device = 0x%x, subsystem_vendor_id = 0x%x, subsystem_id = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@emu_chip_details = internal constant { [48 x %struct.snd_emu_chip_details], [512 x i8] } { [48 x %struct.snd_emu_chip_details] [%struct.snd_emu_chip_details { i32 4354, i32 8, i32 270799106, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @.str.62, ptr @.str.63, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 270602498, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @.str.62, ptr @.str.64, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 268505346, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.65, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 536940802, i8 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, ptr @.str.62, ptr @.str.66, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 1107366146, i8 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.67, ptr @.str.68 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 1074008322, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.69, ptr @.str.68 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 1074204930, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.70, ptr @.str.68 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 1073811714, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.71, ptr @.str.68 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 1073877250, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.72, ptr @.str.73 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 1073877250, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.74, ptr @.str.73 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 1074073858, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.75, ptr @.str.73 }, %struct.snd_emu_chip_details { i32 4354, i32 8, i32 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.76, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 537334018, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.77, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 537268482, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr @.str.62, ptr @.str.78, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 537202946, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr @.str.62, ptr @.str.79, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 537006338, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr @.str.62, ptr @.str.80, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 536940802, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr @.str.62, ptr @.str.81, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 268898562, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @.str.62, ptr @.str.82, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 268767490, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.83, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 268636418, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr @.str.62, ptr @.str.84, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 268570882, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, ptr @.str.62, ptr @.str.85, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 0, i8 4, i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.62, ptr @.str.86, ptr @.str.62 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 5443842, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.87, ptr @.str.88, ptr @.str.87 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 5378306, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.87, ptr @.str.89, ptr @.str.87 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 5312770, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.87, ptr @.str.90, ptr @.str.87 }, %struct.snd_emu_chip_details { i32 4354, i32 4, i32 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.87, ptr @.str.91, ptr @.str.87 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 269095170, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.92, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140466942, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.94, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140532478, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.95, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140598014, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.96, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140794622, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.97, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140860158, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.92, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2140925694, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.98, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2141122302, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.99, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2142170878, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.100, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2143284990, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.101, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2144202494, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.102, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2144268030, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.103, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2144857854, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.104, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2144923390, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.105, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2144988926, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.106, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2145185534, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.107, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 -2145251070, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.108, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 1073811714, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.109, ptr @.str.110 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 2167042, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.111, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 2101506, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.112, ptr @.str.93 }, %struct.snd_emu_chip_details { i32 4354, i32 2, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.113, ptr @.str.93 }, %struct.snd_emu_chip_details zeroinitializer], [512 x i8] zeroinitializer }, align 32
@snd_emu10k1_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.21, i32 1829, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"emu10k1: Card not recognised\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_create._entry_ptr = internal global ptr @snd_emu10k1_create._entry, section ".printk_index", align 4
@snd_emu10k1_create.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.26, i8 1, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sound card name = %s\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.27, i8 1, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Sound card name = %s, vendor = 0x%x, device = 0x%x, subsystem = 0x%x. Forced to subsystem = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.28, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Sound card name = %s, vendor = 0x%x, device = 0x%x, subsystem = 0x%x.\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_emu10k1_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.21, i32 1860, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"architecture does not support PCI busmaster DMA with mask 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_emu10k1_create._entry_ptr.31 = internal global ptr @snd_emu10k1_create._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMU10K1\00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.33, i8 1, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"page table address range is %.8lx:%.8lx\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_emu10k1_create.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.34, i8 1, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"silent page range is %.8lx:%.8lx\0A\00", [62 x i8] zeroinitializer }, align 32
@saved_regs = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\00\01\02\03\05\04\06\07\08\09\0A\0B\0C\0D\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1EBCEFGIJKPQTUV^_`abcde\FF", [45 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.21, i32 750, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"emu1010: Loading Audio Dock Firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emu1010_firmware_work\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr = internal global ptr @emu1010_firmware_work._entry, section ".printk_index", align 4
@emu1010_firmware_work._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.21, i32 760, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"emu1010: EMU_HANA+DOCK_IRQ_STATUS = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.40 = internal global ptr @emu1010_firmware_work._entry.38, section ".printk_index", align 4
@emu1010_firmware_work._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.21, i32 764, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"emu1010: EMU_HANA+DOCK_ID = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.43 = internal global ptr @emu1010_firmware_work._entry.41, section ".printk_index", align 4
@emu1010_firmware_work._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.21, i32 769, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"emu1010: Loading Audio Dock Firmware file failed, reg = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.46 = internal global ptr @emu1010_firmware_work._entry.44, section ".printk_index", align 4
@emu1010_firmware_work._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.21, i32 773, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"emu1010: Audio Dock Firmware loaded\0A\00", [59 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.49 = internal global ptr @emu1010_firmware_work._entry.47, section ".printk_index", align 4
@emu1010_firmware_work._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.21, i32 776, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Audio Dock ver: %u.%u\0A\00", [41 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.52 = internal global ptr @emu1010_firmware_work._entry.50, section ".printk_index", align 4
@emu1010_firmware_work._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.36, ptr @.str.21, i32 784, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"emu1010: Audio Dock detached\0A\00", [34 x i8] zeroinitializer }, align 32
@emu1010_firmware_work._entry_ptr.55 = internal global ptr @emu1010_firmware_work._entry.53, section ".printk_index", align 4
@firmware_names = internal constant { [5 x [2 x ptr]], [56 x i8] } { [5 x [2 x ptr]] [[2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.56, ptr @.str.57], [2 x ptr] [ptr @.str.58, ptr @.str.59], [2 x ptr] [ptr @.str.60, ptr @.str.59], [2 x ptr] [ptr @.str.61, ptr null]], [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emu/hana.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emu/audio_dock.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emu/emu1010b.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emu/micro_dock.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"emu/emu1010_notebook.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emu/emu0404.fw\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Audigy2\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Audigy 5/Rx [SB1550]\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SB Audigy 4 [SB0610]\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SB Audigy 2 Value [SB0400]\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Audigy 2 ZS Notebook [SB0530]\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"E-mu 1010 Notebook [MAEM8950]\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMU1010\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"E-mu 1010b PCI [MAEM8960]\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"E-mu 1010 PCIe [MAEM8986]\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"E-mu 1010 [MAEM8810]\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"E-mu 0404b PCI [MAEM8852]\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMU0404\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"E-mu 0404 [MAEM8850]\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"E-mu 0404 PCIe [MAEM8984]\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SB Audigy 2 Value [Unknown]\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SB Audigy 4 PRO [SB0380]\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SB Audigy 2 [SB0350b]\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SB Audigy 2 ZS [SB0350a]\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Audigy 2 ZS [SB0350]\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Audigy 2 ZS [SB0360]\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SB Audigy 2 [SB0240]\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Audigy 2 Platinum EX [SB0280]\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Audigy 2 ZS [SB0353]\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SB Audigy 2 Platinum [SB0240P]\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SB Audigy 2 [Unknown]\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Audigy\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SB Audigy 1 [SB0092]\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Audigy 1 ES [SB0160]\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SB Audigy 1 [SB0090]\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Audigy 1 [Unknown]\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SB Live! 5.1 [SB0220]\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Live\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SB Live! [SB0105]\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [SB0103]\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [SB0101]\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SB Live! 5.1 Dell OEM [SB0228]\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SB Live! 5.1\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SB Live! 5.1 [SB0060]\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4850]\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SB Live! Platinum [CT4760P]\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4871]\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4831]\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4870]\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4832]\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4830]\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SB PCI512 [CT4790]\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4780]\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"E-mu APS [PC545]\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"APS\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SB Live! [CT4620]\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SB Live! Value [CT4670]\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SB Live! [Unknown]\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1_detect_iommu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.21, i32 1762, ptr @.str.116, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"non-passthrough IOMMU detected, widening DMA allocations\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_emu10k1_detect_iommu\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@snd_emu10k1_detect_iommu._entry_ptr = internal global ptr @snd_emu10k1_detect_iommu._entry, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.21, i32 833, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emu1010: Special config.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_emu10k1_emu1010_init\00", [39 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr = internal global ptr @snd_emu10k1_emu1010_init._entry, section ".printk_index", align 4
@snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.118, ptr @.str.21, ptr @.str.119, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg1 = 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.118, ptr @.str.21, ptr @.str.120, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg2 = 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str.21, i32 870, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"emu1010: FPGA failed to return to programming mode\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.123 = internal global ptr @snd_emu10k1_emu1010_init._entry.121, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.118, ptr @.str.21, i32 873, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"emu1010: EMU_HANA_ID = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.126 = internal global ptr @snd_emu10k1_emu1010_init._entry.124, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.118, ptr @.str.21, i32 877, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"emu1010: Loading Firmware failed\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.129 = internal global ptr @snd_emu10k1_emu1010_init._entry.127, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.118, ptr @.str.21, i32 887, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"emu1010: Loading Hana Firmware file failed, reg = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.132 = internal global ptr @snd_emu10k1_emu1010_init._entry.130, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.118, ptr @.str.21, i32 891, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"emu1010: Hana Firmware loaded\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.135 = internal global ptr @snd_emu10k1_emu1010_init._entry.133, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.118, ptr @.str.21, i32 894, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"emu1010: Hana version: %u.%u\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.138 = internal global ptr @snd_emu10k1_emu1010_init._entry.136, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.118, ptr @.str.21, i32 899, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"emu1010: Card options = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.141 = internal global ptr @snd_emu10k1_emu1010_init._entry.139, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.118, ptr @.str.21, i32 901, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.143 = internal global ptr @snd_emu10k1_emu1010_init._entry.142, section ".printk_index", align 4
@snd_emu10k1_emu1010_init._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.118, ptr @.str.21, i32 940, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"emu1010: Card options3 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_emu10k1_emu1010_init._entry_ptr.146 = internal global ptr @snd_emu10k1_emu1010_init._entry.144, section ".printk_index", align 4
@snd_emu10k1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.21, i32 205, ptr @.str.37, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Audigy2 value: Special config.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_emu10k1_init\00", [47 x i8] zeroinitializer }, align 32
@snd_emu10k1_init._entry_ptr = internal global ptr @snd_emu10k1_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 32, i64 33, i64 50176]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1789, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1790, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1791, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1792, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1793, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1794, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1795, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1796, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1803, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1808, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"emu_chip_details\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1273, i32 42 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1829, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1834, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1836, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1841, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1858, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1868, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1880, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1894, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [11 x i8] c"saved_regs\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2003, i32 28 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 749, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 759, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 763, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 767, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 772, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 776, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 784, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [15 x i8] c"firmware_names\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 697, i32 27 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 699, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 699, i32 18 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 702, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 702, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 705, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 708, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1283, i32 13 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1283, i32 32 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1329, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1347, i32 32 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1386, i32 32 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1396, i32 32 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1397, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1406, i32 32 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1415, i32 32 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1424, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1432, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1433, i32 9 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1440, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1448, i32 32 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1456, i32 32 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1463, i32 32 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1476, i32 32 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1488, i32 32 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1498, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1508, i32 32 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1526, i32 32 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1536, i32 32 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1546, i32 32 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1556, i32 32 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1567, i32 32 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1575, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1575, i32 31 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1581, i32 31 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1588, i32 31 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1594, i32 31 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1600, i32 32 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1601, i32 9 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1606, i32 32 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1612, i32 32 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1618, i32 32 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1627, i32 32 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1640, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1647, i32 32 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1655, i32 32 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1661, i32 32 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1666, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1672, i32 32 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1678, i32 32 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1685, i32 32 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1691, i32 32 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1697, i32 32 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1703, i32 32 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1709, i32 32 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1710, i32 9 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1714, i32 32 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1720, i32 32 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1726, i32 32 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1761, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 833, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 858, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 866, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 869, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 873, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 877, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 885, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 891, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 894, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 899, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 901, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 940, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [36 x i8] c"../sound/pci/emu10k1/emu10k1_main.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 205, i32 3 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_firmware247, ptr @emu1010_firmware_work._entry, ptr @emu1010_firmware_work._entry.38, ptr @emu1010_firmware_work._entry.41, ptr @emu1010_firmware_work._entry.44, ptr @emu1010_firmware_work._entry.47, ptr @emu1010_firmware_work._entry.50, ptr @emu1010_firmware_work._entry.53, ptr @emu1010_firmware_work._entry_ptr, ptr @emu1010_firmware_work._entry_ptr.40, ptr @emu1010_firmware_work._entry_ptr.43, ptr @emu1010_firmware_work._entry_ptr.46, ptr @emu1010_firmware_work._entry_ptr.49, ptr @emu1010_firmware_work._entry_ptr.52, ptr @emu1010_firmware_work._entry_ptr.55, ptr @snd_emu10k1_create._entry, ptr @snd_emu10k1_create._entry.29, ptr @snd_emu10k1_create._entry_ptr, ptr @snd_emu10k1_create._entry_ptr.31, ptr @snd_emu10k1_detect_iommu._entry, ptr @snd_emu10k1_detect_iommu._entry_ptr, ptr @snd_emu10k1_emu1010_init._entry, ptr @snd_emu10k1_emu1010_init._entry.121, ptr @snd_emu10k1_emu1010_init._entry.124, ptr @snd_emu10k1_emu1010_init._entry.127, ptr @snd_emu10k1_emu1010_init._entry.130, ptr @snd_emu10k1_emu1010_init._entry.133, ptr @snd_emu10k1_emu1010_init._entry.136, ptr @snd_emu10k1_emu1010_init._entry.139, ptr @snd_emu10k1_emu1010_init._entry.142, ptr @snd_emu10k1_emu1010_init._entry.144, ptr @snd_emu10k1_emu1010_init._entry_ptr, ptr @snd_emu10k1_emu1010_init._entry_ptr.123, ptr @snd_emu10k1_emu1010_init._entry_ptr.126, ptr @snd_emu10k1_emu1010_init._entry_ptr.129, ptr @snd_emu10k1_emu1010_init._entry_ptr.132, ptr @snd_emu10k1_emu1010_init._entry_ptr.135, ptr @snd_emu10k1_emu1010_init._entry_ptr.138, ptr @snd_emu10k1_emu1010_init._entry_ptr.141, ptr @snd_emu10k1_emu1010_init._entry_ptr.143, ptr @snd_emu10k1_emu1010_init._entry_ptr.146, ptr @snd_emu10k1_init._entry, ptr @snd_emu10k1_init._entry_ptr, ptr @snd_emu10k1_create.__key, ptr @.str, ptr @snd_emu10k1_create.__key.1, ptr @.str.2, ptr @snd_emu10k1_create.__key.3, ptr @.str.4, ptr @snd_emu10k1_create.__key.5, ptr @.str.6, ptr @snd_emu10k1_create.__key.7, ptr @.str.8, ptr @snd_emu10k1_create.__key.9, ptr @.str.10, ptr @snd_emu10k1_create.__key.11, ptr @.str.12, ptr @snd_emu10k1_create.__key.13, ptr @.str.14, ptr @snd_emu10k1_create.__key.15, ptr @.str.16, ptr @snd_emu10k1_create.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @emu_chip_details, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @saved_regs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @firmware_names, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.145, ptr @.str.147, ptr @.str.148], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_chip_details to i32), i32 2112, i32 2624, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu1010_firmware_work._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_detect_iommu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_emu1010_init._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_init(ptr noundef %emu, i32 noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 18, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 24, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 3, i32 noundef %ch, i32 noundef 65535) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 2, i32 noundef %ch, i32 noundef 65535) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 1, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 0, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 9, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 6, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 7, i32 noundef %ch, i32 noundef 16) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 8, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 5, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 4, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 11, i32 noundef %ch, i32 noundef 839909376) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 21, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 22, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 25, i32 noundef %ch, i32 noundef 65535) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 26, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 27, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 28, i32 noundef %ch, i32 noundef 24) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 29, i32 noundef %ch, i32 noundef 24) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 30, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 23, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 19, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 17, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 16, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 20, i32 noundef %ch, i32 noundef 0) #6
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 76, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 77, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 78, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 79, i32 noundef %ch, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 126, i32 noundef %ch, i32 noundef 50462976) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 124, i32 noundef %ch, i32 noundef 1061109567) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 125, i32 noundef %ch, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_done(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 0) #6, !srcloc !299
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ch.047 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 18, i32 noundef %ch.047, i32 noundef 0) #6
  %inc = add nuw nsw i32 %ch.047, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.for.body4_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %ch.148 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 3, i32 noundef %ch.148, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 2, i32 noundef %ch.148, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 1, i32 noundef %ch.148, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 0, i32 noundef %ch.148, i32 noundef 0) #6
  %inc6 = add nuw nsw i32 %ch.148, 1
  %exitcond49.not = icmp eq i32 %inc6, 64
  br i1 %exitcond49.not, label %for.end7, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.end7:                                         ; preds = %for.body4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 73, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 69, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 75, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 71, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 67, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 74, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 70, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 68, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 65, i32 noundef 0, i32 noundef 0) #6
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %3 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 83, i32 noundef 0, i32 noundef 131072) #6
  br label %if.end

if.else:                                          ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 82, i32 noundef 0, i32 noundef 32768) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 88, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 89, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 92, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 93, i32 noundef 0, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !300
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add12 = add i32 %6, 20
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %7 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 234881024) #6, !srcloc !299
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 64, i32 noundef 0, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_create(ptr noundef %card, ptr noundef %pci, i16 noundef zeroext %extin_mask, i16 noundef zeroext %extout_mask, i32 noundef %max_cache_bytes, i32 noundef %enable_ir, i32 noundef %subsystem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %2 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snd_emu10k1_free, ptr %private_free, align 4
  %card1 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %card1, align 4
  %reg_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_emu10k1_create.__key, i16 noundef signext 3) #6
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  tail call void @__raw_spin_lock_init(ptr noundef %emu_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_emu10k1_create.__key.1, i16 noundef signext 3) #6
  %spi_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %spi_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_emu10k1_create.__key.3, i16 noundef signext 3) #6
  %i2c_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 45
  tail call void @__raw_spin_lock_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_emu10k1_create.__key.5, i16 noundef signext 3) #6
  %voice_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 43
  tail call void @__raw_spin_lock_init(ptr noundef %voice_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_emu10k1_create.__key.7, i16 noundef signext 3) #6
  %synth_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %synth_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @snd_emu10k1_create.__key.9, i16 noundef signext 3) #6
  %memblk_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %memblk_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_emu10k1_create.__key.11, i16 noundef signext 3) #6
  %fx8010 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28
  %lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_emu10k1_create.__key.13) #6
  %mapped_link_head = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mapped_link_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mapped_link_head, ptr %mapped_link_head, align 4
  %prev.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mapped_link_head, ptr %prev.i, align 4
  %mapped_order_link_head = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %mapped_order_link_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mapped_order_link_head, ptr %mapped_order_link_head, align 4
  %prev.i632 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %prev.i632 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mapped_order_link_head, ptr %prev.i632, align 4
  %pci30 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %pci30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pci, ptr %pci30, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %1, align 4
  %synth = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 39
  %10 = ptrtoint ptr %synth to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %synth, align 4
  %get_synth_voice = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %get_synth_voice to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %get_synth_voice, align 4
  %firmware_work = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7
  tail call void @__init_work(ptr noundef %firmware_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %firmware_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %firmware_work, align 4
  %lockdep_map = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_emu10k1_create.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry42 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i633 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i633 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry42, ptr %prev.i633, align 4
  %func = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @emu1010_firmware_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @snd_emu10k1_create.__key.17) #6
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision, align 4
  %conv = zext i8 %17 to i32
  %revision55 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %revision55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %revision55, align 4
  %serial = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 6
  %call56 = tail call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 44, ptr noundef %serial) #6
  %model = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 7
  %call57 = tail call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 46, ptr noundef %model) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then62)) #6
          to label %do.end70 [label %if.then62], !srcloc !301

if.then62:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor, align 8
  %conv63 = zext i16 %22 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device, align 2
  %conv64 = zext i16 %24 to i32
  %25 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %serial, align 4
  %27 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %model, align 4
  %conv67 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug250, ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef %conv63, i32 noundef %conv64, i32 noundef %26, i32 noundef %conv67) #6
  br label %do.end70

do.end70:                                         ; preds = %if.then62, %if.end
  %vendor74 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %29 = ptrtoint ptr %vendor74 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vendor74, align 8
  %conv75 = zext i16 %30 to i32
  %device79 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subsystem)
  %tobool84.not = icmp eq i32 %subsystem, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end70
  %31 = phi i32 [ 4354, %do.end70 ], [ %46, %for.inc.for.body_crit_edge ]
  %c.0663 = phi ptr [ @emu_chip_details, %do.end70 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv75)
  %cmp76 = icmp eq i32 %31, %conv75
  br i1 %cmp76, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %device78 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 1
  %32 = ptrtoint ptr %device78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device78, align 4
  %34 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device79, align 2
  %conv80 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv80)
  %cmp81 = icmp eq i32 %33, %conv80
  br i1 %cmp81, label %if.then83, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then83:                                        ; preds = %land.lhs.true
  %subsystem94 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 2
  %36 = ptrtoint ptr %subsystem94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %subsystem94, align 4
  br i1 %tobool84.not, label %if.else93, label %if.then85

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool87.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %subsystem)
  %cmp90 = icmp eq i32 %37, %subsystem
  %or.cond = and i1 %tobool87.not, %cmp90
  br i1 %or.cond, label %if.end124.thread, label %if.then85.for.inc_crit_edge

if.then85.for.inc_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end124.thread:                                 ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %card_capabilities641 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %card_capabilities641 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %c.0663, ptr %card_capabilities641, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then162)) #6
          to label %if.end199 [label %if.then162], !srcloc !301

if.else93:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool95.not = icmp eq i32 %37, 0
  br i1 %tobool95.not, label %if.else93.if.end102_crit_edge, label %land.lhs.true96

if.else93.if.end102_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

land.lhs.true96:                                  ; preds = %if.else93
  %39 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %40)
  %cmp99.not = icmp eq i32 %37, %40
  br i1 %cmp99.not, label %land.lhs.true96.if.end102_crit_edge, label %land.lhs.true96.for.inc_crit_edge

land.lhs.true96.for.inc_crit_edge:                ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true96.if.end102_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true96.if.end102_crit_edge, %if.else93.if.end102_crit_edge
  %revision103 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 3
  %41 = ptrtoint ptr %revision103 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revision103, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool105.not = icmp eq i8 %42, 0
  br i1 %tobool105.not, label %if.end102.if.end124_crit_edge, label %land.lhs.true106

if.end102.if.end124_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

land.lhs.true106:                                 ; preds = %if.end102
  %conv104 = zext i8 %42 to i32
  %43 = ptrtoint ptr %revision55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %revision55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv104)
  %cmp110.not = icmp eq i32 %44, %conv104
  br i1 %cmp110.not, label %land.lhs.true106.if.end124_crit_edge, label %land.lhs.true106.for.inc_crit_edge

land.lhs.true106.for.inc_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true106.if.end124_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

for.inc:                                          ; preds = %land.lhs.true106.for.inc_crit_edge, %land.lhs.true96.for.inc_crit_edge, %if.then85.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.snd_emu_chip_details, ptr %c.0663, i32 1
  %45 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr, align 4
  %tobool72.not = icmp eq i32 %46, 0
  br i1 %tobool72.not, label %do.end122, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end122:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %dev123 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %47 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev123, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end124:                                        ; preds = %land.lhs.true106.if.end124_crit_edge, %if.end102.if.end124_crit_edge
  %subsystem94.le = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 2
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %c.0663, ptr %card_capabilities, align 4
  %50 = ptrtoint ptr %subsystem94.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %subsystem94.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool126.not.not = icmp eq i32 %51, 0
  br i1 %tobool126.not.not, label %do.body175, label %do.body130

do.body130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then142)) #6
          to label %if.end199 [label %if.then142], !srcloc !301

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  %dev143 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %52 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev143, align 8
  %name = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 21
  %54 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug251, ptr noundef %53, ptr noundef nonnull @.str.26, ptr noundef %55) #6
  br label %if.end199

if.then162:                                       ; preds = %if.end124.thread
  call void @__sanitizer_cov_trace_pc() #8
  %subsystem86.le = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 2
  %dev163 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %56 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev163, align 8
  %name164 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 21
  %58 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name164, align 4
  %60 = ptrtoint ptr %vendor74 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vendor74, align 8
  %conv166 = zext i16 %61 to i32
  %62 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %device79, align 2
  %conv168 = zext i16 %63 to i32
  %64 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %serial, align 4
  %66 = ptrtoint ptr %subsystem86.le to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %subsystem86.le, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug252, ptr noundef %57, ptr noundef nonnull @.str.27, ptr noundef %59, i32 noundef %conv166, i32 noundef %conv168, i32 noundef %65, i32 noundef %67) #6
  br label %if.end199

do.body175:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then187)) #6
          to label %if.end199 [label %if.then187], !srcloc !301

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  %dev188 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %68 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev188, align 8
  %name189 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 21
  %70 = ptrtoint ptr %name189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name189, align 4
  %72 = ptrtoint ptr %vendor74 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vendor74, align 8
  %conv191 = zext i16 %73 to i32
  %74 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %device79, align 2
  %conv193 = zext i16 %75 to i32
  %76 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %serial, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug253, ptr noundef %69, ptr noundef nonnull @.str.28, ptr noundef %71, i32 noundef %conv191, i32 noundef %conv193, i32 noundef %77) #6
  br label %if.end199

if.end199:                                        ; preds = %if.then187, %do.body175, %if.then162, %if.then142, %do.body130, %if.end124.thread
  %card_capabilities646 = phi ptr [ %card_capabilities641, %if.then162 ], [ %card_capabilities, %if.then187 ], [ %card_capabilities, %if.then142 ], [ %card_capabilities, %do.body130 ], [ %card_capabilities641, %if.end124.thread ], [ %card_capabilities, %do.body175 ]
  %id = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 1
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool200.not = icmp eq i8 %79, 0
  br i1 %tobool200.not, label %land.lhs.true201, label %if.end199.if.end209_crit_edge

if.end199.if.end209_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

land.lhs.true201:                                 ; preds = %if.end199
  %id202 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 22
  %80 = ptrtoint ptr %id202 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %id202, align 4
  %tobool203.not = icmp eq ptr %81, null
  br i1 %tobool203.not, label %land.lhs.true201.if.end209_crit_edge, label %if.then204

land.lhs.true201.if.end209_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then204:                                       ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = tail call i32 @strscpy(ptr noundef %id, ptr noundef nonnull %81, i32 noundef 16) #6
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %land.lhs.true201.if.end209_crit_edge, %if.end199.if.end209_crit_edge
  %emu10k2_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %c.0663, i32 0, i32 5
  %82 = ptrtoint ptr %emu10k2_chip to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %emu10k2_chip, align 2
  %conv210 = zext i8 %83 to i32
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %audigy to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv210, ptr %audigy, align 4
  %iommu_workaround.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 12
  %85 = ptrtoint ptr %iommu_workaround.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %iommu_workaround.i, align 4
  %86 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 27
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 8
  %call.i = tail call zeroext i1 @iommu_present(ptr noundef %91) #6
  br i1 %call.i, label %if.end.i, label %if.end209.snd_emu10k1_detect_iommu.exit_crit_edge

if.end209.snd_emu10k1_detect_iommu.exit_crit_edge: ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_emu10k1_detect_iommu.exit

if.end.i:                                         ; preds = %if.end209
  %92 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %card1, align 4
  %dev2.i = getelementptr inbounds %struct.snd_card, ptr %93, i32 0, i32 27
  %94 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2.i, align 8
  %call3.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %95) #6
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end.i_crit_edge, label %land.lhs.true.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %96 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %cmp.i = icmp eq i32 %97, 4
  br i1 %cmp.i, label %land.lhs.true.i.snd_emu10k1_detect_iommu.exit_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i.snd_emu10k1_detect_iommu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_emu10k1_detect_iommu.exit

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %98 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card1, align 4
  %dev7.i = getelementptr inbounds %struct.snd_card, ptr %99, i32 0, i32 27
  %100 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev7.i, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %101, ptr noundef nonnull @.str.114) #9
  %102 = ptrtoint ptr %iommu_workaround.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %iommu_workaround.i, align 4
  br label %snd_emu10k1_detect_iommu.exit

snd_emu10k1_detect_iommu.exit:                    ; preds = %do.end.i, %land.lhs.true.i.snd_emu10k1_detect_iommu.exit_crit_edge, %if.end209.snd_emu10k1_detect_iommu.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool211.not = icmp eq i8 %83, 0
  %cond = zext i1 %tobool211.not to i32
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 10
  %103 = ptrtoint ptr %address_mode to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond, ptr %address_mode, align 4
  %cond214 = select i1 %tobool211.not, i32 2147483647, i32 -1
  %dma_mask = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 11
  %104 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond214, ptr %dma_mask, align 4
  %dev215 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %conv217 = zext i32 %cond214 to i64
  %call.i634 = tail call i32 @dma_set_mask(ptr noundef %dev215, i64 noundef %conv217) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i634)
  %cmp.i635 = icmp eq i32 %call.i634, 0
  br i1 %cmp.i635, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %snd_emu10k1_detect_iommu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev215, i64 noundef %conv217) #6
  br label %if.end227

dma_set_mask_and_coherent.exit:                   ; preds = %snd_emu10k1_detect_iommu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i634)
  %cmp219 = icmp slt i32 %call.i634, 0
  br i1 %cmp219, label %do.end224, label %dma_set_mask_and_coherent.exit.if.end227_crit_edge

dma_set_mask_and_coherent.exit.if.end227_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

do.end224:                                        ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev225 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %105 = ptrtoint ptr %dev225 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev225, align 8
  %107 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.30, i32 noundef %108) #9
  br label %cleanup

if.end227:                                        ; preds = %dma_set_mask_and_coherent.exit.if.end227_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %spec.select = select i1 %tobool211.not, i32 256, i32 1024
  %109 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 29
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select, ptr %109, align 4
  %call233 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.end227.cleanup_crit_edge, label %if.end237

if.end227.cleanup_crit_edge:                      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end237:                                        ; preds = %if.end227
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %111 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %resource, align 8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %113 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %port, align 4
  %shr = ashr i32 %max_cache_bytes, 12
  %max_cache_pages = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 14
  %114 = ptrtoint ptr %max_cache_pages to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shr, ptr %max_cache_pages, align 4
  %115 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool239.not = icmp eq i32 %116, 0
  %mul = select i1 %tobool239.not, i32 16384, i32 32768
  %ptb_pages = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16
  %call241 = tail call i32 @snd_emu10k1_alloc_pages_maybe_wider(ptr noundef %1, i32 noundef %mul, ptr noundef %ptb_pages) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %if.end237.cleanup_crit_edge, label %do.body246

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body246:                                       ; preds = %if.end237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then258)) #6
          to label %do.end266 [label %if.then258], !srcloc !301

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  %dev259 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %117 = ptrtoint ptr %dev259 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev259, align 8
  %addr = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16, i32 2
  %119 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addr, align 4
  %bytes = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16, i32 3
  %121 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bytes, align 4
  %add = add i32 %122, %120
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug254, ptr noundef %118, ptr noundef nonnull @.str.33, i32 noundef %120, i32 noundef %add) #6
  br label %do.end266

do.end266:                                        ; preds = %if.then258, %do.body246
  %123 = ptrtoint ptr %max_cache_pages to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_cache_pages, align 4
  %125 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %124, i32 4) #6
  %126 = extractvalue { i32, i1 } %125, 1
  %127 = extractvalue { i32, i1 } %125, 0
  %retval.0.i637 = select i1 %126, i32 -1, i32 %127
  %call269 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i637) #10
  %page_ptr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 22
  %128 = ptrtoint ptr %page_ptr_table to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call269, ptr %page_ptr_table, align 4
  %129 = ptrtoint ptr %max_cache_pages to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_cache_pages, align 4
  %131 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %130, i32 4) #6
  %132 = extractvalue { i32, i1 } %131, 1
  %133 = extractvalue { i32, i1 } %131, 0
  %retval.0.i638 = select i1 %132, i32 -1, i32 %133
  %call272 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i638) #10
  %page_addr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 23
  %134 = ptrtoint ptr %page_addr_table to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call272, ptr %page_addr_table, align 4
  %135 = ptrtoint ptr %page_ptr_table to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %page_ptr_table, align 4
  %tobool274.not = icmp eq ptr %136, null
  %tobool276.not = icmp eq ptr %call272, null
  %or.cond616 = select i1 %tobool274.not, i1 true, i1 %tobool276.not
  br i1 %or.cond616, label %do.end266.cleanup_crit_edge, label %if.end278

do.end266.cleanup_crit_edge:                      ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end278:                                        ; preds = %do.end266
  %silent_page279 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15
  %call280 = tail call i32 @snd_emu10k1_alloc_pages_maybe_wider(ptr noundef %1, i32 noundef 4096, ptr noundef %silent_page279) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %cmp281 = icmp slt i32 %call280, 0
  br i1 %cmp281, label %if.end278.cleanup_crit_edge, label %do.body285

if.end278.cleanup_crit_edge:                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body285:                                       ; preds = %if.end278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_create, %if.then297)) #6
          to label %do.end308 [label %if.then297], !srcloc !301

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  %dev298 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %137 = ptrtoint ptr %dev298 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev298, align 8
  %addr300 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 2
  %139 = ptrtoint ptr %addr300 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %addr300, align 4
  %bytes304 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 3
  %141 = ptrtoint ptr %bytes304 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bytes304, align 4
  %add305 = add i32 %142, %140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_create.__UNIQUE_ID_ddebug255, ptr noundef %138, ptr noundef nonnull @.str.34, i32 noundef %140, i32 noundef %add305) #6
  br label %do.end308

do.end308:                                        ; preds = %if.then297, %do.body285
  %143 = ptrtoint ptr %max_cache_pages to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_cache_pages, align 4
  %mul310 = shl i32 %144, 12
  %call311 = tail call ptr @snd_util_memhdr_new(i32 noundef %mul310) #6
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 19
  %145 = ptrtoint ptr %memhdr to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call311, ptr %memhdr, align 4
  %tobool313.not = icmp eq ptr %call311, null
  br i1 %tobool313.not, label %do.end308.cleanup_crit_edge, label %if.end315

do.end308.cleanup_crit_edge:                      ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end315:                                        ; preds = %do.end308
  %block_extra_size = getelementptr inbounds %struct.snd_util_memhdr, ptr %call311, i32 0, i32 4
  %146 = ptrtoint ptr %block_extra_size to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 36, ptr %block_extra_size, align 4
  tail call void @pci_set_master(ptr noundef %pci) #6
  %147 = ptrtoint ptr %fx8010 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 12351, ptr %fx8010, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %extin_mask)
  %cmp319 = icmp eq i16 %extin_mask, 0
  %spec.store.select = select i1 %cmp319, i16 16335, i16 %extin_mask
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %extout_mask)
  %cmp324 = icmp eq i16 %extout_mask, 0
  %spec.store.select434 = select i1 %cmp324, i16 32767, i16 %extout_mask
  %extin_mask329 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 1
  %148 = ptrtoint ptr %extin_mask329 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %spec.store.select, ptr %extin_mask329, align 2
  %extout_mask331 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 2
  %149 = ptrtoint ptr %extout_mask331 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %spec.store.select434, ptr %extout_mask331, align 4
  %enable_ir332 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 2
  %150 = trunc i32 %enable_ir to i8
  %151 = ptrtoint ptr %enable_ir332 to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load = load i8, ptr %enable_ir332, align 4
  %bf.value = shl i8 %150, 5
  %bf.shl = and i8 %bf.value, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %enable_ir332, align 4
  %152 = ptrtoint ptr %card_capabilities646 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %card_capabilities646, align 4
  %ca_cardbus_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %ca_cardbus_chip to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ca_cardbus_chip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool334.not = icmp eq i8 %155, 0
  br i1 %tobool334.not, label %if.end315.if.end341_crit_edge, label %if.then335

if.end315.if.end341_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end341

if.then335:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_emu10k1_cardbus_init(ptr noundef %1)
  br label %if.end341

if.end341:                                        ; preds = %if.then335, %if.end315.if.end341_crit_edge
  %156 = ptrtoint ptr %card_capabilities646 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %card_capabilities646, align 4
  %ecard = getelementptr inbounds %struct.snd_emu_chip_details, ptr %157, i32 0, i32 14
  %158 = ptrtoint ptr %ecard to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ecard, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool343.not = icmp eq i8 %159, 0
  br i1 %tobool343.not, label %if.else350, label %if.then344

if.then344:                                       ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_emu10k1_ecard_init(ptr noundef %1)
  br label %if.end361

if.else350:                                       ; preds = %if.end341
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %157, i32 0, i32 15
  %160 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool352.not = icmp eq i8 %161, 0
  br i1 %tobool352.not, label %if.else359, label %if.then353

if.then353:                                       ; preds = %if.else350
  %call354 = tail call fastcc i32 @snd_emu10k1_emu1010_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %cmp355 = icmp slt i32 %call354, 0
  br i1 %cmp355, label %if.then353.cleanup_crit_edge, label %if.then353.if.end361_crit_edge

if.then353.if.end361_crit_edge:                   ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end361

if.then353.cleanup_crit_edge:                     ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else359:                                       ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 95, i32 noundef 0, i32 noundef 48) #6
  br label %if.end361

if.end361:                                        ; preds = %if.else359, %if.then353.if.end361_crit_edge, %if.then344
  %itram_size = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 4
  %162 = ptrtoint ptr %itram_size to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 8192, ptr %itram_size, align 4
  %area = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 5, i32 1
  %163 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %area, align 4
  %bytes366 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 28, i32 5, i32 3
  %164 = ptrtoint ptr %bytes366 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %bytes366, align 4
  %irq368 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %165 = ptrtoint ptr %irq368 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %irq368, align 4
  %call.i639 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev215, i32 noundef %166, ptr noundef nonnull @snd_emu10k1_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i639)
  %tobool370.not = icmp eq i32 %call.i639, 0
  br i1 %tobool370.not, label %if.end372, label %if.end361.cleanup_crit_edge

if.end361.cleanup_crit_edge:                      ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end372:                                        ; preds = %if.end361
  %167 = ptrtoint ptr %irq368 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %irq368, align 4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %1, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %170 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %168, ptr %sync_irq, align 4
  %spdif_bits = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 25
  %arrayidx376 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 25, i32 2
  %171 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 34640388, ptr %arrayidx376, align 4
  %arrayidx378 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 25, i32 1
  %172 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 34640388, ptr %arrayidx378, align 4
  %173 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 34640388, ptr %spdif_bits, align 4
  %area382 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 1
  %174 = ptrtoint ptr %area382 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %area382, align 4
  %bytes384 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 3
  %176 = ptrtoint ptr %bytes384 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bytes384, align 4
  %178 = call ptr @memset(ptr %175, i32 0, i32 %177)
  %addr386 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 2
  %179 = ptrtoint ptr %addr386 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %addr386, align 4
  %181 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %address_mode, align 4
  %shl = shl i32 %180, %182
  %area389 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16, i32 1
  %183 = ptrtoint ptr %area389 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %area389, align 4
  br label %for.body396

for.body396:                                      ; preds = %for.body396.for.body396_crit_edge, %if.end372
  %idx.0667 = phi i32 [ 0, %if.end372 ], [ %inc, %for.body396.for.body396_crit_edge ]
  %or = or i32 %idx.0667, %shl
  %185 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx397 = getelementptr i32, ptr %184, i32 %idx.0667
  %186 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %arrayidx397, align 4
  %inc = add nuw nsw i32 %idx.0667, 1
  %187 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool392.not = icmp eq i32 %188, 0
  %cond393 = select i1 %tobool392.not, i32 4096, i32 8192
  %cmp394 = icmp ult i32 %inc, %cond393
  br i1 %cmp394, label %for.body396.for.body396_crit_edge, label %for.body396.for.body403_crit_edge

for.body396.for.body403_crit_edge:                ; preds = %for.body396
  br label %for.body403

for.body396.for.body396_crit_edge:                ; preds = %for.body396
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body396

for.body403:                                      ; preds = %for.body403.for.body403_crit_edge, %for.body396.for.body403_crit_edge
  %idx.1668 = phi i32 [ %inc409, %for.body403.for.body403_crit_edge ], [ 0, %for.body396.for.body403_crit_edge ]
  %arrayidx404 = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 46, i32 %idx.1668
  %189 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %1, ptr %arrayidx404, align 4
  %number = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 46, i32 %idx.1668, i32 1
  %190 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %idx.1668, ptr %number, align 4
  %inc409 = add nuw nsw i32 %idx.1668, 1
  %exitcond.not = icmp eq i32 %inc409, 64
  br i1 %exitcond.not, label %for.end410, label %for.body403.for.body403_crit_edge

for.body403.for.body403_crit_edge:                ; preds = %for.body403
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body403

for.end410:                                       ; preds = %for.body403
  tail call fastcc void @snd_emu10k1_init(ptr noundef %1, i32 noundef %enable_ir)
  %call416 = tail call fastcc i32 @alloc_pm_buffer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %cmp417 = icmp slt i32 %call416, 0
  br i1 %cmp417, label %for.end410.cleanup_crit_edge, label %if.end420

for.end410.cleanup_crit_edge:                     ; preds = %for.end410
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end420:                                        ; preds = %for.end410
  %call421 = tail call i32 @snd_emu10k1_init_efx(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %cmp422 = icmp slt i32 %call421, 0
  br i1 %cmp422, label %if.end420.cleanup_crit_edge, label %if.end425

if.end420.cleanup_crit_edge:                      ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end425:                                        ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_emu10k1_audio_enable(ptr noundef %1)
  %call426 = tail call i32 @snd_emu10k1_proc_init(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end425, %if.end420.cleanup_crit_edge, %for.end410.cleanup_crit_edge, %if.end361.cleanup_crit_edge, %if.then353.cleanup_crit_edge, %do.end308.cleanup_crit_edge, %if.end278.cleanup_crit_edge, %do.end266.cleanup_crit_edge, %if.end237.cleanup_crit_edge, %if.end227.cleanup_crit_edge, %do.end224, %do.end122, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end122 ], [ -6, %do.end224 ], [ 0, %if.end425 ], [ %call, %entry.cleanup_crit_edge ], [ %call233, %if.end227.cleanup_crit_edge ], [ -12, %if.end237.cleanup_crit_edge ], [ -12, %do.end266.cleanup_crit_edge ], [ -12, %if.end278.cleanup_crit_edge ], [ -12, %do.end308.cleanup_crit_edge ], [ %call354, %if.then353.cleanup_crit_edge ], [ -16, %if.end361.cleanup_crit_edge ], [ %call416, %for.end410.cleanup_crit_edge ], [ %call421, %if.end420.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_emu10k1_fx8010_tram_setup(ptr noundef %1, i32 noundef 0) #6
  %call1 = tail call i32 @snd_emu10k1_done(ptr noundef %1)
  tail call void @snd_emu10k1_free_efx(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %1, i32 noundef 4, i32 noundef 0) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %firmware_work = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 52, i32 7
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %firmware_work) #6
  %firmware = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 76
  %8 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %firmware, align 4
  tail call void @release_firmware(ptr noundef %9) #6
  %dock_fw = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 77
  %10 = ptrtoint ptr %dock_fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dock_fw, align 4
  tail call void @release_firmware(ptr noundef %11) #6
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memhdr, align 4
  tail call void @snd_util_memhdr_free(ptr noundef %13) #6
  %area = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %area, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %silent_page = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15
  tail call void @snd_dma_free_pages(ptr noundef %silent_page) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %area11 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %area11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area11, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %ptb_pages = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 16
  tail call void @snd_dma_free_pages(ptr noundef %ptb_pages) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %page_ptr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %page_ptr_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_ptr_table, align 4
  tail call void @vfree(ptr noundef %19) #6
  %page_addr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %page_addr_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page_addr_table, align 4
  tail call void @vfree(ptr noundef %21) #6
  %saved_ptr.i = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 78
  %22 = ptrtoint ptr %saved_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_ptr.i, align 4
  tail call void @vfree(ptr noundef %23) #6
  tail call void @snd_emu10k1_efx_free_pm_buffer(ptr noundef %1) #6
  %24 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip.i = getelementptr inbounds %struct.snd_emu_chip_details, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %ca0151_chip.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ca0151_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.end15.free_pm_buffer.exit_crit_edge, label %if.then.i

if.end15.free_pm_buffer.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pm_buffer.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_p16v_free_pm_buffer(ptr noundef %1) #6
  br label %free_pm_buffer.exit

free_pm_buffer.exit:                              ; preds = %if.then.i, %if.end15.free_pm_buffer.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emu1010_firmware_work(ptr noundef %work) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #6
  %1 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp2, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !302
  %add.ptr = getelementptr i8, ptr %work, i32 -3796
  %card = getelementptr i8, ptr %work, i32 -2220
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %shutdown = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend = getelementptr i8, ptr %work, i32 3456
  %7 = ptrtoint ptr %suspend to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %suspend, align 4, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull %tmp) #6
  %call5 = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 33, ptr noundef nonnull %reg) #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end4
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.35) #9
  %call9 = call i32 @snd_emu1010_fpga_write(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 1) #6
  %dock_fw = getelementptr i8, ptr %work, i32 3420
  %call10 = call fastcc i32 @snd_emu1010_load_firmware(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %dock_fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end.next_crit_edge, label %if.end12

do.end.next_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end12:                                         ; preds = %do.end
  %call13 = call i32 @snd_emu1010_fpga_write(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 0) #6
  %call14 = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull %tmp) #6
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev19 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19, align 8
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %20) #9
  %call20 = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 34, ptr noundef nonnull %tmp) #6
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev25, align 8
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.42, i32 noundef %26) #9
  %27 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp, align 4
  %and26 = and i32 %28, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 21
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %dev39 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev39, align 8
  br i1 %cmp27.not, label %do.end37, label %do.end31

do.end31:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.45, i32 noundef %28) #9
  br label %next

do.end37:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.48) #9
  %call40 = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 37, ptr noundef nonnull %tmp) #6
  %call41 = call i32 @snd_emu1010_fpga_read(ptr noundef %add.ptr, i32 noundef 38, ptr noundef nonnull %tmp2) #6
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %dev46 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev46, align 8
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp, align 4
  %39 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.51, i32 noundef %38, i32 noundef %40) #9
  call void @msleep(i32 noundef 10) #6
  %call47 = call i32 @snd_emu1010_fpga_write(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 1) #6
  br label %next

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool48.not = icmp eq i32 %10, 0
  br i1 %tobool48.not, label %land.lhs.true, label %if.else.next_crit_edge

if.else.next_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

land.lhs.true:                                    ; preds = %if.else
  %last_reg = getelementptr i8, ptr %work, i32 100
  %41 = ptrtoint ptr %last_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not = icmp eq i32 %42, 0
  br i1 %tobool49.not, label %land.lhs.true.next_crit_edge, label %do.end53

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

do.end53:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %dev55 = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev55, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.54) #9
  %call56 = call i32 @snd_emu1010_fpga_write(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 1) #6
  br label %next

next:                                             ; preds = %do.end53, %land.lhs.true.next_crit_edge, %if.else.next_crit_edge, %do.end37, %do.end31, %do.end.next_crit_edge
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg, align 4
  %last_reg60 = getelementptr i8, ptr %work, i32 100
  %49 = ptrtoint ptr %last_reg60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %last_reg60, align 4
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %shutdown62 = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %shutdown62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shutdown62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool63.not = icmp eq i32 %53, 0
  br i1 %tobool63.not, label %if.then64, label %next.cleanup_crit_edge

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64:                                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work, i32 noundef 100) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %next.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_alloc_pages_maybe_wider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_util_memhdr_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_cardbus_init(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 53248) #6, !srcloc !299
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 16830464) #6, !srcloc !299
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !310
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 1593888768) #6, !srcloc !299
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 2130759680) #6, !srcloc !299
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 2130743296) #6, !srcloc !299
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 113, i32 noundef 0, i32 noundef -16843010) #6
  tail call void @msleep(i32 noundef 200) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_ecard_init(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ecard_ctrl = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 9
  %0 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 535104, ptr %ecard_ctrl, align 4
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !317
  tail call void @arm_heavy_mb() #6
  %5 = or i32 %4, 16777472
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add5 = add i32 %7, 20
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !299
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add11 = add i32 %10, 20
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %11 = inttoptr i32 %add13 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef 17472)
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef 20544)
  tail call void @snd_emu10k1_wait(ptr noundef %emu, i32 noundef 48000) #6
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef 17472)
  %13 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ecard_ctrl, align 4
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %14)
  %15 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ecard_ctrl, align 4
  %and.i = and i32 %16, -65
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %and.i) #6
  %17 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ecard_ctrl, align 4
  %and2.i = and i32 %18, -65
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %and2.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %bit.01.i = phi i32 [ 32768, %entry ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ecard_ctrl, align 4
  %and4.i = and i32 %20, -321
  %and5.i = and i32 %bit.01.i, 50372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %and4.i, 256
  %spec.select.i = select i1 %tobool6.not.i, i32 %and4.i, i32 %or.i
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %spec.select.i) #6
  %or7.i = or i32 %spec.select.i, 128
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %or7.i) #6
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %spec.select.i) #6
  %shr.i = lshr i32 %bit.01.i, 1
  %tobool.not.i = icmp ult i32 %bit.01.i, 2
  br i1 %tobool.not.i, label %snd_emu10k1_ecard_setadcgain.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_emu10k1_ecard_setadcgain.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ecard_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecard_ctrl, align 4
  tail call fastcc void @snd_emu10k1_ecard_write(ptr noundef %emu, i32 noundef %22) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1_emu1010_init(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #6
  %1 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp2, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !302
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.117) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 20
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %9 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 211813632) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add9 = add i32 %11, 20
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %12 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 77595904) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add17 = add i32 %14, 20
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %15 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 10487040) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add25 = add i32 %17, 20
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %18 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 10487040) #6, !srcloc !299
  %call29 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 4, i32 noundef 0) #6
  %call30 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 34, ptr noundef nonnull %reg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_emu1010_init, %if.then)) #6
          to label %do.end39 [label %if.then], !srcloc !301

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %dev37 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev37, align 8
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug248, ptr noundef %22, ptr noundef nonnull @.str.119, i32 noundef %24) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then, %entry
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %and40 = and i32 %26, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and40)
  %cmp = icmp eq i32 %and40, 21
  br i1 %cmp, label %if.then41, label %do.end39.if.end43_crit_edge

do.end39.if.end43_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 8, i32 noundef 2) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.end39.if.end43_crit_edge
  %call44 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 34, ptr noundef nonnull %reg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_emu1010_init, %if.then57)) #6
          to label %do.end62 [label %if.then57], !srcloc !301

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %dev59 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev59, align 8
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug249, ptr noundef %30, ptr noundef nonnull @.str.120, i32 noundef %32) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %if.end43
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %and63 = and i32 %34, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and63)
  %cmp64 = icmp eq i32 %and63, 21
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %dev70 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev70, align 8
  br i1 %cmp64, label %do.end68, label %do.end74

do.end68:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.122) #9
  br label %cleanup

do.end74:                                         ; preds = %do.end62
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.125, i32 noundef %34) #9
  %firmware = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 76
  %call77 = call fastcc i32 @snd_emu1010_load_firmware(ptr noundef %emu, i32 noundef 0, ptr noundef %firmware)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %if.end85

do.end82:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %dev84 = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev84, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.128) #9
  br label %cleanup

if.end85:                                         ; preds = %do.end74
  %call86 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 34, ptr noundef nonnull %reg) #6
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg, align 4
  %and87 = and i32 %44, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %and87)
  %cmp88.not = icmp eq i32 %and87, 21
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %dev100 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev100, align 8
  br i1 %cmp88.not, label %do.end98, label %do.end92

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.131, i32 noundef %44) #9
  br label %cleanup

do.end98:                                         ; preds = %if.end85
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.134) #9
  %call101 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 35, ptr noundef nonnull %tmp) #6
  %call102 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 36, ptr noundef nonnull %tmp2) #6
  %49 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card, align 4
  %dev107 = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev107, align 8
  %53 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tmp, align 4
  %55 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.137, i32 noundef %54, i32 noundef %56) #9
  %call108 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 4, i32 noundef 1) #6
  %call109 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 33, ptr noundef nonnull %reg) #6
  %57 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card, align 4
  %dev114 = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev114, align 8
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.140, i32 noundef %62) #9
  %call115 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 33, ptr noundef nonnull %reg) #6
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 4
  %dev120 = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev120, align 8
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.140, i32 noundef %68) #9
  %call121 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 11, ptr noundef nonnull %tmp) #6
  %optical_in = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 5
  %69 = ptrtoint ptr %optical_in to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %optical_in, align 4
  %optical_out = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 6
  %70 = ptrtoint ptr %optical_out to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %optical_out, align 4
  %71 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %tmp, align 4
  %call130 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 11, i32 noundef 3) #6
  %call131 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 16, ptr noundef nonnull %tmp) #6
  %call132 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 16, i32 noundef 0) #6
  %adc_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 2
  %72 = ptrtoint ptr %adc_pads to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %adc_pads, align 4
  %call134 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 17, ptr noundef nonnull %tmp) #6
  %call135 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 17, i32 noundef 48) #6
  %call136 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 14, i32 noundef 18) #6
  %call137 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 19, ptr noundef nonnull %tmp) #6
  %call138 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 19, i32 noundef 15) #6
  %dac_pads = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 3
  %73 = ptrtoint ptr %dac_pads to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 15, ptr %dac_pads, align 4
  %call140 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 17, ptr noundef nonnull %tmp) #6
  %call141 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 17, i32 noundef 48) #6
  %call142 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 10, ptr noundef nonnull %tmp) #6
  %call143 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 10, i32 noundef 16) #6
  %call144 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 12, i32 noundef 25) #6
  %call145 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 18, i32 noundef 12) #6
  %call146 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 9, i32 noundef 0) #6
  %call147 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 33, ptr noundef nonnull %reg) #6
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %dev152 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev152, align 8
  %78 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.145, i32 noundef %79) #9
  %call153 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 6, i32 noundef 0) #6
  %call154 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 5, i32 noundef 0) #6
  %call155 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 14, i32 noundef 18) #6
  %call156 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 15, i32 noundef 256) #6
  %call157 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 0, i32 noundef 260) #6
  %call158 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1, i32 noundef 514) #6
  %call159 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 2, i32 noundef 514) #6
  %call160 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 3, i32 noundef 264) #6
  %call161 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 4, i32 noundef 268) #6
  %call162 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 5, i32 noundef 272) #6
  %call163 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 6, i32 noundef 276) #6
  %call164 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 7, i32 noundef 256) #6
  %call165 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 8, i32 noundef 260) #6
  %call166 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 9, i32 noundef 514) #6
  %call167 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 10, i32 noundef 514) #6
  %call168 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 11, i32 noundef 264) #6
  %call169 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 12, i32 noundef 268) #6
  %call170 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 13, i32 noundef 272) #6
  %call171 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 14, i32 noundef 276) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end98
  %i.0548 = phi i32 [ 0, %do.end98 ], [ %inc, %for.body.for.body_crit_edge ]
  %add173 = add nuw nsw i32 %i.0548, 256
  %call174 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef %add173, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.0548, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body177.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body177.preheader:                            ; preds = %for.body
  %call179 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 512, i32 noundef 0) #6
  %call179.1 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 513, i32 noundef 0) #6
  %call179.2 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 514, i32 noundef 0) #6
  %call179.3 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 515, i32 noundef 0) #6
  %call187 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 768, i32 noundef 0) #6
  %call187.1 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 769, i32 noundef 0) #6
  %call187.2 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 770, i32 noundef 0) #6
  %call187.3 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 771, i32 noundef 0) #6
  %call187.4 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 772, i32 noundef 0) #6
  %call187.5 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 773, i32 noundef 0) #6
  %call187.6 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 774, i32 noundef 0) #6
  %call195 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1024, i32 noundef 0) #6
  %call195.1 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1025, i32 noundef 0) #6
  %call195.2 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1026, i32 noundef 0) #6
  %call195.3 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1027, i32 noundef 0) #6
  %call195.4 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1028, i32 noundef 0) #6
  %call195.5 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1029, i32 noundef 0) #6
  %call195.6 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1030, i32 noundef 0) #6
  %emu1010 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52
  %call199 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1280, i32 noundef 264) #6
  %call200 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1281, i32 noundef 268) #6
  %call201 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1536, i32 noundef 272) #6
  %call202 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1537, i32 noundef 276) #6
  %call203 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1792, i32 noundef 280) #6
  %call204 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1793, i32 noundef 284) #6
  %call205 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 7, i32 noundef 1) #6
  %call206 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 33, ptr noundef nonnull %tmp) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add211 = add i32 %81, 20
  %and212 = and i32 %add211, 1048575
  %add213 = or i32 %and212, -18874368
  %82 = inttoptr i32 %add213 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %82, i32 10485760) #6, !srcloc !299
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !324
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add219 = add i32 %84, 20
  %and220 = and i32 %add219, 1048575
  %add221 = or i32 %and220, -18874368
  %85 = inttoptr i32 %add221 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %85, i32 27262976) #6, !srcloc !299
  %call223 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 33, ptr noundef nonnull %tmp) #6
  %call224 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 12, i32 noundef 25) #6
  %call225 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 18, i32 noundef 12) #6
  %call226 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 12, i32 noundef 25) #6
  %call227 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 18, i32 noundef 12) #6
  %call228 = call i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef 10, ptr noundef nonnull %tmp) #6
  %call229 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 10, i32 noundef 16) #6
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %86 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %89)
  %cmp230 = icmp eq i8 %89, 3
  %call233 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 256, i32 noundef 768) #6
  br i1 %cmp230, label %if.then232, label %if.else

if.then232:                                       ; preds = %for.body177.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %emu1010 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 17, ptr %emu1010, align 4
  %call235 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 260, i32 noundef 769) #6
  %arrayidx238 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 18, ptr %arrayidx238, align 4
  %call239 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 264, i32 noundef 770) #6
  %arrayidx242 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 19, ptr %arrayidx242, align 4
  %call243 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 268, i32 noundef 771) #6
  %arrayidx246 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 20, ptr %arrayidx246, align 4
  %call247 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 272, i32 noundef 772) #6
  %arrayidx250 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 4
  %94 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 21, ptr %arrayidx250, align 4
  %call251 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 276, i32 noundef 773) #6
  %arrayidx254 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 5
  %95 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 22, ptr %arrayidx254, align 4
  %call255 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 768, i32 noundef 768) #6
  %arrayidx258 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 16
  %96 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 17, ptr %arrayidx258, align 4
  %call259 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 769, i32 noundef 769) #6
  %arrayidx262 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 17
  %97 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 18, ptr %arrayidx262, align 4
  br label %if.end359

if.else:                                          ; preds = %for.body177.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %emu1010 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 21, ptr %emu1010, align 4
  %call267 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 260, i32 noundef 769) #6
  %arrayidx270 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 22, ptr %arrayidx270, align 4
  %call271 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 264, i32 noundef 770) #6
  %arrayidx274 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 2
  %100 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 23, ptr %arrayidx274, align 4
  %call275 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 268, i32 noundef 771) #6
  %arrayidx278 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 24, ptr %arrayidx278, align 4
  %call279 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 272, i32 noundef 772) #6
  %arrayidx282 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 4
  %102 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 25, ptr %arrayidx282, align 4
  %call283 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 276, i32 noundef 773) #6
  %arrayidx286 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 5
  %103 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 26, ptr %arrayidx286, align 4
  %call287 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 280, i32 noundef 774) #6
  %arrayidx290 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 6
  %104 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 27, ptr %arrayidx290, align 4
  %call291 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 284, i32 noundef 775) #6
  %arrayidx294 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 7
  %105 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 28, ptr %arrayidx294, align 4
  %call295 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 274, i32 noundef 768) #6
  %arrayidx298 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 8
  %106 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 21, ptr %arrayidx298, align 4
  %call299 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 278, i32 noundef 769) #6
  %arrayidx302 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 9
  %107 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 22, ptr %arrayidx302, align 4
  %call303 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 282, i32 noundef 768) #6
  %arrayidx306 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 10
  %108 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 21, ptr %arrayidx306, align 4
  %call307 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 286, i32 noundef 769) #6
  %arrayidx310 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 11
  %109 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 22, ptr %arrayidx310, align 4
  %call311 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 512, i32 noundef 768) #6
  %arrayidx314 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 12
  %110 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 21, ptr %arrayidx314, align 4
  %call315 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 513, i32 noundef 769) #6
  %arrayidx318 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 13
  %111 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 22, ptr %arrayidx318, align 4
  %call319 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 768, i32 noundef 768) #6
  %arrayidx322 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 14
  %112 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 21, ptr %arrayidx322, align 4
  %call323 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 769, i32 noundef 769) #6
  %arrayidx326 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 15
  %113 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 22, ptr %arrayidx326, align 4
  %call327 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1024, i32 noundef 768) #6
  %arrayidx330 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 16
  %114 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 21, ptr %arrayidx330, align 4
  %call331 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1025, i32 noundef 769) #6
  %arrayidx334 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 17
  %115 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 22, ptr %arrayidx334, align 4
  %call335 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1026, i32 noundef 770) #6
  %arrayidx338 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 18
  %116 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 23, ptr %arrayidx338, align 4
  %call339 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1027, i32 noundef 771) #6
  %arrayidx342 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 19
  %117 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 24, ptr %arrayidx342, align 4
  %call343 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1028, i32 noundef 772) #6
  %arrayidx346 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 20
  %118 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 25, ptr %arrayidx346, align 4
  %call347 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1029, i32 noundef 773) #6
  %arrayidx350 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 21
  %119 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 26, ptr %arrayidx350, align 4
  %call351 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1030, i32 noundef 774) #6
  %arrayidx354 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 22
  %120 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 27, ptr %arrayidx354, align 4
  %call355 = call i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef 1031, i32 noundef 775) #6
  %arrayidx358 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 0, i32 23
  %121 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 28, ptr %arrayidx358, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.else, %if.then232
  %call360 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 7, i32 noundef 0) #6
  %call361 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 6, i32 noundef 0) #6
  %call362 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 5, i32 noundef 0) #6
  %internal_clock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 52, i32 4
  %122 = ptrtoint ptr %internal_clock to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %internal_clock, align 4
  %call364 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 14, i32 noundef 18) #6
  %call365 = call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 7, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end359, %do.end92, %do.end82, %do.end68
  %retval.0 = phi i32 [ -19, %do.end68 ], [ %call77, %do.end82 ], [ -19, %do.end92 ], [ 0, %if.end359 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_init(ptr noundef %emu, i32 noundef %enable_ir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !325
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 234881024) #6, !srcloc !299
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 73, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 69, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 75, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 71, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 74, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 70, i32 noundef 0, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !326
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add6 = add i32 %4, 12
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 0) #6, !srcloc !299
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 88, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 89, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 92, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 93, i32 noundef 0, i32 noundef 0) #6
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %6 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 94, i32 noundef 0, i32 noundef 3840) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 95, i32 noundef 0, i32 noundef 3) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ch.01 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @snd_emu10k1_voice_init(ptr noundef %emu, i32 noundef %ch.01)
  %inc = add nuw nsw i32 %ch.01, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %spdif_bits = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 25
  %8 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif_bits, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 84, i32 noundef 0, i32 noundef %9) #6
  %arrayidx11 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 25, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 85, i32 noundef 0, i32 noundef %11) #6
  %arrayidx13 = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 25, i32 2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 86, i32 noundef 0, i32 noundef %13) #6
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %14 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %for.end.if.end26_crit_edge, label %if.then15

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 118, i32 noundef 0) #6
  %and17 = and i32 %call16, -3585
  %or = or i32 %and17, 1024
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 118, i32 noundef 0, i32 noundef %or) #6
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 96, i32 noundef 0, i32 noundef 20) #6
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 110, i32 noundef 0, i32 noundef -1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !327
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add22 = add i32 %19, 52
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %20 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 16908288) #6, !srcloc !299
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 22, i32 noundef 0, i32 noundef 30948) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %for.end.if.end26_crit_edge
  %21 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card_capabilities, align 4
  %ca0108_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %ca0108_chip to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ca0108_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool28.not = icmp eq i8 %24, 0
  br i1 %tobool28.not, label %if.end26.if.end100_crit_edge, label %do.end32

if.end26.if.end100_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.147) #9
  %call33 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 118, i32 noundef 0) #6
  %and34 = and i32 %call33, -3585
  %or35 = or i32 %and34, 1024
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 118, i32 noundef 0, i32 noundef %or35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !328
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add40 = add i32 %30, 32
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %31 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 24576) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !329
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add48 = add i32 %33, 36
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %34 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 335544320) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !330
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add56 = add i32 %36, 32
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %37 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 31488) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add64 = add i32 %39, 36
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %40 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 255) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add72 = add i32 %42, 32
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %43 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 31232) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !333
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add80 = add i32 %45, 36
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %46 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 255) #6, !srcloc !299
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add85 = add i32 %48, 24
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %49 = inttoptr i32 %add87 to ptr
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %49) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !334
  %51 = and i32 %50, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add96 = add i32 %53, 24
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %54 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 %51) #6, !srcloc !299
  br label %if.end100

if.end100:                                        ; preds = %do.end32, %if.end26.if.end100_crit_edge
  %55 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card_capabilities, align 4
  %spi_dac = getelementptr inbounds %struct.snd_emu_chip_details, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %spi_dac to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %spi_dac, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool102.not = icmp eq i8 %58, 0
  br i1 %tobool102.not, label %if.end100.if.end120_crit_edge, label %for.body106.preheader

if.end100.if.end120_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

for.body106.preheader:                            ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 255) #6
  %call108.1 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 767) #6
  %call108.2 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1024) #6
  %call108.3 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1312) #6
  %call108.4 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1536) #6
  %call108.5 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 2303) #6
  %call108.6 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 2815) #6
  %call108.7 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 3327) #6
  %call108.8 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 3839) #6
  %call108.9 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 4351) #6
  %call108.10 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 4608) #6
  %call108.11 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 5120) #6
  %call108.12 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 5248) #6
  %call108.13 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 6144) #6
  %call108.14 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 6911) #6
  %call108.15 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 7423) #6
  %call108.16 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 7680) #6
  %call108.17 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1328) #6
  %call108.18 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1538) #6
  %call108.19 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 1570) #6
  %call108.20 = tail call i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef 5120) #6
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 96, i32 noundef 0, i32 noundef 16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add116 = add i32 %60, 24
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %61 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 1979711488) #6, !srcloc !299
  br label %if.end120

if.end120:                                        ; preds = %for.body106.preheader, %if.end100.if.end120_crit_edge
  %62 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card_capabilities, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_emu_chip_details, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_adc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool122.not = icmp eq i8 %65, 0
  br i1 %tobool122.not, label %if.end120.if.end173_crit_edge, label %if.then123

if.end120.if.end173_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef 147, i32 noundef 0, i32 noundef 538976351) #6
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add128 = add i32 %67, 24
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %68 = inttoptr i32 %add130 to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !338
  tail call void @arm_heavy_mb() #6
  %70 = or i32 %69, 67108864
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add139 = add i32 %72, 24
  %and140 = and i32 %add139, 1048575
  %add141 = or i32 %and140, -18874368
  %73 = inttoptr i32 %add141 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 %70) #6, !srcloc !299
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add145 = add i32 %75, 24
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %76 = inttoptr i32 %add147 to ptr
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %76) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !339
  %call158 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 23, i32 noundef 0) #6
  %call158.1 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 7, i32 noundef 0) #6
  %call158.2 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 11, i32 noundef 34) #6
  %call158.3 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 12, i32 noundef 34) #6
  %call158.4 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 13, i32 noundef 8) #6
  %call158.5 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 14, i32 noundef 207) #6
  %call158.6 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 15, i32 noundef 207) #6
  %call158.7 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 16, i32 noundef 123) #6
  %call158.8 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 17, i32 noundef 0) #6
  %call158.9 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 18, i32 noundef 50) #6
  %call158.10 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 19, i32 noundef 0) #6
  %call158.11 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 20, i32 noundef 166) #6
  %call158.12 = tail call i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef 21, i32 noundef 4) #6
  %uglygep = getelementptr i8, ptr %emu, i32 232
  %78 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 -3472328296227680305, ptr %uglygep, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.then123, %if.end120.if.end173_crit_edge
  %addr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 16, i32 2
  %79 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 64, i32 noundef 0, i32 noundef %80) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 65, i32 noundef 0, i32 noundef 0) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 68, i32 noundef 0, i32 noundef 4) #6
  %addr175 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 15, i32 2
  %81 = ptrtoint ptr %addr175 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr175, align 4
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %83 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %address_mode, align 4
  %shl = shl i32 %82, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool177.not = icmp eq i32 %84, 0
  %cond = select i1 %tobool177.not, i32 4095, i32 8191
  %or178 = or i32 %cond, %shl
  br label %for.body181

for.body181:                                      ; preds = %for.body181.for.body181_crit_edge, %if.end173
  %ch.15 = phi i32 [ 0, %if.end173 ], [ %inc183, %for.body181.for.body181_crit_edge ]
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 12, i32 noundef %ch.15, i32 noundef %or178) #6
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 13, i32 noundef %ch.15, i32 noundef %or178) #6
  %inc183 = add nuw nsw i32 %ch.15, 1
  %exitcond8.not = icmp eq i32 %inc183, 64
  br i1 %exitcond8.not, label %for.end184, label %for.body181.for.body181_crit_edge

for.body181.for.body181_crit_edge:                ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181

for.end184:                                       ; preds = %for.body181
  %85 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool186.not = icmp eq i8 %88, 0
  br i1 %tobool186.not, label %if.else, label %do.body188

do.body188:                                       ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !340
  tail call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add192 = add i32 %90, 20
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %91 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %91, i32 27262976) #6, !srcloc !299
  br label %if.end254

if.else:                                          ; preds = %for.end184
  %92 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool197.not = icmp eq i32 %93, 0
  br i1 %tobool197.not, label %if.else219, label %if.then198

if.then198:                                       ; preds = %if.else
  %revision = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 5
  %94 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp199 = icmp eq i32 %95, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add205 = add i32 %97, 20
  %and206 = and i32 %add205, 1048575
  %add207 = or i32 %and206, -18874368
  %98 = inttoptr i32 %add207 to ptr
  br i1 %cmp199, label %do.body201, label %do.body210

do.body201:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 1895956480) #6, !srcloc !299
  br label %if.end254

do.body210:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 268566528) #6, !srcloc !299
  br label %if.end254

if.else219:                                       ; preds = %if.else
  %model = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 7
  %99 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %model, align 4
  %101 = zext i16 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values)
  switch i16 %100, label %if.else219.do.body244_crit_edge [
    i16 32, label %if.else219.do.body235_crit_edge
    i16 -15360, label %if.else219.do.body235_crit_edge9
    i16 33, label %land.lhs.true
  ]

if.else219.do.body235_crit_edge9:                 ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body235

if.else219.do.body235_crit_edge:                  ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body235

if.else219.do.body244_crit_edge:                  ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body244

land.lhs.true:                                    ; preds = %if.else219
  %revision231 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 5
  %102 = ptrtoint ptr %revision231 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %revision231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %103)
  %cmp232 = icmp ult i32 %103, 6
  br i1 %cmp232, label %land.lhs.true.do.body235_crit_edge, label %land.lhs.true.do.body244_crit_edge

land.lhs.true.do.body244_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body244

land.lhs.true.do.body235_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body235

do.body235:                                       ; preds = %land.lhs.true.do.body235_crit_edge, %if.else219.do.body235_crit_edge, %if.else219.do.body235_crit_edge9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !341
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port, align 4
  %add239 = add i32 %105, 20
  %and240 = and i32 %add239, 1048575
  %add241 = or i32 %and240, -18874368
  %106 = inttoptr i32 %add241 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %106, i32 335544320) #6, !srcloc !299
  br label %if.end254

do.body244:                                       ; preds = %land.lhs.true.do.body244_crit_edge, %if.else219.do.body244_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !342
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port, align 4
  %add248 = add i32 %108, 20
  %and249 = and i32 %add248, 1048575
  %add250 = or i32 %and249, -18874368
  %109 = inttoptr i32 %add250 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %109, i32 335675392) #6, !srcloc !299
  br label %if.end254

if.end254:                                        ; preds = %do.body244, %do.body235, %do.body210, %do.body201, %do.body188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_ir)
  %tobool255.not = icmp eq i32 %enable_ir, 0
  br i1 %tobool255.not, label %if.end254.if.end345_crit_edge, label %if.then256

if.end254.if.end345_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end345

if.then256:                                       ; preds = %if.end254
  %110 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %card_capabilities, align 4
  %emu_model258 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %emu_model258 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %emu_model258, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool259.not = icmp eq i8 %113, 0
  br i1 %tobool259.not, label %if.else261, label %if.then256.if.end345_crit_edge

if.then256.if.end345_crit_edge:                   ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end345

if.else261:                                       ; preds = %if.then256
  %i2c_adc263 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %111, i32 0, i32 17
  %114 = ptrtoint ptr %i2c_adc263 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %i2c_adc263, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool264.not = icmp eq i8 %115, 0
  br i1 %tobool264.not, label %if.else266, label %if.else261.if.end345_crit_edge

if.else261.if.end345_crit_edge:                   ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end345

if.else266:                                       ; preds = %if.else261
  %116 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool268.not = icmp eq i32 %117, 0
  %118 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port, align 4
  br i1 %tobool268.not, label %if.else305, label %if.then269

if.then269:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #8
  %add272 = add i32 %119, 24
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %120 = inttoptr i32 %add274 to ptr
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %120) #6, !srcloc !304
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !344
  tail call void @arm_heavy_mb() #6
  %or281 = or i32 %122, 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %or281)
  %124 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port, align 4
  %add283 = add i32 %125, 24
  %and284 = and i32 %add283, 1048575
  %add285 = or i32 %and284, -18874368
  %126 = inttoptr i32 %add285 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %126, i32 %123) #6, !srcloc !299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 107374000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !345
  tail call void @arm_heavy_mb() #6
  %or291 = or i32 %122, 3
  %128 = tail call i32 @llvm.bswap.i32(i32 %or291)
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add293 = add i32 %130, 24
  %and294 = and i32 %add293, 1048575
  %add295 = or i32 %and294, -18874368
  %131 = inttoptr i32 %add295 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %131, i32 %128) #6, !srcloc !299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 21474800) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !346
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %port, align 4
  %add301 = add i32 %134, 24
  %and302 = and i32 %add301, 1048575
  %add303 = or i32 %and302, -18874368
  %135 = inttoptr i32 %add303 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %135, i32 %121) #6, !srcloc !299
  br label %if.end345

if.else305:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #8
  %add309 = add i32 %119, 20
  %and310 = and i32 %add309, 1048575
  %add311 = or i32 %and310, -18874368
  %136 = inttoptr i32 %add311 to ptr
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %136) #6, !srcloc !304
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !348
  tail call void @arm_heavy_mb() #6
  %or318 = or i32 %138, 1024
  %139 = tail call i32 @llvm.bswap.i32(i32 %or318)
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port, align 4
  %add320 = add i32 %141, 20
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %142 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %142, i32 %139) #6, !srcloc !299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 107374000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !349
  tail call void @arm_heavy_mb() #6
  %or328 = or i32 %138, 3072
  %144 = tail call i32 @llvm.bswap.i32(i32 %or328)
  %145 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %port, align 4
  %add330 = add i32 %146, 20
  %and331 = and i32 %add330, 1048575
  %add332 = or i32 %and331, -18874368
  %147 = inttoptr i32 %add332 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %147, i32 %144) #6, !srcloc !299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 21474800) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !350
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port, align 4
  %add338 = add i32 %150, 20
  %and339 = and i32 %add338, 1048575
  %add340 = or i32 %and339, -18874368
  %151 = inttoptr i32 %add340 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %151, i32 %137) #6, !srcloc !299
  br label %if.end345

if.end345:                                        ; preds = %if.else305, %if.then269, %if.else261.if.end345_crit_edge, %if.then256.if.end345_crit_edge, %if.end254.if.end345_crit_edge
  %152 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %card_capabilities, align 4
  %emu_model347 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %153, i32 0, i32 15
  %154 = ptrtoint ptr %emu_model347 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %emu_model347, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool348.not = icmp eq i8 %155, 0
  br i1 %tobool348.not, label %if.else350, label %if.end345.if.end379_crit_edge

if.end345.if.end379_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

if.else350:                                       ; preds = %if.end345
  %i2c_adc352 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %153, i32 0, i32 17
  %156 = ptrtoint ptr %i2c_adc352 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %i2c_adc352, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool353.not = icmp eq i8 %157, 0
  br i1 %tobool353.not, label %if.else355, label %if.else350.if.end379_crit_edge

if.else350.if.end379_crit_edge:                   ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

if.else355:                                       ; preds = %if.else350
  %158 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool357.not = icmp eq i32 %159, 0
  br i1 %tobool357.not, label %if.else355.if.end379_crit_edge, label %if.then358

if.else355.if.end379_crit_edge:                   ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

if.then358:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port, align 4
  %add362 = add i32 %161, 24
  %and363 = and i32 %add362, 1048575
  %add364 = or i32 %and363, -18874368
  %162 = inttoptr i32 %add364 to ptr
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %162) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !352
  tail call void @arm_heavy_mb() #6
  %164 = or i32 %163, 1140850688
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %add373 = add i32 %166, 24
  %and374 = and i32 %add373, 1048575
  %add375 = or i32 %and374, -18874368
  %167 = inttoptr i32 %add375 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %167, i32 %164) #6, !srcloc !299
  br label %if.end379

if.end379:                                        ; preds = %if.then358, %if.else355.if.end379_crit_edge, %if.else350.if.end379_crit_edge, %if.end345.if.end379_crit_edge
  %168 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp381 = icmp eq i32 %169, 0
  br i1 %cmp381, label %do.body384, label %if.end379.if.end401_crit_edge

if.end379.if.end401_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end401

do.body384:                                       ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !353
  tail call void @arm_heavy_mb() #6
  %170 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port, align 4
  %add389 = add i32 %171, 20
  %and390 = and i32 %add389, 1048575
  %add391 = or i32 %and390, -18874368
  %172 = inttoptr i32 %add391 to ptr
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %172) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !354
  %174 = or i32 %173, 1024
  %175 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port, align 4
  %add397 = add i32 %176, 20
  %and398 = and i32 %add397, 1048575
  %add399 = or i32 %and398, -18874368
  %177 = inttoptr i32 %add399 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %177, i32 %174) #6, !srcloc !299
  br label %if.end401

if.end401:                                        ; preds = %do.body384, %if.end379.if.end401_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_pm_buffer(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = select i1 %tobool.not, i32 13056, i32 15360
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %2) #10
  %saved_ptr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 78
  %3 = ptrtoint ptr %saved_ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %saved_ptr, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @snd_emu10k1_efx_alloc_pm_buffer(ptr noundef %emu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %call10 = tail call i32 @snd_p16v_alloc_pm_buffer(ptr noundef %emu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_init_efx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_audio_enable(ptr noundef %emu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !355
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !356
  %4 = or i32 %3, 16777216
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add4 = add i32 %6, 20
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %7 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #6, !srcloc !299
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %8 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end89_crit_edge

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.else:                                          ; preds = %entry
  %i2c_adc = getelementptr inbounds %struct.snd_emu_chip_details, ptr %9, i32 0, i32 17
  %12 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_adc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.else11, label %if.else.if.end89_crit_edge

if.else.if.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.else11:                                        ; preds = %if.else
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %14 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.else11.if.end89_crit_edge, label %do.body14

if.else11.if.end89_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.body14:                                        ; preds = %if.else11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !357
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add18 = add i32 %17, 24
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %18 = inttoptr i32 %add20 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !358
  %20 = and i32 %19, -1140850689
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add26 = add i32 %22, 24
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %23 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #6, !srcloc !299
  %24 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %if.else49, label %do.body33

do.body33:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !359
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add37 = add i32 %29, 24
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %30 = inttoptr i32 %add39 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !360
  %32 = or i32 %31, 1073741824
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add45 = add i32 %34, 24
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %35 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #6, !srcloc !299
  br label %if.end89

if.else49:                                        ; preds = %do.body14
  %ca0108_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %25, i32 0, i32 7
  %36 = ptrtoint ptr %ca0108_chip to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ca0108_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool51.not = icmp eq i8 %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add74 = add i32 %39, 24
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %40 = inttoptr i32 %add76 to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool51.not, label %do.body70, label %do.body53

do.body53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  %42 = or i32 %41, 1610612736
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add65 = add i32 %44, 24
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %45 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #6, !srcloc !299
  br label %if.end89

do.body70:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  %46 = or i32 %41, -2147483648
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add82 = add i32 %48, 24
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %49 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #6, !srcloc !299
  br label %if.end89

if.end89:                                         ; preds = %do.body70, %do.body53, %do.body33, %if.else11.if.end89_crit_edge, %if.else.if.end89_crit_edge, %entry.if.end89_crit_edge
  tail call void @snd_emu10k1_intr_enable(ptr noundef %emu, i32 noundef 2048) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_suspend_regs(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_ptr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 78
  %0 = ptrtoint ptr %saved_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_ptr, align 4
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc7.for.cond2.preheader_crit_edge, %entry
  %reg.068 = phi ptr [ @saved_regs, %entry ], [ %incdec.ptr8, %for.inc7.for.cond2.preheader_crit_edge ]
  %val.067 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.inc7.for.cond2.preheader_crit_edge ]
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond2.preheader
  %i.066 = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %for.body5.for.body5_crit_edge ]
  %val.165 = phi ptr [ %val.067, %for.cond2.preheader ], [ %incdec.ptr, %for.body5.for.body5_crit_edge ]
  %2 = ptrtoint ptr %reg.068 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg.068, align 1
  %conv6 = zext i8 %3 to i32
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %conv6, i32 noundef %i.066) #6
  %4 = ptrtoint ptr %val.165 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %val.165, align 4
  %inc = add nuw nsw i32 %i.066, 1
  %incdec.ptr = getelementptr i32, ptr %val.165, i32 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc7, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.inc7:                                         ; preds = %for.body5
  %incdec.ptr8 = getelementptr i8, ptr %reg.068, i32 1
  %exitcond73 = icmp eq ptr %incdec.ptr8, getelementptr inbounds ([51 x i8], ptr @saved_regs, i32 0, i32 50)
  br i1 %exitcond73, label %for.end9, label %for.inc7.for.cond2.preheader_crit_edge

for.inc7.for.cond2.preheader_crit_edge:           ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader

for.end9:                                         ; preds = %for.inc7
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %5 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.end9.if.end34_crit_edge, label %for.end9.for.body18_crit_edge

for.end9.for.body18_crit_edge:                    ; preds = %for.end9
  br label %for.body18

for.end9.if.end34_crit_edge:                      ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end9.for.body18_crit_edge
  %i.170 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 0, %for.end9.for.body18_crit_edge ]
  %val.369 = phi ptr [ %incdec.ptr23, %for.body18.for.body18_crit_edge ], [ %incdec.ptr, %for.end9.for.body18_crit_edge ]
  %call20 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 99, i32 noundef %i.170) #6
  %7 = ptrtoint ptr %val.369 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call20, ptr %val.369, align 4
  %inc22 = add nuw nsw i32 %i.170, 1
  %incdec.ptr23 = getelementptr i32, ptr %val.369, i32 1
  %exitcond74.not = icmp eq i32 %inc22, 64
  br i1 %exitcond74.not, label %for.body18.for.body18.1_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.body18.for.body18.1_crit_edge:                ; preds = %for.body18
  br label %for.body18.1

for.body18.1:                                     ; preds = %for.body18.1.for.body18.1_crit_edge, %for.body18.for.body18.1_crit_edge
  %i.170.1 = phi i32 [ %inc22.1, %for.body18.1.for.body18.1_crit_edge ], [ 0, %for.body18.for.body18.1_crit_edge ]
  %val.369.1 = phi ptr [ %incdec.ptr23.1, %for.body18.1.for.body18.1_crit_edge ], [ %incdec.ptr23, %for.body18.for.body18.1_crit_edge ]
  %call20.1 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 100, i32 noundef %i.170.1) #6
  %8 = ptrtoint ptr %val.369.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call20.1, ptr %val.369.1, align 4
  %inc22.1 = add nuw nsw i32 %i.170.1, 1
  %incdec.ptr23.1 = getelementptr i32, ptr %val.369.1, i32 1
  %exitcond74.1.not = icmp eq i32 %inc22.1, 64
  br i1 %exitcond74.1.not, label %for.body18.1.for.body18.2_crit_edge, label %for.body18.1.for.body18.1_crit_edge

for.body18.1.for.body18.1_crit_edge:              ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.1

for.body18.1.for.body18.2_crit_edge:              ; preds = %for.body18.1
  br label %for.body18.2

for.body18.2:                                     ; preds = %for.body18.2.for.body18.2_crit_edge, %for.body18.1.for.body18.2_crit_edge
  %i.170.2 = phi i32 [ %inc22.2, %for.body18.2.for.body18.2_crit_edge ], [ 0, %for.body18.1.for.body18.2_crit_edge ]
  %val.369.2 = phi ptr [ %incdec.ptr23.2, %for.body18.2.for.body18.2_crit_edge ], [ %incdec.ptr23.1, %for.body18.1.for.body18.2_crit_edge ]
  %call20.2 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 116, i32 noundef %i.170.2) #6
  %9 = ptrtoint ptr %val.369.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call20.2, ptr %val.369.2, align 4
  %inc22.2 = add nuw nsw i32 %i.170.2, 1
  %incdec.ptr23.2 = getelementptr i32, ptr %val.369.2, i32 1
  %exitcond74.2.not = icmp eq i32 %inc22.2, 64
  br i1 %exitcond74.2.not, label %for.body18.2.for.body18.3_crit_edge, label %for.body18.2.for.body18.2_crit_edge

for.body18.2.for.body18.2_crit_edge:              ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.2

for.body18.2.for.body18.3_crit_edge:              ; preds = %for.body18.2
  br label %for.body18.3

for.body18.3:                                     ; preds = %for.body18.3.for.body18.3_crit_edge, %for.body18.2.for.body18.3_crit_edge
  %i.170.3 = phi i32 [ %inc22.3, %for.body18.3.for.body18.3_crit_edge ], [ 0, %for.body18.2.for.body18.3_crit_edge ]
  %val.369.3 = phi ptr [ %incdec.ptr23.3, %for.body18.3.for.body18.3_crit_edge ], [ %incdec.ptr23.2, %for.body18.2.for.body18.3_crit_edge ]
  %call20.3 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 117, i32 noundef %i.170.3) #6
  %10 = ptrtoint ptr %val.369.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call20.3, ptr %val.369.3, align 4
  %inc22.3 = add nuw nsw i32 %i.170.3, 1
  %incdec.ptr23.3 = getelementptr i32, ptr %val.369.3, i32 1
  %exitcond74.3.not = icmp eq i32 %inc22.3, 64
  br i1 %exitcond74.3.not, label %for.body18.3.for.body18.4_crit_edge, label %for.body18.3.for.body18.3_crit_edge

for.body18.3.for.body18.3_crit_edge:              ; preds = %for.body18.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.3

for.body18.3.for.body18.4_crit_edge:              ; preds = %for.body18.3
  br label %for.body18.4

for.body18.4:                                     ; preds = %for.body18.4.for.body18.4_crit_edge, %for.body18.3.for.body18.4_crit_edge
  %i.170.4 = phi i32 [ %inc22.4, %for.body18.4.for.body18.4_crit_edge ], [ 0, %for.body18.3.for.body18.4_crit_edge ]
  %val.369.4 = phi ptr [ %incdec.ptr23.4, %for.body18.4.for.body18.4_crit_edge ], [ %incdec.ptr23.3, %for.body18.3.for.body18.4_crit_edge ]
  %call20.4 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 118, i32 noundef %i.170.4) #6
  %11 = ptrtoint ptr %val.369.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call20.4, ptr %val.369.4, align 4
  %inc22.4 = add nuw nsw i32 %i.170.4, 1
  %incdec.ptr23.4 = getelementptr i32, ptr %val.369.4, i32 1
  %exitcond74.4.not = icmp eq i32 %inc22.4, 64
  br i1 %exitcond74.4.not, label %for.body18.4.for.body18.5_crit_edge, label %for.body18.4.for.body18.4_crit_edge

for.body18.4.for.body18.4_crit_edge:              ; preds = %for.body18.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.4

for.body18.4.for.body18.5_crit_edge:              ; preds = %for.body18.4
  br label %for.body18.5

for.body18.5:                                     ; preds = %for.body18.5.for.body18.5_crit_edge, %for.body18.4.for.body18.5_crit_edge
  %i.170.5 = phi i32 [ %inc22.5, %for.body18.5.for.body18.5_crit_edge ], [ 0, %for.body18.4.for.body18.5_crit_edge ]
  %val.369.5 = phi ptr [ %incdec.ptr23.5, %for.body18.5.for.body18.5_crit_edge ], [ %incdec.ptr23.4, %for.body18.4.for.body18.5_crit_edge ]
  %call20.5 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 124, i32 noundef %i.170.5) #6
  %12 = ptrtoint ptr %val.369.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call20.5, ptr %val.369.5, align 4
  %inc22.5 = add nuw nsw i32 %i.170.5, 1
  %incdec.ptr23.5 = getelementptr i32, ptr %val.369.5, i32 1
  %exitcond74.5.not = icmp eq i32 %inc22.5, 64
  br i1 %exitcond74.5.not, label %for.body18.5.for.body18.6_crit_edge, label %for.body18.5.for.body18.5_crit_edge

for.body18.5.for.body18.5_crit_edge:              ; preds = %for.body18.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.5

for.body18.5.for.body18.6_crit_edge:              ; preds = %for.body18.5
  br label %for.body18.6

for.body18.6:                                     ; preds = %for.body18.6.for.body18.6_crit_edge, %for.body18.5.for.body18.6_crit_edge
  %i.170.6 = phi i32 [ %inc22.6, %for.body18.6.for.body18.6_crit_edge ], [ 0, %for.body18.5.for.body18.6_crit_edge ]
  %val.369.6 = phi ptr [ %incdec.ptr23.6, %for.body18.6.for.body18.6_crit_edge ], [ %incdec.ptr23.5, %for.body18.5.for.body18.6_crit_edge ]
  %call20.6 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 125, i32 noundef %i.170.6) #6
  %13 = ptrtoint ptr %val.369.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call20.6, ptr %val.369.6, align 4
  %inc22.6 = add nuw nsw i32 %i.170.6, 1
  %incdec.ptr23.6 = getelementptr i32, ptr %val.369.6, i32 1
  %exitcond74.6.not = icmp eq i32 %inc22.6, 64
  br i1 %exitcond74.6.not, label %for.body18.6.for.body18.7_crit_edge, label %for.body18.6.for.body18.6_crit_edge

for.body18.6.for.body18.6_crit_edge:              ; preds = %for.body18.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.6

for.body18.6.for.body18.7_crit_edge:              ; preds = %for.body18.6
  br label %for.body18.7

for.body18.7:                                     ; preds = %for.body18.7.for.body18.7_crit_edge, %for.body18.6.for.body18.7_crit_edge
  %i.170.7 = phi i32 [ %inc22.7, %for.body18.7.for.body18.7_crit_edge ], [ 0, %for.body18.6.for.body18.7_crit_edge ]
  %val.369.7 = phi ptr [ %incdec.ptr23.7, %for.body18.7.for.body18.7_crit_edge ], [ %incdec.ptr23.6, %for.body18.6.for.body18.7_crit_edge ]
  %call20.7 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef 126, i32 noundef %i.170.7) #6
  %14 = ptrtoint ptr %val.369.7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20.7, ptr %val.369.7, align 4
  %inc22.7 = add nuw nsw i32 %i.170.7, 1
  %incdec.ptr23.7 = getelementptr i32, ptr %val.369.7, i32 1
  %exitcond74.7.not = icmp eq i32 %inc22.7, 64
  br i1 %exitcond74.7.not, label %for.inc25.7, label %for.body18.7.for.body18.7_crit_edge

for.body18.7.for.body18.7_crit_edge:              ; preds = %for.body18.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.7

for.inc25.7:                                      ; preds = %for.body18.7
  %15 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool29.not = icmp eq i32 %.pr, 0
  br i1 %tobool29.not, label %for.inc25.7.if.end34_crit_edge, label %if.then30

for.inc25.7.if.end34_crit_edge:                   ; preds = %for.inc25.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %for.inc25.7
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add = add i32 %17, 24
  %and = and i32 %add, 1048575
  %add31 = or i32 %and, -18874368
  %18 = inttoptr i32 %add31 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !304
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %saved_a_iocfg = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 84
  %21 = ptrtoint ptr %saved_a_iocfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %saved_a_iocfg, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.inc25.7.if.end34_crit_edge, %for.end9.if.end34_crit_edge
  %port36 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %22 = ptrtoint ptr %port36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port36, align 4
  %add37 = add i32 %23, 20
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %24 = inttoptr i32 %add39 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #6, !srcloc !304
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !362
  %saved_hcfg = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 85
  %27 = ptrtoint ptr %saved_hcfg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %saved_hcfg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_resume_init(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %0 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card_capabilities, align 4
  %ca_cardbus_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ca_cardbus_chip to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ca_cardbus_chip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_emu10k1_cardbus_init(ptr noundef %emu)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_capabilities, align 4
  %ecard = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %ecard to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ecard, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_emu10k1_ecard_init(ptr noundef %emu)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @snd_emu10k1_emu1010_init(ptr noundef %emu)
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 95, i32 noundef 0, i32 noundef 48) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7, %if.then3
  %enable_ir = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 2
  %10 = ptrtoint ptr %enable_ir to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %enable_ir, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  tail call fastcc void @snd_emu10k1_init(ptr noundef %emu, i32 noundef %bf.cast)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_resume_regs(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_emu10k1_audio_enable(ptr noundef %emu)
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %do.body

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  tail call void @arm_heavy_mb() #6
  %saved_a_iocfg = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 84
  %2 = ptrtoint ptr %saved_a_iocfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_a_iocfg, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add = add i32 %6, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #6, !srcloc !299
  br label %do.body2

do.body2:                                         ; preds = %do.body, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %saved_hcfg = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 85
  %8 = ptrtoint ptr %saved_hcfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_hcfg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %port5 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %11 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port5, align 4
  %add6 = add i32 %12, 20
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %13 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #6, !srcloc !299
  %saved_ptr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 78
  %14 = ptrtoint ptr %saved_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %saved_ptr, align 4
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc16.for.cond11.preheader_crit_edge, %do.body2
  %val.065 = phi ptr [ %15, %do.body2 ], [ %incdec.ptr, %for.inc16.for.cond11.preheader_crit_edge ]
  %reg.064 = phi ptr [ @saved_regs, %do.body2 ], [ %incdec.ptr17, %for.inc16.for.cond11.preheader_crit_edge ]
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond11.preheader
  %val.163 = phi ptr [ %val.065, %for.cond11.preheader ], [ %incdec.ptr, %for.body14.for.body14_crit_edge ]
  %i.062 = phi i32 [ 0, %for.cond11.preheader ], [ %inc, %for.body14.for.body14_crit_edge ]
  %16 = ptrtoint ptr %reg.064 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg.064, align 1
  %conv15 = zext i8 %17 to i32
  %18 = ptrtoint ptr %val.163 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.163, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %conv15, i32 noundef %i.062, i32 noundef %19) #6
  %inc = add nuw nsw i32 %i.062, 1
  %incdec.ptr = getelementptr i32, ptr %val.163, i32 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc16, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc16:                                        ; preds = %for.body14
  %incdec.ptr17 = getelementptr i8, ptr %reg.064, i32 1
  %exitcond70 = icmp eq ptr %incdec.ptr17, getelementptr inbounds ([51 x i8], ptr @saved_regs, i32 0, i32 50)
  br i1 %exitcond70, label %for.end18, label %for.inc16.for.cond11.preheader_crit_edge

for.inc16.for.cond11.preheader_crit_edge:         ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond11.preheader

for.end18:                                        ; preds = %for.inc16
  %20 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %for.end18.if.end39_crit_edge, label %for.end18.for.body30_crit_edge

for.end18.for.body30_crit_edge:                   ; preds = %for.end18
  br label %for.body30

for.end18.if.end39_crit_edge:                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end18.for.body30_crit_edge
  %val.367 = phi ptr [ %incdec.ptr34, %for.body30.for.body30_crit_edge ], [ %incdec.ptr, %for.end18.for.body30_crit_edge ]
  %i.166 = phi i32 [ %inc33, %for.body30.for.body30_crit_edge ], [ 0, %for.end18.for.body30_crit_edge ]
  %22 = ptrtoint ptr %val.367 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.367, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 99, i32 noundef %i.166, i32 noundef %23) #6
  %inc33 = add nuw nsw i32 %i.166, 1
  %incdec.ptr34 = getelementptr i32, ptr %val.367, i32 1
  %exitcond71.not = icmp eq i32 %inc33, 64
  br i1 %exitcond71.not, label %for.body30.for.body30.1_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

for.body30.for.body30.1_crit_edge:                ; preds = %for.body30
  br label %for.body30.1

for.body30.1:                                     ; preds = %for.body30.1.for.body30.1_crit_edge, %for.body30.for.body30.1_crit_edge
  %val.367.1 = phi ptr [ %incdec.ptr34.1, %for.body30.1.for.body30.1_crit_edge ], [ %incdec.ptr34, %for.body30.for.body30.1_crit_edge ]
  %i.166.1 = phi i32 [ %inc33.1, %for.body30.1.for.body30.1_crit_edge ], [ 0, %for.body30.for.body30.1_crit_edge ]
  %24 = ptrtoint ptr %val.367.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.367.1, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 100, i32 noundef %i.166.1, i32 noundef %25) #6
  %inc33.1 = add nuw nsw i32 %i.166.1, 1
  %incdec.ptr34.1 = getelementptr i32, ptr %val.367.1, i32 1
  %exitcond71.1.not = icmp eq i32 %inc33.1, 64
  br i1 %exitcond71.1.not, label %for.body30.1.for.body30.2_crit_edge, label %for.body30.1.for.body30.1_crit_edge

for.body30.1.for.body30.1_crit_edge:              ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.1

for.body30.1.for.body30.2_crit_edge:              ; preds = %for.body30.1
  br label %for.body30.2

for.body30.2:                                     ; preds = %for.body30.2.for.body30.2_crit_edge, %for.body30.1.for.body30.2_crit_edge
  %val.367.2 = phi ptr [ %incdec.ptr34.2, %for.body30.2.for.body30.2_crit_edge ], [ %incdec.ptr34.1, %for.body30.1.for.body30.2_crit_edge ]
  %i.166.2 = phi i32 [ %inc33.2, %for.body30.2.for.body30.2_crit_edge ], [ 0, %for.body30.1.for.body30.2_crit_edge ]
  %26 = ptrtoint ptr %val.367.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.367.2, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 116, i32 noundef %i.166.2, i32 noundef %27) #6
  %inc33.2 = add nuw nsw i32 %i.166.2, 1
  %incdec.ptr34.2 = getelementptr i32, ptr %val.367.2, i32 1
  %exitcond71.2.not = icmp eq i32 %inc33.2, 64
  br i1 %exitcond71.2.not, label %for.body30.2.for.body30.3_crit_edge, label %for.body30.2.for.body30.2_crit_edge

for.body30.2.for.body30.2_crit_edge:              ; preds = %for.body30.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.2

for.body30.2.for.body30.3_crit_edge:              ; preds = %for.body30.2
  br label %for.body30.3

for.body30.3:                                     ; preds = %for.body30.3.for.body30.3_crit_edge, %for.body30.2.for.body30.3_crit_edge
  %val.367.3 = phi ptr [ %incdec.ptr34.3, %for.body30.3.for.body30.3_crit_edge ], [ %incdec.ptr34.2, %for.body30.2.for.body30.3_crit_edge ]
  %i.166.3 = phi i32 [ %inc33.3, %for.body30.3.for.body30.3_crit_edge ], [ 0, %for.body30.2.for.body30.3_crit_edge ]
  %28 = ptrtoint ptr %val.367.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.367.3, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 117, i32 noundef %i.166.3, i32 noundef %29) #6
  %inc33.3 = add nuw nsw i32 %i.166.3, 1
  %incdec.ptr34.3 = getelementptr i32, ptr %val.367.3, i32 1
  %exitcond71.3.not = icmp eq i32 %inc33.3, 64
  br i1 %exitcond71.3.not, label %for.body30.3.for.body30.4_crit_edge, label %for.body30.3.for.body30.3_crit_edge

for.body30.3.for.body30.3_crit_edge:              ; preds = %for.body30.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.3

for.body30.3.for.body30.4_crit_edge:              ; preds = %for.body30.3
  br label %for.body30.4

for.body30.4:                                     ; preds = %for.body30.4.for.body30.4_crit_edge, %for.body30.3.for.body30.4_crit_edge
  %val.367.4 = phi ptr [ %incdec.ptr34.4, %for.body30.4.for.body30.4_crit_edge ], [ %incdec.ptr34.3, %for.body30.3.for.body30.4_crit_edge ]
  %i.166.4 = phi i32 [ %inc33.4, %for.body30.4.for.body30.4_crit_edge ], [ 0, %for.body30.3.for.body30.4_crit_edge ]
  %30 = ptrtoint ptr %val.367.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.367.4, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 118, i32 noundef %i.166.4, i32 noundef %31) #6
  %inc33.4 = add nuw nsw i32 %i.166.4, 1
  %incdec.ptr34.4 = getelementptr i32, ptr %val.367.4, i32 1
  %exitcond71.4.not = icmp eq i32 %inc33.4, 64
  br i1 %exitcond71.4.not, label %for.body30.4.for.body30.5_crit_edge, label %for.body30.4.for.body30.4_crit_edge

for.body30.4.for.body30.4_crit_edge:              ; preds = %for.body30.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.4

for.body30.4.for.body30.5_crit_edge:              ; preds = %for.body30.4
  br label %for.body30.5

for.body30.5:                                     ; preds = %for.body30.5.for.body30.5_crit_edge, %for.body30.4.for.body30.5_crit_edge
  %val.367.5 = phi ptr [ %incdec.ptr34.5, %for.body30.5.for.body30.5_crit_edge ], [ %incdec.ptr34.4, %for.body30.4.for.body30.5_crit_edge ]
  %i.166.5 = phi i32 [ %inc33.5, %for.body30.5.for.body30.5_crit_edge ], [ 0, %for.body30.4.for.body30.5_crit_edge ]
  %32 = ptrtoint ptr %val.367.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.367.5, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 124, i32 noundef %i.166.5, i32 noundef %33) #6
  %inc33.5 = add nuw nsw i32 %i.166.5, 1
  %incdec.ptr34.5 = getelementptr i32, ptr %val.367.5, i32 1
  %exitcond71.5.not = icmp eq i32 %inc33.5, 64
  br i1 %exitcond71.5.not, label %for.body30.5.for.body30.6_crit_edge, label %for.body30.5.for.body30.5_crit_edge

for.body30.5.for.body30.5_crit_edge:              ; preds = %for.body30.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.5

for.body30.5.for.body30.6_crit_edge:              ; preds = %for.body30.5
  br label %for.body30.6

for.body30.6:                                     ; preds = %for.body30.6.for.body30.6_crit_edge, %for.body30.5.for.body30.6_crit_edge
  %val.367.6 = phi ptr [ %incdec.ptr34.6, %for.body30.6.for.body30.6_crit_edge ], [ %incdec.ptr34.5, %for.body30.5.for.body30.6_crit_edge ]
  %i.166.6 = phi i32 [ %inc33.6, %for.body30.6.for.body30.6_crit_edge ], [ 0, %for.body30.5.for.body30.6_crit_edge ]
  %34 = ptrtoint ptr %val.367.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.367.6, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 125, i32 noundef %i.166.6, i32 noundef %35) #6
  %inc33.6 = add nuw nsw i32 %i.166.6, 1
  %incdec.ptr34.6 = getelementptr i32, ptr %val.367.6, i32 1
  %exitcond71.6.not = icmp eq i32 %inc33.6, 64
  br i1 %exitcond71.6.not, label %for.body30.6.for.body30.7_crit_edge, label %for.body30.6.for.body30.6_crit_edge

for.body30.6.for.body30.6_crit_edge:              ; preds = %for.body30.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.6

for.body30.6.for.body30.7_crit_edge:              ; preds = %for.body30.6
  br label %for.body30.7

for.body30.7:                                     ; preds = %for.body30.7.for.body30.7_crit_edge, %for.body30.6.for.body30.7_crit_edge
  %val.367.7 = phi ptr [ %incdec.ptr34.7, %for.body30.7.for.body30.7_crit_edge ], [ %incdec.ptr34.6, %for.body30.6.for.body30.7_crit_edge ]
  %i.166.7 = phi i32 [ %inc33.7, %for.body30.7.for.body30.7_crit_edge ], [ 0, %for.body30.6.for.body30.7_crit_edge ]
  %36 = ptrtoint ptr %val.367.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.367.7, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef 126, i32 noundef %i.166.7, i32 noundef %37) #6
  %inc33.7 = add nuw nsw i32 %i.166.7, 1
  %incdec.ptr34.7 = getelementptr i32, ptr %val.367.7, i32 1
  %exitcond71.7.not = icmp eq i32 %inc33.7, 64
  br i1 %exitcond71.7.not, label %for.body30.7.if.end39_crit_edge, label %for.body30.7.for.body30.7_crit_edge

for.body30.7.for.body30.7_crit_edge:              ; preds = %for.body30.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.7

for.body30.7.if.end39_crit_edge:                  ; preds = %for.body30.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %for.body30.7.if.end39_crit_edge, %for.end18.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_fx8010_tram_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_free_efx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_util_memhdr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_efx_free_pm_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_p16v_free_pm_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu1010_load_firmware(ptr noundef %emu, i32 noundef %dock, ptr noundef %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.do.body1.i_crit_edge

entry.do.body1.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.then:                                          ; preds = %entry
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %2 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %emu_model, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx1 = getelementptr [5 x [2 x ptr]], ptr @firmware_names, i32 0, i32 %idxprom, i32 %dock
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %7, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %fw, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end7.do.body1.i_crit_edge

if.end7.do.body1.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i:                                       ; preds = %if.end7.do.body1.i_crit_edge, %entry.do.body1.i_crit_edge
  %11 = phi ptr [ %.pr, %if.end7.do.body1.i_crit_edge ], [ %1, %entry.do.body1.i_crit_edge ]
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !365
  tail call void @arm_heavy_mb() #6
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 24
  %and.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 0) #6, !srcloc !299
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %16, 24
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !366
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !367
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add21.i = add i32 %21, 24
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %22 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 -2147483648) #6, !srcloc !299
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %add27.i = add i32 %24, 24
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %25 = inttoptr i32 %add29.i to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !368
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #6
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp33123.not.i = icmp eq i32 %29, 0
  br i1 %cmp33123.not.i, label %do.body1.i.do.body80.i_crit_edge, label %for.body.lr.ph.i

do.body1.i.do.body80.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80.i

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc77.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0124.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc78.i, %for.inc77.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %31, i32 %n.0124.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv35.i = zext i8 %33 to i32
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.body.i
  %i.0122.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body39.i.for.body39.i_crit_edge ]
  %value.0121.i = phi i32 [ %conv35.i, %for.body.i ], [ %34, %for.body39.i.for.body39.i_crit_edge ]
  %and40.i = and i32 %value.0121.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %spec.select.i = select i1 %tobool41.not.i, i32 -2147483648, i32 -1610612736
  %34 = lshr i32 %value.0121.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !369
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %add48.i = add i32 %36, 24
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %37 = inttoptr i32 %add50.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %spec.select.i) #6, !srcloc !299
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %add54.i = add i32 %39, 24
  %and55.i = and i32 %add54.i, 1048575
  %add56.i = or i32 %and55.i, -18874368
  %40 = inttoptr i32 %add56.i to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !371
  tail call void @arm_heavy_mb() #6
  %42 = or i32 %spec.select.i, 1073741824
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add65.i = add i32 %44, 24
  %and66.i = and i32 %add65.i, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %45 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #6, !srcloc !299
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %add71.i = add i32 %47, 24
  %and72.i = and i32 %add71.i, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %48 = inttoptr i32 %add73.i to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !372
  %inc.i = add nuw nsw i32 %i.0122.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc77.i, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.i

for.inc77.i:                                      ; preds = %for.body39.i
  %inc78.i = add nuw i32 %n.0124.i, 1
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %11, align 4
  %cmp33.i = icmp ult i32 %inc78.i, %51
  br i1 %cmp33.i, label %for.inc77.i.for.body.i_crit_edge, label %for.inc77.i.do.body80.i_crit_edge

for.inc77.i.do.body80.i_crit_edge:                ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80.i

for.inc77.i.for.body.i_crit_edge:                 ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body80.i:                                      ; preds = %for.inc77.i.do.body80.i_crit_edge, %do.body1.i.do.body80.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !373
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add84.i = add i32 %53, 24
  %and85.i = and i32 %add84.i, 1048575
  %add86.i = or i32 %and85.i, -18874368
  %54 = inttoptr i32 %add86.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 268435456) #6, !srcloc !299
  %55 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port.i, align 4
  %add90.i = add i32 %56, 24
  %and91.i = and i32 %add90.i, 1048575
  %add92.i = or i32 %and91.i, -18874368
  %57 = inttoptr i32 %add92.i to ptr
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %57) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !374
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body80.i, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %do.body80.i ], [ -5, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr20_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_emu10k1_ecard_write(ptr nocapture noundef readonly %emu, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !375
  %4 = and i32 %3, -1835009
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !376
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %4) #6, !srcloc !299
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %value.addr.059 = phi i32 [ %value, %entry ], [ %shr, %for.body.for.body_crit_edge ]
  %count.058 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %and8 = shl i32 %value.addr.059, 10
  %6 = and i32 %and8, 1024
  %shr = lshr i32 %value.addr.059, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !377
  tail call void @arm_heavy_mb() #6
  %or = or i32 %6, %5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %7) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !378
  tail call void @arm_heavy_mb() #6
  %or19 = or i32 %or, 2048
  %8 = tail call i32 @llvm.bswap.i32(i32 %or19)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %8) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !379
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %7) #6, !srcloc !299
  %inc = add nuw nsw i16 %count.058, 1
  %cmp = icmp ult i16 %count.058, 19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.body30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  tail call void @arm_heavy_mb() #6
  %or33 = or i32 %5, 4096
  %9 = tail call i32 @llvm.bswap.i32(i32 %or33)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %9) #6, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %4) #6, !srcloc !299
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_spi_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_i2c_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_efx_alloc_pm_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_p16v_alloc_pm_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !71, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !285, !287}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @__UNIQUE_ID_firmware242, !1, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware243, !3, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware244, !5, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 48, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware245, !7, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 49, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware246, !9, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 50, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware247, !11, !"__UNIQUE_ID_firmware247", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 51, i32 1}
!12 = !{ptr @snd_emu10k1_create.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1789, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_emu10k1_create.__key.1, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1790, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snd_emu10k1_create.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1791, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_emu10k1_create.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1792, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snd_emu10k1_create.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1793, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snd_emu10k1_create.__key.9, !28, !"__key", i1 false, i1 false}
!28 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1794, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @snd_emu10k1_create.__key.11, !31, !"__key", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1795, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_emu10k1_create.__key.13, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1796, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_emu10k1_create.__key.15, !37, !"__key", i1 false, i1 false}
!37 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1803, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @snd_emu10k1_create.__key.17, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1808, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug250, !42, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1829, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @snd_emu10k1_create._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_emu10k1_create._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1834, i32 3}
!55 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug251, !54, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1836, i32 3}
!58 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug252, !57, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1841, i32 3}
!61 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug253, !60, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1858, i32 3}
!64 = !{ptr @snd_emu10k1_create._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @snd_emu10k1_create._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1868, i32 33}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1880, i32 2}
!70 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug254, !69, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1894, i32 2}
!73 = !{ptr @snd_emu10k1_create.__UNIQUE_ID_ddebug255, !72, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 749, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @emu1010_firmware_work._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @emu1010_firmware_work._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 759, i32 3}
!82 = !{ptr @emu1010_firmware_work._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @emu1010_firmware_work._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 763, i32 3}
!86 = !{ptr @emu1010_firmware_work._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @emu1010_firmware_work._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 767, i32 4}
!90 = !{ptr @emu1010_firmware_work._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @emu1010_firmware_work._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 772, i32 3}
!94 = !{ptr @emu1010_firmware_work._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @emu1010_firmware_work._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 776, i32 3}
!98 = !{ptr @emu1010_firmware_work._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @emu1010_firmware_work._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 784, i32 3}
!102 = !{ptr @emu1010_firmware_work._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @emu1010_firmware_work._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 699, i32 3}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 699, i32 18}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 702, i32 3}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 702, i32 22}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 705, i32 3}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 708, i32 3}
!116 = !{ptr @firmware_names, !117, !"firmware_names", i1 false, i1 false}
!117 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 697, i32 27}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1283, i32 13}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1283, i32 32}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1329, i32 32}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1347, i32 32}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1386, i32 32}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1396, i32 32}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1397, i32 9}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1406, i32 32}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1415, i32 32}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1424, i32 32}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1432, i32 32}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1433, i32 9}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1440, i32 32}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1448, i32 32}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1456, i32 32}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1463, i32 32}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1476, i32 32}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1488, i32 32}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1498, i32 32}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1508, i32 32}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1526, i32 32}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1536, i32 32}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1546, i32 32}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1556, i32 32}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1567, i32 32}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1575, i32 13}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1575, i32 31}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1581, i32 31}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1588, i32 31}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1594, i32 31}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1600, i32 32}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1601, i32 9}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1606, i32 32}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1612, i32 32}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1618, i32 32}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1627, i32 32}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1640, i32 32}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1647, i32 32}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1655, i32 32}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1661, i32 32}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1666, i32 32}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1672, i32 32}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1678, i32 32}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1685, i32 32}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1691, i32 32}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1697, i32 32}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1703, i32 32}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1709, i32 32}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1710, i32 9}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1714, i32 32}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1720, i32 32}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1726, i32 32}
!222 = !{ptr @emu_chip_details, !223, !"emu_chip_details", i1 false, i1 false}
!223 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1273, i32 42}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 1761, i32 2}
!226 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @snd_emu10k1_detect_iommu._entry, !225, !"_entry", i1 false, i1 false}
!229 = !{ptr @snd_emu10k1_detect_iommu._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 833, i32 2}
!232 = !{ptr @.str.118, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @snd_emu10k1_emu1010_init._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 858, i32 2}
!237 = !{ptr @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug248, !236, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 866, i32 2}
!240 = !{ptr @snd_emu10k1_emu1010_init.__UNIQUE_ID_ddebug249, !239, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 869, i32 3}
!243 = !{ptr @snd_emu10k1_emu1010_init._entry.121, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.123, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 873, i32 2}
!247 = !{ptr @snd_emu10k1_emu1010_init._entry.124, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.126, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 877, i32 3}
!251 = !{ptr @snd_emu10k1_emu1010_init._entry.127, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.129, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.131, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 885, i32 3}
!255 = !{ptr @snd_emu10k1_emu1010_init._entry.130, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.132, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.134, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 891, i32 2}
!259 = !{ptr @snd_emu10k1_emu1010_init._entry.133, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.135, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.137, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 894, i32 2}
!263 = !{ptr @snd_emu10k1_emu1010_init._entry.136, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.138, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 899, i32 2}
!267 = !{ptr @snd_emu10k1_emu1010_init._entry.139, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.141, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @snd_emu10k1_emu1010_init._entry.142, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 901, i32 2}
!271 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.143, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.145, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 940, i32 2}
!274 = !{ptr @snd_emu10k1_emu1010_init._entry.144, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @snd_emu10k1_emu1010_init._entry_ptr.146, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.147, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 205, i32 3}
!278 = !{ptr @.str.148, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @snd_emu10k1_init._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @snd_emu10k1_init._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = distinct !{null, !282, !"spi_dac_init", i1 false, i1 false}
!282 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 103, i32 27}
!283 = distinct !{null, !284, !"i2c_adc_init", i1 false, i1 false}
!284 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 127, i32 27}
!285 = !{ptr @saved_regs, !286, !"saved_regs", i1 false, i1 false}
!286 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 2003, i32 28}
!287 = distinct !{null, !288, !"saved_regs_audigy", i1 false, i1 false}
!288 = !{!"../sound/pci/emu10k1/emu10k1_main.c", i32 2012, i32 28}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{i64 2155085846}
!299 = !{i64 4691073}
!300 = !{i64 2155086536}
!301 = !{i64 2148300018, i64 2148300023, i64 2148300036, i64 2148300080, i64 2148300114, i64 2148300135}
!302 = !{!"auto-init"}
!303 = !{i8 0, i8 2}
!304 = !{i64 4691491}
!305 = !{i64 2155093554}
!306 = !{i64 2155093810}
!307 = !{i64 2155094698}
!308 = !{i64 2155094954}
!309 = !{i64 2155095842}
!310 = !{i64 2155096098}
!311 = !{i64 2155096986}
!312 = !{i64 2155097242}
!313 = !{i64 2155098130}
!314 = !{i64 2155098386}
!315 = !{i64 2155099274}
!316 = !{i64 2155091517}
!317 = !{i64 2155091828}
!318 = !{i64 2155092789}
!319 = !{i64 2155126297}
!320 = !{i64 2155126796}
!321 = !{i64 2155127295}
!322 = !{i64 2155127794}
!323 = !{i64 2155148744}
!324 = !{i64 2155149243}
!325 = !{i64 2155052013}
!326 = !{i64 2155052618}
!327 = !{i64 2155053184}
!328 = !{i64 2155055366}
!329 = !{i64 2155055850}
!330 = !{i64 2155056330}
!331 = !{i64 2155056820}
!332 = !{i64 2155057312}
!333 = !{i64 2155057802}
!334 = !{i64 2155058715}
!335 = !{i64 2155058973}
!336 = !{i64 2155059838}
!337 = !{i64 2155060744}
!338 = !{i64 2155061008}
!339 = !{i64 2155061919}
!340 = !{i64 2155062679}
!341 = !{i64 2155064535}
!342 = !{i64 2155065119}
!343 = !{i64 2155066084}
!344 = !{i64 2155066358}
!345 = !{i64 2155067434}
!346 = !{i64 2155068496}
!347 = !{i64 2155069395}
!348 = !{i64 2155069677}
!349 = !{i64 2155070777}
!350 = !{i64 2155071855}
!351 = !{i64 2155072754}
!352 = !{i64 2155073028}
!353 = !{i64 2155074514}
!354 = !{i64 2155075197}
!355 = !{i64 2155076582}
!356 = !{i64 2155077265}
!357 = !{i64 2155078634}
!358 = !{i64 2155079312}
!359 = !{i64 2155080677}
!360 = !{i64 2155081356}
!361 = !{i64 2155177926}
!362 = !{i64 2155178605}
!363 = !{i64 2155178893}
!364 = !{i64 2155179413}
!365 = !{i64 2155099928}
!366 = !{i64 2155100829}
!367 = !{i64 2155101636}
!368 = !{i64 2155102537}
!369 = !{i64 2155103343}
!370 = !{i64 2155104242}
!371 = !{i64 2155104507}
!372 = !{i64 2155105420}
!373 = !{i64 2155105679}
!374 = !{i64 2155106580}
!375 = !{i64 2155087470}
!376 = !{i64 2155087752}
!377 = !{i64 2155088243}
!378 = !{i64 2155088758}
!379 = !{i64 2155089275}
!380 = !{i64 2155089783}
!381 = !{i64 2155090279}
