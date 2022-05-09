; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/irq.c_pt.bc'
source_filename = "../sound/pci/emu10k1/irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_emu10k1_pcm = type { ptr, i32, ptr, [16 x ptr], ptr, i16, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@snd_emu10k1_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Suspected sound card removal\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_emu10k1_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/emu10k1/irq.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_interrupt._entry_ptr = internal global ptr @snd_emu10k1_interrupt._entry, section ".printk_index", align 4
@snd_emu10k1_interrupt._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interrupt: PCI error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_emu10k1_interrupt._entry_ptr.8 = internal global ptr @snd_emu10k1_interrupt._entry.5, section ".printk_index", align 4
@snd_emu10k1_interrupt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 156, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"p16v: status: 0x%08x, mask=0x%08x, pvoice=%p, use=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_emu10k1_interrupt._entry_ptr.11 = internal global ptr @snd_emu10k1_interrupt._entry.9, section ".printk_index", align 4
@snd_emu10k1_interrupt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 174, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unhandled interrupt: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_emu10k1_interrupt._entry_ptr.14 = internal global ptr @snd_emu10k1_interrupt._entry.12, section ".printk_index", align 4
@snd_emu10k1_interrupt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"emu10k1 irq routine failure\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_emu10k1_interrupt._entry_ptr.17 = internal global ptr @snd_emu10k1_interrupt._entry.15, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 35, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 153, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 173, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [27 x i8] c"../sound/pci/emu10k1/irq.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 196, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @snd_emu10k1_interrupt._entry, ptr @snd_emu10k1_interrupt._entry.12, ptr @snd_emu10k1_interrupt._entry.15, ptr @snd_emu10k1_interrupt._entry.5, ptr @snd_emu10k1_interrupt._entry.9, ptr @snd_emu10k1_interrupt._entry_ptr, ptr @snd_emu10k1_interrupt._entry_ptr.11, ptr @snd_emu10k1_interrupt._entry_ptr.14, ptr @snd_emu10k1_interrupt._entry_ptr.17, ptr @snd_emu10k1_interrupt._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_interrupt._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_interrupt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_interrupt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_interrupt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add407 = add i32 %1, 8
  %and408 = and i32 %add407, 1048575
  %add1409 = or i32 %and408, -18874368
  %2 = inttoptr i32 %add1409 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not410.not = icmp eq i32 %3, 0
  br i1 %cmp.not410.not, label %entry.if.end248_crit_edge, label %while.body.lr.ph

entry.if.end248_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end248

while.body.lr.ph:                                 ; preds = %entry
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %card11 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 32
  %hwvol_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 61
  %voices = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 46
  %capture_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 62
  %capture_mic_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 63
  %capture_efx_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 64
  %interrupt110 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 72, i32 13
  %interrupt122 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 73, i32 13
  %timer = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 71
  %spdif_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 65
  %dsp_interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 66
  %p16v_voices = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 47
  %use180 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 47, i32 0, i32 2
  %epcm = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 47, i32 0, i32 4
  %use201 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 48, i32 2
  %epcm207 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 48, i32 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %do.body232.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %83, %do.body232.while.body_crit_edge ]
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %82, %do.body232.while.body_crit_edge ]
  %timeout.0411 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %do.body232.while.body_crit_edge ]
  %inc = add nuw nsw i32 %timeout.0411, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp5 = icmp eq i32 %6, -1
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card11, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str) #7
  br label %while.end240

if.end:                                           ; preds = %while.body
  %and6 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %do.end10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card11, align 4
  %dev12 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #7
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 2048) #4
  %and13 = and i32 %5, -2097153
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %if.end.if.end14_crit_edge
  %status.0 = phi i32 [ %and13, %do.end10 ], [ %5, %if.end.if.end14_crit_edge ]
  %and15 = and i32 %status.0, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %15 = ptrtoint ptr %hwvol_interrupt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwvol_interrupt, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %16(ptr noundef %dev_id, i32 noundef %status.0) #4
  br label %if.end21

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 1792) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %and22 = and i32 %status.0, -1835009
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end14.if.end23_crit_edge
  %status.1 = phi i32 [ %and22, %if.end21 ], [ %status.0, %if.end14.if.end23_crit_edge ]
  %and24 = and i32 %status.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end75_crit_edge, label %if.then26

