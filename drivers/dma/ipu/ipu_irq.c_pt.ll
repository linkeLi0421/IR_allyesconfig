; ModuleID = '/llk/IR_all_yes/drivers/dma/ipu/ipu_irq.c_pt.bc'
source_filename = "../drivers/dma/ipu/ipu_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipu_irq_map = type { i32, i32, ptr, ptr }
%struct.ipu_irq_bank = type { i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipu = type { ptr, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.idmac, [32 x %struct.idmac_channel], %struct.tasklet_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.idmac = type { %struct.dma_device }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@bank_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/ipu/ipu_irq.c\00", [38 x i8] zeroinitializer }, align 32
@map_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @map_lock, i64 52), ptr getelementptr (i8, ptr @map_lock, i64 52) }, ptr @map_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ipu_irq_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013IPU: Source %u already mapped to IRQ %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipu_irq_map\00", [20 x i8] zeroinitializer }, align 32
@ipu_irq_map._entry_ptr = internal global ptr @ipu_irq_map._entry, section ".printk_index", align 4
@irq_map = internal global { [4 x %struct.ipu_irq_map], [32 x i8] } zeroinitializer, align 32
@irq_bank = internal global { [5 x %struct.ipu_irq_bank], [36 x i8] } { [5 x %struct.ipu_irq_bank] [%struct.ipu_irq_bank { i32 40, i32 60, ptr null }, %struct.ipu_irq_bank { i32 44, i32 64, ptr null }, %struct.ipu_irq_bank { i32 48, i32 68, ptr null }, %struct.ipu_irq_bank { i32 52, i32 72, ptr null }, %struct.ipu_irq_bank { i32 56, i32 76, ptr null }], [36 x i8] zeroinitializer }, align 32
@ipu_irq_map.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipu_irq\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IPU: mapped source %u to IRQ %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ipu_irq_map._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013IPU: couldn't map source %u: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ipu_irq_map._entry_ptr.7 = internal global ptr @ipu_irq_map._entry.5, section ".printk_index", align 4
@ipu_irq_unmap.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipu_irq_unmap\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IPU: unmapped source %u from IRQ %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ipu_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @ipu_irq_ack, ptr @ipu_irq_mask, ptr null, ptr @ipu_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bank_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"map_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"map_lock\00", [23 x i8] zeroinitializer }, align 32
@ipu_irq_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013IPU: %s(%u) - unmapped!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipu_irq_ack\00", [20 x i8] zeroinitializer }, align 32
@ipu_irq_ack._entry_ptr = internal global ptr @ipu_irq_ack._entry, section ".printk_index", align 4
@ipu_irq_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu_irq_mask\00", [19 x i8] zeroinitializer }, align 32
@ipu_irq_mask._entry_ptr = internal global ptr @ipu_irq_mask._entry, section ".printk_index", align 4
@ipu_irq_unmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.16, ptr @.str, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipu_irq_unmask\00", [17 x i8] zeroinitializer }, align 32
@ipu_irq_unmask._entry_ptr = internal global ptr @ipu_irq_unmask._entry, section ".printk_index", align 4
@ipu_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013IPU: Interrupt on unmapped source %u bank %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipu_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@ipu_irq_handler._entry_ptr = internal global ptr @ipu_irq_handler._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"bank_lock\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 198, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"map_lock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 203, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"irq_map\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 76, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"irq_bank\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 218, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 227, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 248, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"ipu_irq_chip\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 306, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 80, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 78, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 150, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 128, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 105, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [29 x i8] c"../drivers/dma/ipu/ipu_irq.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 295, i32 5 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ipu_irq_ack._entry, ptr @ipu_irq_ack._entry_ptr, ptr @ipu_irq_handler._entry, ptr @ipu_irq_handler._entry_ptr, ptr @ipu_irq_map._entry, ptr @ipu_irq_map._entry.5, ptr @ipu_irq_map._entry_ptr, ptr @ipu_irq_map._entry_ptr.7, ptr @ipu_irq_mask._entry, ptr @ipu_irq_mask._entry_ptr, ptr @ipu_irq_unmask._entry, ptr @ipu_irq_unmask._entry_ptr, ptr @bank_lock, ptr @.str, ptr @map_lock, ptr @.str.1, ptr @.str.2, ptr @irq_map, ptr @irq_bank, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @ipu_irq_chip, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_bank to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_map._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_unmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_irq_status(i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip_data.exit_crit_edge, label %cond.true.i

entry.irq_get_chip_data.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_get_chip_data.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  br label %irq_get_chip_data.exit

irq_get_chip_data.exit:                           ; preds = %cond.true.i, %entry.irq_get_chip_data.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.irq_get_chip_data.exit_crit_edge ]
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %bank2 = getelementptr inbounds %struct.ipu_irq_map, ptr %cond.i, i32 0, i32 2
  %2 = ptrtoint ptr %bank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %irq_get_chip_data.exit.land.end_crit_edge, label %land.rhs

irq_get_chip_data.exit.land.end_crit_edge:        ; preds = %irq_get_chip_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %irq_get_chip_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ipu = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipu, align 4
  %status = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %source = getelementptr inbounds %struct.ipu_irq_map, ptr %cond.i, i32 0, i32 1
  %11 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %source, align 4
  %and = and i32 %12, 31
  %shl = shl nuw i32 1, %and
  %and4 = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %irq_get_chip_data.exit.land.end_crit_edge
  %13 = phi i1 [ false, %irq_get_chip_data.exit.land.end_crit_edge ], [ %tobool5, %land.rhs ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_map(i32 noundef %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 198) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @map_lock, i32 noundef 0) #5
  %0 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %source)
  %cmp1.i = icmp eq i32 %0, %source
  br i1 %cmp1.i, label %entry.src2map.exit_crit_edge, label %for.inc.i

entry.src2map.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.i:                                        ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %source)
  %cmp1.1.i = icmp eq i32 %1, %source
  br i1 %cmp1.1.i, label %for.inc.i.src2map.exit_crit_edge, label %for.inc.1.i

for.inc.i.src2map.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %2 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %source)
  %cmp1.2.i = icmp eq i32 %2, %source
  br i1 %cmp1.2.i, label %for.inc.1.i.src2map.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.src2map.exit_crit_edge:               ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %3 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %source)
  %cmp1.3.i = icmp eq i32 %3, %source
  br i1 %cmp1.3.i, label %for.inc.2.i.src2map.exit_crit_edge, label %for.inc.2.i.for.body.preheader_crit_edge

for.inc.2.i.for.body.preheader_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.inc.2.i.src2map.exit_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

src2map.exit:                                     ; preds = %for.inc.2.i.src2map.exit_crit_edge, %for.inc.1.i.src2map.exit_crit_edge, %for.inc.i.src2map.exit_crit_edge, %entry.src2map.exit_crit_edge
  %i.06.lcssa.i = phi i32 [ 0, %entry.src2map.exit_crit_edge ], [ 1, %for.inc.i.src2map.exit_crit_edge ], [ 2, %for.inc.1.i.src2map.exit_crit_edge ], [ 3, %for.inc.2.i.src2map.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %i.06.lcssa.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %src2map.exit.for.body.preheader_crit_edge, label %do.end6

src2map.exit.for.body.preheader_crit_edge:        ; preds = %src2map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %src2map.exit.for.body.preheader_crit_edge, %for.inc.2.i.for.body.preheader_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9 = icmp slt i32 %4, 0
  br i1 %cmp9, label %for.body.preheader.if.then10_crit_edge, label %for.inc

for.body.preheader.if.then10_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

do.end6:                                          ; preds = %src2map.exit
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %source, i32 noundef %6) #8
  br label %out.thread

if.then10:                                        ; preds = %for.inc.2.if.then10_crit_edge, %for.inc.1.if.then10_crit_edge, %for.inc.if.then10_crit_edge, %for.body.preheader.if.then10_crit_edge
  %i.073.lcssa = phi i32 [ 0, %for.body.preheader.if.then10_crit_edge ], [ 1, %for.inc.if.then10_crit_edge ], [ 2, %for.inc.1.if.then10_crit_edge ], [ 3, %for.inc.2.if.then10_crit_edge ]
  %source8.lcssa = phi ptr [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), %for.body.preheader.if.then10_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), %for.inc.if.then10_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), %for.inc.1.if.then10_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), %for.inc.2.if.then10_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.073.lcssa
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %7 = ptrtoint ptr %source8.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %source, ptr %source8.lcssa, align 4
  %div65 = lshr i32 %source, 5
  %add.ptr = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %div65
  %bank = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.073.lcssa, i32 2
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %bank, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call14) #5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_irq_map.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_irq_map, %out)) #5
          to label %if.then37 [label %out], !srcloc !61