if.end23.if.end75_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then26:                                        ; preds = %if.end23
  %and27 = and i32 %status.1, 63
  %call28 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %dev_id, i32 noundef 90, i32 noundef 0) #4
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.then26
  %pvoice.0397 = phi ptr [ %voices, %if.then26 ], [ %incdec.ptr, %if.end43.for.body_crit_edge ]
  %val.0396 = phi i32 [ %call28, %if.then26 ], [ %shr, %if.end43.for.body_crit_edge ]
  %voice.0393 = phi i32 [ 0, %if.then26 ], [ %inc44, %if.end43.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %voice.0393)
  %cmp30 = icmp eq i32 %voice.0393, 32
  br i1 %cmp30, label %if.then31, label %for.body.if.end33_crit_edge

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %dev_id, i32 noundef 91, i32 noundef 0) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body.if.end33_crit_edge
  %val.1 = phi i32 [ %call32, %if.then31 ], [ %val.0396, %for.body.if.end33_crit_edge ]
  %and34 = and i32 %val.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end43_crit_edge, label %if.then36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then36:                                        ; preds = %if.end33
  %use = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice.0397, i32 0, i32 2
  %17 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool37.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool37.not, label %if.then36.if.else41_crit_edge, label %land.lhs.true

if.then36.if.else41_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else41

land.lhs.true:                                    ; preds = %if.then36
  %interrupt = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice.0397, i32 0, i32 3
  %18 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt, align 4
  %cmp38.not = icmp eq ptr %19, null
  br i1 %cmp38.not, label %land.lhs.true.if.else41_crit_edge, label %if.then39

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else41

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %19(ptr noundef %dev_id, ptr noundef %pvoice.0397) #4
  tail call void @snd_emu10k1_voice_intr_ack(ptr noundef %dev_id, i32 noundef %voice.0393) #4
  br label %if.end43

if.else41:                                        ; preds = %land.lhs.true.if.else41_crit_edge, %if.then36.if.else41_crit_edge
  tail call void @snd_emu10k1_voice_intr_disable(ptr noundef %dev_id, i32 noundef %voice.0393) #4
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39, %if.end33.if.end43_crit_edge
  %shr = lshr i32 %val.1, 1
  %incdec.ptr = getelementptr %struct.snd_emu10k1_voice, ptr %pvoice.0397, i32 1
  %inc44 = add nuw nsw i32 %voice.0393, 1
  %exitcond = icmp eq i32 %voice.0393, %and27
  br i1 %exitcond, label %for.end, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end43
  %call45 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %dev_id, i32 noundef 104, i32 noundef 0) #4
  br label %for.body48

for.body48:                                       ; preds = %if.end68.for.body48_crit_edge, %for.end
  %pvoice.1402 = phi ptr [ %incdec.ptr, %for.end ], [ %incdec.ptr70, %if.end68.for.body48_crit_edge ]
  %val.2401 = phi i32 [ %call45, %for.end ], [ %shr69, %if.end68.for.body48_crit_edge ]
  %voice.1398 = phi i32 [ 0, %for.end ], [ %inc72, %if.end68.for.body48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %voice.1398)
  %cmp49 = icmp eq i32 %voice.1398, 32
  br i1 %cmp49, label %if.then50, label %for.body48.if.end52_crit_edge

for.body48.if.end52_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then50:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  %call51 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %dev_id, i32 noundef 105, i32 noundef 0) #4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body48.if.end52_crit_edge
  %val.3 = phi i32 [ %call51, %if.then50 ], [ %val.2401, %for.body48.if.end52_crit_edge ]
  %and53 = and i32 %val.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end68_crit_edge, label %if.then55

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then55:                                        ; preds = %if.end52
  %use56 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice.1402, i32 0, i32 2
  %20 = ptrtoint ptr %use56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load57 = load i8, ptr %use56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57)
  %tobool60.not = icmp sgt i8 %bf.load57, -1
  br i1 %tobool60.not, label %if.then55.if.else66_crit_edge, label %land.lhs.true61

if.then55.if.else66_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else66

land.lhs.true61:                                  ; preds = %if.then55
  %interrupt62 = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice.1402, i32 0, i32 3
  %21 = ptrtoint ptr %interrupt62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interrupt62, align 4
  %cmp63.not = icmp eq ptr %22, null
  br i1 %cmp63.not, label %land.lhs.true61.if.else66_crit_edge, label %if.then64

land.lhs.true61.if.else66_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else66

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %22(ptr noundef %dev_id, ptr noundef %pvoice.1402) #4
  tail call void @snd_emu10k1_voice_half_loop_intr_ack(ptr noundef %dev_id, i32 noundef %voice.1398) #4
  br label %if.end68

if.else66:                                        ; preds = %land.lhs.true61.if.else66_crit_edge, %if.then55.if.else66_crit_edge
  tail call void @snd_emu10k1_voice_half_loop_intr_disable(ptr noundef %dev_id, i32 noundef %voice.1398) #4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64, %if.end52.if.end68_crit_edge
  %shr69 = lshr i32 %val.3, 1
  %incdec.ptr70 = getelementptr %struct.snd_emu10k1_voice, ptr %pvoice.1402, i32 1
  %inc72 = add nuw nsw i32 %voice.1398, 1
  %exitcond414 = icmp eq i32 %voice.1398, %and27
  br i1 %exitcond414, label %for.end73, label %if.end68.for.body48_crit_edge

if.end68.for.body48_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body48

for.end73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %and74 = and i32 %status.1, -65
  br label %if.end75

if.end75:                                         ; preds = %for.end73, %if.end23.if.end75_crit_edge
  %status.2 = phi i32 [ %and74, %for.end73 ], [ %status.1, %if.end23.if.end75_crit_edge ]
  %and76 = and i32 %status.2, -64
  %and77 = and i32 %status.2, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end86_crit_edge, label %if.then79

if.end75.if.end86_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then79:                                        ; preds = %if.end75
  %23 = ptrtoint ptr %capture_interrupt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %capture_interrupt, align 4
  %tobool80.not = icmp eq ptr %24, null
  br i1 %tobool80.not, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %24(ptr noundef %dev_id, i32 noundef %and76) #4
  br label %if.end84

if.else83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 64) #4
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then81
  %and85 = and i32 %status.2, -49216
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %if.end75.if.end86_crit_edge
  %status.3 = phi i32 [ %and85, %if.end84 ], [ %and76, %if.end75.if.end86_crit_edge ]
  %and87 = and i32 %status.3, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end96_crit_edge, label %if.then89

if.end86.if.end96_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then89:                                        ; preds = %if.end86
  %25 = ptrtoint ptr %capture_mic_interrupt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %capture_mic_interrupt, align 4
  %tobool90.not = icmp eq ptr %26, null
  br i1 %tobool90.not, label %if.else93, label %if.then91

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %26(ptr noundef %dev_id, i32 noundef %status.3) #4
  br label %if.end94

if.else93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 128) #4
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then91
  %and95 = and i32 %status.3, -196672
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %if.end86.if.end96_crit_edge
  %status.4 = phi i32 [ %and95, %if.end94 ], [ %status.3, %if.end86.if.end96_crit_edge ]
  %and97 = and i32 %status.4, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end106_crit_edge, label %if.then99

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then99:                                        ; preds = %if.end96
  %27 = ptrtoint ptr %capture_efx_interrupt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %capture_efx_interrupt, align 4
  %tobool100.not = icmp eq ptr %28, null
  br i1 %tobool100.not, label %if.else103, label %if.then101