if.then37:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipu_irq_map.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, i32 noundef %source, i32 noundef %10) #5
  br label %out

for.inc:                                          ; preds = %for.body.preheader
  %11 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.1 = icmp slt i32 %11, 0
  br i1 %cmp9.1, label %for.inc.if.then10_crit_edge, label %for.inc.1

for.inc.if.then10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.1:                                        ; preds = %for.inc
  %12 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.2 = icmp slt i32 %12, 0
  br i1 %cmp9.2, label %for.inc.1.if.then10_crit_edge, label %for.inc.2

for.inc.1.if.then10_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.2:                                        ; preds = %for.inc.1
  %13 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.3 = icmp slt i32 %13, 0
  br i1 %cmp9.3, label %for.inc.2.if.then10_crit_edge, label %for.inc.2.out.thread_crit_edge

for.inc.2.out.thread_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

for.inc.2.if.then10_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

out.thread:                                       ; preds = %for.inc.2.out.thread_crit_edge, %do.end6
  %ret.0.ph = phi i32 [ -16, %do.end6 ], [ -12, %for.inc.2.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  br label %do.end47

out:                                              ; preds = %if.then37, %if.then10
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp42 = icmp slt i32 %10, 0
  br i1 %cmp42, label %out.do.end47_crit_edge, label %out.if.end50_crit_edge

out.if.end50_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

out.do.end47_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

do.end47:                                         ; preds = %out.do.end47_crit_edge, %out.thread
  %ret.071 = phi i32 [ %ret.0.ph, %out.thread ], [ %10, %out.do.end47_crit_edge ]
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %source, i32 noundef %ret.071) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %out.if.end50_crit_edge
  %ret.070 = phi i32 [ %ret.071, %do.end47 ], [ %10, %out.if.end50_crit_edge ]
  ret i32 %ret.070
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_unmap(i32 noundef %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 241) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @map_lock, i32 noundef 0) #5
  %0 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %source)
  %cmp5 = icmp eq i32 %0, %source
  br i1 %cmp5, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.040.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %source4.lcssa = phi ptr [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), %entry.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), %for.inc.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), %for.inc.1.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), %for.inc.2.if.then_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_irq_unmap.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_irq_unmap, %do.body14)) #5
          to label %if.then10 [label %do.body14], !srcloc !61

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.le = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.040.lcssa
  %1 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipu_irq_unmap.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.9, i32 noundef %source, i32 noundef %2) #5
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %if.then
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %3 = ptrtoint ptr %source4.lcssa to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %source4.lcssa, align 4
  %bank = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.040.lcssa, i32 2
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bank, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call17) #5
  br label %for.end