if.then101:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %28(ptr noundef %dev_id, i32 noundef %status.4) #4
  br label %if.end104

if.else103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 32) #4
  br label %if.end104

if.end104:                                        ; preds = %if.else103, %if.then101
  %and105 = and i32 %status.4, -12289
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %if.end96.if.end106_crit_edge
  %status.5 = phi i32 [ %and105, %if.end104 ], [ %status.4, %if.end96.if.end106_crit_edge ]
  %and107 = and i32 %status.5, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end118_crit_edge, label %if.then109

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.then109:                                       ; preds = %if.end106
  %29 = ptrtoint ptr %interrupt110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt110, align 4
  %tobool111.not = icmp eq ptr %30, null
  br i1 %tobool111.not, label %if.else115, label %if.then112

if.then112:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %30(ptr noundef %dev_id, i32 noundef %status.5) #4
  br label %if.end116

if.else115:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 3) #4
  br label %if.end116

if.end116:                                        ; preds = %if.else115, %if.then112
  %and117 = and i32 %status.5, -385
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %if.end106.if.end118_crit_edge
  %status.6 = phi i32 [ %and117, %if.end116 ], [ %status.5, %if.end106.if.end118_crit_edge ]
  %and119 = and i32 %status.6, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end130_crit_edge, label %if.then121

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then121:                                       ; preds = %if.end118
  %31 = ptrtoint ptr %interrupt122 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interrupt122, align 4
  %tobool123.not = icmp eq ptr %32, null
  br i1 %tobool123.not, label %if.else127, label %if.then124

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %32(ptr noundef %dev_id, i32 noundef %status.6) #4
  br label %if.end128

if.else127:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 196608) #4
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then124
  %and129 = and i32 %status.6, -402653185
  br label %if.end130

if.end130:                                        ; preds = %if.end128, %if.end118.if.end130_crit_edge
  %status.7 = phi i32 [ %and129, %if.end128 ], [ %status.6, %if.end118.if.end130_crit_edge ]
  %and131 = and i32 %status.7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end141_crit_edge, label %if.then133

if.end130.if.end141_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end141

if.then133:                                       ; preds = %if.end130
  %33 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %timer, align 4
  %tobool134.not = icmp eq ptr %34, null
  br i1 %tobool134.not, label %if.else138, label %if.then135

if.then135:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sticks, align 4
  tail call void @snd_timer_interrupt(ptr noundef nonnull %34, i32 noundef %36) #4
  br label %if.end139

if.else138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 4) #4
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then135
  %and140 = and i32 %status.7, -513
  br label %if.end141

if.end141:                                        ; preds = %if.end139, %if.end130.if.end141_crit_edge
  %status.8 = phi i32 [ %and140, %if.end139 ], [ %status.7, %if.end130.if.end141_crit_edge ]
  %and142 = and i32 %status.8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end151_crit_edge, label %if.then144

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

if.then144:                                       ; preds = %if.end141
  %37 = ptrtoint ptr %spdif_interrupt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spdif_interrupt, align 4
  %tobool145.not = icmp eq ptr %38, null
  br i1 %tobool145.not, label %if.else148, label %if.then146

if.then146:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %38(ptr noundef %dev_id, i32 noundef %status.8) #4
  br label %if.end149

if.else148:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 24) #4
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %if.then146
  %and150 = and i32 %status.8, -3073
  br label %if.end151

if.end151:                                        ; preds = %if.end149, %if.end141.if.end151_crit_edge
  %status.9 = phi i32 [ %and150, %if.end149 ], [ %status.8, %if.end141.if.end151_crit_edge ]
  %and152 = and i32 %status.9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end161_crit_edge, label %if.then154

if.end151.if.end161_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161

if.then154:                                       ; preds = %if.end151
  %39 = ptrtoint ptr %dsp_interrupt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dsp_interrupt, align 4
  %tobool155.not = icmp eq ptr %40, null
  br i1 %tobool155.not, label %if.else158, label %if.then156

if.then156:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %40(ptr noundef %dev_id) #4
  br label %if.end159

if.else158:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef 4096) #4
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %if.then156
  %and160 = and i32 %status.9, -8388609
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %if.end151.if.end161_crit_edge
  %status.10 = phi i32 [ %and160, %if.end159 ], [ %status.9, %if.end151.if.end161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.10)
  %tobool163.not = icmp sgt i32 %status.10, -1
  br i1 %tobool163.not, label %if.end161.if.end220_crit_edge, label %while.cond165.preheader

if.end161.if.end220_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end220

while.cond165.preheader:                          ; preds = %if.end161
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add168403 = add i32 %42, 40
  %and169404 = and i32 %add168403, 1048575
  %add170405 = or i32 %and169404, -18874368
  %43 = inttoptr i32 %add170405 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp174.not406 = icmp eq i32 %44, 0
  br i1 %cmp174.not406, label %while.cond165.preheader.while.end_crit_edge, label %while.body175.preheader

while.cond165.preheader.while.end_crit_edge:      ; preds = %while.cond165.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body175.preheader:                          ; preds = %while.cond165.preheader
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  br label %while.body175

while.body175:                                    ; preds = %do.body211.while.body175_crit_edge, %while.body175.preheader
  %46 = phi i32 [ %69, %do.body211.while.body175_crit_edge ], [ %45, %while.body175.preheader ]
  %47 = phi i32 [ %68, %do.body211.while.body175_crit_edge ], [ %44, %while.body175.preheader ]
  %and177 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %while.body175.if.end197_crit_edge, label %if.then179

while.body175.if.end197_crit_edge:                ; preds = %while.body175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end197

if.then179:                                       ; preds = %while.body175
  %48 = ptrtoint ptr %use180 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load181 = load i8, ptr %use180, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load181)
  %tobool184.not = icmp sgt i8 %bf.load181, -1
  br i1 %tobool184.not, label %do.end189, label %if.then185

if.then185:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %epcm, align 4
  %substream = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %52) #4
  br label %if.end197

do.end189:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card11, align 4
  %dev191 = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev191, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.10, i32 noundef %46, i32 noundef 4096, ptr noundef %p16v_voices, i32 noundef 0) #7
  br label %if.end197

if.end197:                                        ; preds = %do.end189, %if.then185, %while.body175.if.end197_crit_edge
  %and198 = and i32 %46, 1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.end197.do.body211_crit_edge, label %if.then200

if.end197.do.body211_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body211

if.then200:                                       ; preds = %if.end197
  %57 = ptrtoint ptr %use201 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load202 = load i8, ptr %use201, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load202)
  %tobool205.not = icmp sgt i8 %bf.load202, -1
  br i1 %tobool205.not, label %if.then200.do.body211_crit_edge, label %if.then206

if.then200.do.body211_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body211

if.then206:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %epcm207 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %epcm207, align 4
  %substream208 = getelementptr inbounds %struct.snd_emu10k1_pcm, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %substream208 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %substream208, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %61) #4
  br label %do.body211

do.body211:                                       ; preds = %if.then206, %if.then200.do.body211_crit_edge, %if.end197.do.body211_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add215 = add i32 %63, 40
  %and216 = and i32 %add215, 1048575
  %add217 = or i32 %and216, -18874368
  %64 = inttoptr i32 %add217 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 %47) #4, !srcloc !38
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add168 = add i32 %66, 40
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %67 = inttoptr i32 %add170 to ptr
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #4, !srcloc !34
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %cmp174.not = icmp eq i32 %68, 0
  br i1 %cmp174.not, label %do.body211.while.end_crit_edge, label %do.body211.while.body175_crit_edge