for.inc:                                          ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %source)
  %cmp5.1 = icmp eq i32 %5, %source
  br i1 %cmp5.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %6 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %source)
  %cmp5.2 = icmp eq i32 %6, %source
  br i1 %cmp5.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %source)
  %cmp5.3 = icmp eq i32 %7, %source
  br i1 %cmp5.3, label %for.inc.2.if.then_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %do.body14
  %ret.0 = phi i32 [ 0, %do.body14 ], [ -22, %for.inc.2.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_attach_irq(ptr noundef %ipu, ptr nocapture noundef readnone %dev) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup24_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ipu3 = getelementptr [5 x %struct.ipu_irq_bank], ptr @irq_bank, i32 0, i32 %i.054, i32 2
  %0 = ptrtoint ptr %ipu3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ipu, ptr %ipu3, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.body.for.body6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.inc20.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.155 = phi i32 [ %inc21, %for.inc20.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %add = add i32 %i.155, %call1
  %call7 = tail call i32 @irq_set_chip(i32 noundef %add, ptr noundef nonnull @ipu_irq_chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.body6.cleanup24_crit_edge, label %if.end10

for.body6.cleanup24_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end10:                                         ; preds = %for.body6
  %add.ptr = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %i.155
  %call11 = tail call i32 @irq_set_chip_data(i32 noundef %add, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup24_crit_edge, label %for.inc20

if.end10.cleanup24_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

for.inc20:                                        ; preds = %if.end10
  %ipu16 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.155, i32 3
  %1 = ptrtoint ptr %ipu16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ipu, ptr %ipu16, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %add.ptr, align 4
  %source = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %i.155, i32 1
  %3 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %source, align 4
  tail call void @__irq_set_handler(i32 noundef %add, ptr noundef nonnull @handle_level_irq, i32 noundef 0, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 3072, i32 noundef 0) #5
  %inc21 = add nuw nsw i32 %i.155, 1
  %exitcond56.not = icmp eq i32 %inc21, 4
  br i1 %exitcond56.not, label %for.end22, label %for.inc20.for.body6_crit_edge

for.inc20.for.body6_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end22:                                        ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  %irq_fn = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 2
  %4 = ptrtoint ptr %irq_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_fn, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef nonnull @ipu_irq_handler, ptr noundef %ipu) #5
  %irq_err = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 3
  %6 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_err, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef nonnull @ipu_irq_handler, ptr noundef %ipu) #5
  %irq_base23 = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 4
  %8 = ptrtoint ptr %irq_base23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1, ptr %irq_base23, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %for.end22, %if.end10.cleanup24_crit_edge, %for.body6.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ 0, %for.end22 ], [ %call1, %entry.cleanup24_crit_edge ], [ %call7, %for.body6.cleanup24_crit_edge ], [ %call11, %if.end10.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_irq_handler(ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %i.029
  tail call void @_raw_spin_lock(ptr noundef nonnull @bank_lock) #5
  %status1 = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %i.029, i32 1
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i23 = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #5, !srcloc !60
  %and = and i32 %11, %6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bank_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %iszero27 = icmp eq i32 %and, 0
  br i1 %iszero27, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %mul = shl i32 %i.029, 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %status.028 = phi i32 [ %and, %while.body.lr.ph ], [ %and4, %cleanup.while.body_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %status.028, i1 true), !range !62
  %shl = shl nuw i32 1, %12
  %neg = xor i32 %shl, -1
  %and4 = and i32 %status.028, %neg
  tail call void @_raw_spin_lock(ptr noundef nonnull @bank_lock) #5
  %add = or i32 %12, %mul
  %13 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp1.i = icmp eq i32 %13, %add
  br i1 %cmp1.i, label %while.body.src2map.exit_crit_edge, label %for.inc.i

while.body.src2map.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.i:                                        ; preds = %while.body
  %14 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp1.1.i = icmp eq i32 %14, %add
  br i1 %cmp1.1.i, label %for.inc.i.src2map.exit_crit_edge, label %for.inc.1.i

for.inc.i.src2map.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %15 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp1.2.i = icmp eq i32 %15, %add
  br i1 %cmp1.2.i, label %for.inc.1.i.src2map.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.src2map.exit_crit_edge:               ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %16 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp1.3.i = icmp eq i32 %16, %add
  br i1 %cmp1.3.i, label %for.inc.2.i.src2map.exit_crit_edge, label %for.inc.2.i.if.then_crit_edge

for.inc.2.i.if.then_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.2.i.src2map.exit_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %src2map.exit

src2map.exit:                                     ; preds = %for.inc.2.i.src2map.exit_crit_edge, %for.inc.1.i.src2map.exit_crit_edge, %for.inc.i.src2map.exit_crit_edge, %while.body.src2map.exit_crit_edge
  %i.06.lcssa.i = phi i32 [ 0, %while.body.src2map.exit_crit_edge ], [ 1, %for.inc.i.src2map.exit_crit_edge ], [ 2, %for.inc.1.i.src2map.exit_crit_edge ], [ 3, %for.inc.2.i.src2map.exit_crit_edge ]
  %add.ptr.i24 = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %i.06.lcssa.i
  %tobool6.not = icmp eq ptr %add.ptr.i24, null
  br i1 %tobool6.not, label %src2map.exit.if.then_crit_edge, label %if.end

src2map.exit.if.then_crit_edge:                   ; preds = %src2map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %src2map.exit.if.then_crit_edge, %for.inc.2.i.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bank_lock) #5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %12, i32 noundef %i.029) #8
  br label %cleanup

if.end:                                           ; preds = %src2map.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %add.ptr.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i24, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bank_lock) #5
  %call9 = tail call i32 @generic_handle_irq(i32 noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %iszero = icmp eq i32 %and4, 0
  br i1 %iszero, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipu_irq_detach_irq(ptr nocapture noundef readonly %ipu, ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_base1 = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 4
  %0 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base1, align 4
  %irq_fn = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 2
  %2 = ptrtoint ptr %irq_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_fn, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %3, ptr noundef null, ptr noundef null) #5
  %irq_err = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 3
  %4 = ptrtoint ptr %irq_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_err, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %cmp10 = icmp ult i32 %1, -4
  br i1 %cmp10, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 2048) #5
  %call = tail call i32 @irq_set_chip(i32 noundef %1, ptr noundef null) #5
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #5
  %inc = add nuw i32 %1, 1
  tail call void @irq_modify_status(i32 noundef %inc, i32 noundef 0, i32 noundef 2048) #5
  %call.1 = tail call i32 @irq_set_chip(i32 noundef %inc, ptr noundef null) #5
  %call2.1 = tail call i32 @irq_set_chip_data(i32 noundef %inc, ptr noundef null) #5
  %inc.1 = add nuw i32 %1, 2
  tail call void @irq_modify_status(i32 noundef %inc.1, i32 noundef 0, i32 noundef 2048) #5
  %call.2 = tail call i32 @irq_set_chip(i32 noundef %inc.1, ptr noundef null) #5
  %call2.2 = tail call i32 @irq_set_chip_data(i32 noundef %inc.1, ptr noundef null) #5
  %inc.2 = add nuw i32 %1, 3
  tail call void @irq_modify_status(i32 noundef %inc.2, i32 noundef 0, i32 noundef 2048) #5
  %call.3 = tail call i32 @irq_set_chip(i32 noundef %inc.2, ptr noundef null) #5
  %call2.3 = tail call i32 @irq_set_chip_data(i32 noundef %inc.2, ptr noundef null) #5
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_irq_ack(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %bank2 = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body3, label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ipu = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipu, align 4
  %source = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %source, align 4
  %and = and i32 %9, 31
  %shl = shl nuw i32 1, %and
  %status = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %bank2 = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body3, label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ipu = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipu, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %source = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %source, align 4
  %and = and i32 %14, 31
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %and17 = and i32 %12, %neg
  %15 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipu, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %add.ptr.i39 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %and17) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %bank2 = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body3, label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ipu = getelementptr inbounds %struct.ipu_irq_bank, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipu, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %source = getelementptr inbounds %struct.ipu_irq_map, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %source, align 4
  %and = and i32 %14, 31
  %shl = shl nuw i32 1, %and
  %or = or i32 %shl, %12
  %15 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipu, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %add.ptr.i38 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %or) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 198, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 203, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ipu_irq_map._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @ipu_irq_map._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 218, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ipu_irq_map.__UNIQUE_ID_ddebug234, !8, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 227, i32 3}
!13 = !{ptr @ipu_irq_map._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipu_irq_map._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 248, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ipu_irq_unmap.__UNIQUE_ID_ddebug235, !16, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!19 = !{ptr @irq_map, !20, !"irq_map", i1 false, i1 false}
!20 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 76, i32 27}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 80, i32 8}
!23 = !{ptr @bank_lock, !22, !"bank_lock", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 78, i32 8}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @map_lock, !25, !"map_lock", i1 false, i1 false}
!28 = !{ptr @irq_bank, !29, !"irq_bank", i1 false, i1 false}
!29 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 47, i32 28}
!30 = !{ptr @ipu_irq_chip, !31, !"ipu_irq_chip", i1 false, i1 false}
!31 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 306, i32 24}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 150, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ipu_irq_ack._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ipu_irq_ack._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 128, i32 3}
!39 = !{ptr @ipu_irq_mask._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipu_irq_mask._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 105, i32 3}
!43 = !{ptr @ipu_irq_unmask._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ipu_irq_unmask._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/ipu/ipu_irq.c", i32 295, i32 5}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ipu_irq_handler._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipu_irq_handler._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 4201283}
!61 = !{i64 2148308963, i64 2148308968, i64 2148308981, i64 2148309025, i64 2148309059, i64 2148309080}
!62 = !{i32 0, i32 33}
!63 = !{i64 4200865}