do.body211.while.body175_crit_edge:               ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body175

do.body211.while.end_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body211.while.end_crit_edge, %while.cond165.preheader.while.end_crit_edge
  %and219 = and i32 %status.10, 2147483647
  br label %if.end220

if.end220:                                        ; preds = %while.end, %if.end161.if.end220_crit_edge
  %status.11 = phi i32 [ %and219, %while.end ], [ %status.10, %if.end161.if.end220_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.11)
  %tobool221.not = icmp eq i32 %status.11, 0
  br i1 %tobool221.not, label %if.end220.do.body232_crit_edge, label %if.then222

if.end220.do.body232_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body232

if.then222:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card11, align 4
  %dev227 = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev227 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev227, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.13, i32 noundef %status.11) #7
  %74 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool228.not = icmp eq i32 %75, 0
  %spec.select = select i1 %tobool228.not, i32 8191, i32 204799
  tail call void @snd_emu10k1_intr_disable(ptr noundef %dev_id, i32 noundef %spec.select) #4
  br label %do.body232

do.body232:                                       ; preds = %if.then222, %if.end220.do.body232_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add236 = add i32 %77, 8
  %and237 = and i32 %add236, 1048575
  %add238 = or i32 %and237, -18874368
  %78 = inttoptr i32 %add238 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %78, i32 %6) #4, !srcloc !38
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port, align 4
  %add = add i32 %80, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %81 = inttoptr i32 %add1 to ptr
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %81) #4, !srcloc !34
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.not = icmp ne i32 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %timeout.0411)
  %cmp3 = icmp ult i32 %timeout.0411, 999
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %do.body232.while.body_crit_edge, label %do.body232.while.end240_crit_edge

do.body232.while.end240_crit_edge:                ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end240

do.body232.while.body_crit_edge:                  ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end240:                                     ; preds = %do.body232.while.end240_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp241 = icmp eq i32 %inc, 1000
  br i1 %cmp241, label %do.end245, label %while.end240.if.end248_crit_edge

while.end240.if.end248_crit_edge:                 ; preds = %while.end240
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end248

do.end245:                                        ; preds = %while.end240
  call void @__sanitizer_cov_trace_pc() #6
  %card246 = getelementptr inbounds %struct.snd_emu10k1, ptr %dev_id, i32 0, i32 32
  %84 = ptrtoint ptr %card246 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card246, align 4
  %dev247 = getelementptr inbounds %struct.snd_card, ptr %85, i32 0, i32 27
  %86 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev247, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.16) #7
  br label %if.end248

if.end248:                                        ; preds = %do.end245, %while.end240.if.end248_crit_edge, %entry.if.end248_crit_edge
  %88 = xor i1 %cmp.not410.not, true
  %cond = zext i1 %88 to i32
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_intr_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_half_loop_intr_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_half_loop_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/irq.c", i32 30, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_emu10k1_interrupt._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_emu10k1_interrupt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/emu10k1/irq.c", i32 35, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_emu10k1_interrupt._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_emu10k1_interrupt._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/emu10k1/irq.c", i32 153, i32 7}
!15 = !{ptr @snd_emu10k1_interrupt._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_emu10k1_interrupt._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/emu10k1/irq.c", i32 173, i32 4}
!19 = !{ptr @snd_emu10k1_interrupt._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @snd_emu10k1_interrupt._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/emu10k1/irq.c", i32 196, i32 3}
!23 = !{ptr @snd_emu10k1_interrupt._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @snd_emu10k1_interrupt._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 6560023}
!35 = !{i64 2154426869}
!36 = !{i64 2154431443}
!37 = !{i64 2154433674}
!38 = !{i64 6559605}
!39 = !{i64 2154436012}
