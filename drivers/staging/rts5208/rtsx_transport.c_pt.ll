; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/rtsx_transport.c_pt.bc'
source_filename = "../drivers/staging/rts5208/rtsx_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }

@rtsx_invoke_transport.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_invoke_transport\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rts5208/rtsx_transport.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"-- command was aborted\0A\00", [40 x i8] zeroinitializer }, align 32
@rtsx_invoke_transport.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"-- transport indicates error, resetting\0A\00", [55 x i8] zeroinitializer }, align 32
@rtsx_send_cmd.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtsx_send_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip->int_reg = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rtsx_transfer_data.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtsx_transfer_data\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"use_sg = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtsx_transfer_sglist_adma_partial\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA addr: 0x%x, Len: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*index = %d, *offset = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SG table count = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Timeout (%s %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.6, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.6, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_buf.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.15, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtsx_transfer_buf\00", [46 x i8] zeroinitializer }, align 32
@rtsx_transfer_buf.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.6, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.12, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtsx_transfer_sglist_adma\00", [38 x i8] zeroinitializer }, align 32
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.14, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.15, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.6, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.15, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.6, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 169, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 263, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 747, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 44, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 87, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 379, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 381, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 408, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 425, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 683, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 326, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [44 x i8] c"../drivers/staging/rts5208/rtsx_transport.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 540, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_stor_access_xfer_buf(ptr nocapture noundef %buffer, i32 noundef %buflen, ptr nocapture noundef readonly %srb, ptr nocapture noundef %index, ptr nocapture noundef %offset, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.not = icmp ugt i32 %5, %3
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup54_crit_edge

if.then.cleanup54_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup54

if.end:                                           ; preds = %if.then
  %sub = sub i32 %5, %3
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %buflen)
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %7 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdb.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp7 = icmp eq i32 %dir, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %6)
  br label %cleanup.thread

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = call ptr @memcpy(ptr %buffer, ptr %add.ptr, i32 %6)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then8
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add = add i32 %12, %6
  store i32 %add, ptr %offset, align 4
  br label %cleanup54

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp13123.not = icmp eq i32 %buflen, 0
  br i1 %cmp13123.not, label %if.else10.cleanup54_crit_edge, label %land.rhs.lr.ph

if.else10.cleanup54_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup54

land.rhs.lr.ph:                                   ; preds = %if.else10
  %sdb.i109 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %13 = ptrtoint ptr %sdb.i109 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdb.i109, align 4
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %add.ptr12 = getelementptr %struct.scatterlist, ptr %14, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp41 = icmp eq i32 %dir, 0
  br label %land.rhs

while.cond.loopexit:                              ; preds = %kunmap.exit.while.cond.loopexit_crit_edge, %kunmap.exit.peel.while.cond.loopexit_crit_edge, %if.end29.while.cond.loopexit_crit_edge
  %cnt.2.lcssa = phi i32 [ %cnt.1124, %if.end29.while.cond.loopexit_crit_edge ], [ %add50.peel, %kunmap.exit.peel.while.cond.loopexit_crit_edge ], [ %add50, %kunmap.exit.while.cond.loopexit_crit_edge ]
  %cmp13 = icmp ult i32 %cnt.2.lcssa, %buflen
  br i1 %cmp13, label %while.cond.loopexit.land.rhs_crit_edge, label %while.cond.loopexit.cleanup54_crit_edge

while.cond.loopexit.cleanup54_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup54

while.cond.loopexit.land.rhs_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.loopexit.land.rhs_crit_edge, %land.rhs.lr.ph
  %sg.0125 = phi ptr [ %add.ptr12, %land.rhs.lr.ph ], [ %sg.1, %while.cond.loopexit.land.rhs_crit_edge ]
  %cnt.1124 = phi i32 [ 0, %land.rhs.lr.ph ], [ %cnt.2.lcssa, %while.cond.loopexit.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %19 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp15 = icmp ult i32 %18, %20
  br i1 %cmp15, label %while.body, label %land.rhs.cleanup54_crit_edge

land.rhs.cleanup54_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup54

while.body:                                       ; preds = %land.rhs
  %21 = ptrtoint ptr %sg.0125 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg.0125, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !72

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !73
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i = and i32 %22, -4
  %23 = inttoptr i32 %and.i to ptr
  %offset17 = getelementptr inbounds %struct.scatterlist, ptr %sg.0125, i32 0, i32 1
  %24 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset17, align 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add18 = add i32 %27, %25
  %shr = lshr i32 %add18, 12
  %add.ptr19 = getelementptr %struct.page, ptr %23, i32 %shr
  %and = and i32 %add18, 4095
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0125, i32 0, i32 2
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 4
  %sub22 = sub i32 %29, %27
  %sub23 = sub i32 %buflen, %cnt.1124
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %sub23)
  %cmp24 = icmp ugt i32 %sub22, %sub23
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add27 = add i32 %27, %sub23
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add27, ptr %offset, align 4
  br label %if.end29

if.else28:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %offset, align 4
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %index, align 4
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sg.0125, i32 1
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then25
  %sg.1 = phi ptr [ %sg.0125, %if.then25 ], [ %incdec.ptr, %if.else28 ]
  %sglen.0 = phi i32 [ %sub23, %if.then25 ], [ %sub22, %if.else28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen.0)
  %cmp31.not116 = icmp eq i32 %sglen.0, 0
  br i1 %cmp31.not116, label %if.end29.while.cond.loopexit_crit_edge, label %while.body32.preheader

if.end29.while.cond.loopexit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

while.body32.preheader:                           ; preds = %if.end29
  %sub33.peel = sub nuw nsw i32 4096, %and
  %34 = tail call i32 @llvm.umin.i32(i32 %sglen.0, i32 %sub33.peel)
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #4
  %35 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr19, align 4
  %shr.i.i.peel = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.peel, label %while.body32.preheader.if.then.i.peel_crit_edge [
    i32 2, label %while.body32.preheader.if.else.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i.peel
  ]

while.body32.preheader.if.else.i.peel_crit_edge:  ; preds = %while.body32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.peel

while.body32.preheader.if.then.i.peel_crit_edge:  ; preds = %while.body32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel:                       ; preds = %while.body32.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i.peel = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i.peel, label %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, label %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge

is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.peel

if.else.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, %while.body32.preheader.if.else.i.peel_crit_edge
  %call6.i.peel = tail call ptr @kmap_high(ptr noundef %add.ptr19) #4
  br label %kmap.exit.peel

if.then.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge, %while.body32.preheader.if.then.i.peel_crit_edge
  %call5.i.peel = tail call ptr @page_address(ptr noundef %add.ptr19) #4
  br label %kmap.exit.peel

kmap.exit.peel:                                   ; preds = %if.then.i.peel, %if.else.i.peel
  %addr.0.i.peel = phi ptr [ %call6.i.peel, %if.else.i.peel ], [ %call5.i.peel, %if.then.i.peel ]
  br i1 %cmp41, label %if.then42.peel, label %if.else45.peel

if.else45.peel:                                   ; preds = %kmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr46.peel = getelementptr i8, ptr %buffer, i32 %cnt.1124
  %add.ptr47.peel = getelementptr i8, ptr %addr.0.i.peel, i32 %and
  %39 = call ptr @memcpy(ptr %add.ptr46.peel, ptr %add.ptr47.peel, i32 %34)
  br label %if.end48.peel

if.then42.peel:                                   ; preds = %kmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr43.peel = getelementptr i8, ptr %addr.0.i.peel, i32 %and
  %add.ptr44.peel = getelementptr i8, ptr %buffer, i32 %cnt.1124
  %40 = call ptr @memcpy(ptr %add.ptr43.peel, ptr %add.ptr44.peel, i32 %34)
  br label %if.end48.peel

if.end48.peel:                                    ; preds = %if.then42.peel, %if.else45.peel
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #4
  %41 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr19, align 4
  %shr.i.i111.peel = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i111.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i111.peel, label %if.end48.peel.kunmap.exit.peel_crit_edge [
    i32 2, label %if.end48.peel.if.end.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i113.peel
  ]

if.end48.peel.if.end.i.peel_crit_edge:            ; preds = %if.end48.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.peel

if.end48.peel.kunmap.exit.peel_crit_edge:         ; preds = %if.end48.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit.peel

is_highmem_idx.exit.i113.peel:                    ; preds = %if.end48.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i112.peel = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i112.peel, label %is_highmem_idx.exit.i113.peel.if.end.i.peel_crit_edge, label %is_highmem_idx.exit.i113.peel.kunmap.exit.peel_crit_edge

is_highmem_idx.exit.i113.peel.kunmap.exit.peel_crit_edge: ; preds = %is_highmem_idx.exit.i113.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit.peel

is_highmem_idx.exit.i113.peel.if.end.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i113.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.peel

if.end.i.peel:                                    ; preds = %is_highmem_idx.exit.i113.peel.if.end.i.peel_crit_edge, %if.end48.peel.if.end.i.peel_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr19) #4
  br label %kunmap.exit.peel

kunmap.exit.peel:                                 ; preds = %if.end.i.peel, %is_highmem_idx.exit.i113.peel.kunmap.exit.peel_crit_edge, %if.end48.peel.kunmap.exit.peel_crit_edge
  %add50.peel = add i32 %34, %cnt.1124
  %sub51.peel = sub i32 %sglen.0, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51.peel)
  %cmp31.not.peel = icmp eq i32 %sub51.peel, 0
  br i1 %cmp31.not.peel, label %kunmap.exit.peel.while.cond.loopexit_crit_edge, label %kunmap.exit.peel.while.body32_crit_edge

kunmap.exit.peel.while.body32_crit_edge:          ; preds = %kunmap.exit.peel
  br label %while.body32

kunmap.exit.peel.while.cond.loopexit_crit_edge:   ; preds = %kunmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

while.body32:                                     ; preds = %kunmap.exit.while.body32_crit_edge, %kunmap.exit.peel.while.body32_crit_edge
  %sglen.1122 = phi i32 [ %sub51, %kunmap.exit.while.body32_crit_edge ], [ %sub51.peel, %kunmap.exit.peel.while.body32_crit_edge ]
  %page.0119.pn = phi ptr [ %page.0119, %kunmap.exit.while.body32_crit_edge ], [ %add.ptr19, %kunmap.exit.peel.while.body32_crit_edge ]
  %cnt.2117 = phi i32 [ %add50, %kunmap.exit.while.body32_crit_edge ], [ %add50.peel, %kunmap.exit.peel.while.body32_crit_edge ]
  %page.0119 = getelementptr %struct.page, ptr %page.0119.pn, i32 1
  %45 = tail call i32 @llvm.umin.i32(i32 %sglen.1122, i32 4096)
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #4
  %46 = ptrtoint ptr %page.0119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %page.0119, align 4
  %shr.i.i = lshr i32 %47, 30
  %48 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i, label %while.body32.if.then.i_crit_edge [
    i32 2, label %while.body32.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body32.if.else.i_crit_edge:                 ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

while.body32.if.then.i_crit_edge:                 ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %while.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %49 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp2.i.not.i = icmp eq i32 %49, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %while.body32.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page.0119) #4
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.body32.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page.0119) #4
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr44 = getelementptr i8, ptr %buffer, i32 %cnt.2117
  br i1 %cmp41, label %if.then42, label %if.else45

if.then42:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %50 = call ptr @memcpy(ptr %addr.0.i, ptr %add.ptr44, i32 %45)
  br label %if.end48

if.else45:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %51 = call ptr @memcpy(ptr %add.ptr44, ptr %addr.0.i, i32 %45)
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then42
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #4
  %52 = ptrtoint ptr %page.0119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page.0119, align 4
  %shr.i.i111 = lshr i32 %53, 30
  %54 = zext i32 %shr.i.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i111, label %if.end48.kunmap.exit_crit_edge [
    i32 2, label %if.end48.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i113
  ]

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end48.kunmap.exit_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit

is_highmem_idx.exit.i113:                         ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %55 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp2.i.not.i112 = icmp eq i32 %55, 2
  br i1 %cmp2.i.not.i112, label %is_highmem_idx.exit.i113.if.end.i_crit_edge, label %is_highmem_idx.exit.i113.kunmap.exit_crit_edge

is_highmem_idx.exit.i113.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i113
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit

is_highmem_idx.exit.i113.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i113.if.end.i_crit_edge, %if.end48.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page.0119) #4
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i113.kunmap.exit_crit_edge, %if.end48.kunmap.exit_crit_edge
  %add50 = add i32 %45, %cnt.2117
  %sub51 = sub i32 %sglen.1122, %45
  %cmp31.not = icmp eq i32 %sub51, 0
  br i1 %cmp31.not, label %kunmap.exit.while.cond.loopexit_crit_edge, label %kunmap.exit.while.body32_crit_edge, !llvm.loop !74

kunmap.exit.while.body32_crit_edge:               ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body32

kunmap.exit.while.cond.loopexit_crit_edge:        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

cleanup54:                                        ; preds = %land.rhs.cleanup54_crit_edge, %while.cond.loopexit.cleanup54_crit_edge, %if.else10.cleanup54_crit_edge, %cleanup.thread, %if.then.cleanup54_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup54_crit_edge ], [ %6, %cleanup.thread ], [ 0, %if.else10.cleanup54_crit_edge ], [ %cnt.1124, %land.rhs.cleanup54_crit_edge ], [ %cnt.2.lcssa, %while.cond.loopexit.cleanup54_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_stor_set_xfer_buf(ptr nocapture noundef %buffer, i32 noundef %buflen, ptr nocapture noundef %srb) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #4
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  %call = call i32 @rtsx_stor_access_xfer_buf(ptr noundef %buffer, i32 noundef %buflen, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 0)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %buflen)
  %cmp = icmp ugt i32 %3, %buflen
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 %3, %buflen
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %4 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_stor_get_xfer_buf(ptr nocapture noundef %buffer, i32 noundef %buflen, ptr nocapture noundef %srb) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #4
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  %call = call i32 @rtsx_stor_access_xfer_buf(ptr noundef %buffer, i32 noundef %buflen, ptr noundef %srb, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 1)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %buflen)
  %cmp = icmp ugt i32 %3, %buflen
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 %3, %buflen
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %4 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_invoke_transport(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_scsi_handler(ptr noundef %srb, ptr noundef %chip) #4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %0 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_invoke_transport.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_invoke_transport, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !76

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_invoke_transport.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %result6 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %6 = ptrtoint ptr %result6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 327680, ptr %result6, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp8 = icmp eq i32 %call, 3
  br i1 %cmp8, label %do.body10, label %if.end28

do.body10:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_invoke_transport.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_invoke_transport, %if.then22)) #4
          to label %do.end26 [label %if.then22], !srcloc !76

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i49 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_invoke_transport.__UNIQUE_ID_ddebug292, ptr noundef %dev.i49, ptr noundef nonnull @.str.4) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %result27 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %11 = ptrtoint ptr %result27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 458752, ptr %result27, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %result29 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %12 = ptrtoint ptr %result29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %result29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp30 = icmp eq i32 %call, 1
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %result29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %result29, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %14 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sense_buffer, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lun, align 8
  %idxprom = trunc i64 %19 to i32
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %idxprom
  %20 = call ptr @memcpy(ptr %15, ptr %arrayidx, i32 18)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %do.end26, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_scsi_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_add_cmd(ptr nocapture noundef %chip, i8 noundef zeroext %cmd_type, i16 noundef zeroext %reg_addr, i8 noundef zeroext %mask, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cmds_ptr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %host_cmds_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_cmds_ptr, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp = icmp slt i32 %5, 256
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = zext i8 %cmd_type to i32
  %shl = shl i32 %and, 30
  %6 = and i16 %reg_addr, 16383
  %and2 = zext i16 %6 to i32
  %shl3 = shl nuw nsw i32 %and2, 16
  %or4 = or i32 %shl3, %shl
  %conv5 = zext i8 %mask to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or4, %shl6
  %conv8 = zext i8 %data to i32
  %or9 = or i32 %or7, %conv8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %inc = add nsw i32 %5, 1
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %ci, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %reg_lock13 = getelementptr inbounds %struct.rtsx_dev, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock13) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_send_cmd_no_wait(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cmds_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %host_cmds_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_cmds_addr, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #4, !srcloc !78
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ci, align 4
  %mul = shl i32 %8, 2
  %and = and i32 %mul, 16777212
  %or1 = or i32 %and, -1073741824
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %remap_addr3 = getelementptr inbounds %struct.rtsx_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %remap_addr3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr3, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #4, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext %card, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %trans_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trans_done) #4
  %2 = getelementptr inbounds i8, ptr %trans_done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %conv = zext i8 %card to i32
  %4 = zext i8 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %card, label %if.else14 [
    i8 4, label %entry.if.end17_crit_edge
    i8 8, label %if.then6
    i8 16, label %if.then12
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.then6, %entry.if.end17_crit_edge
  %.sink = phi i32 [ 131072, %if.then6 ], [ 0, %if.else14 ], [ 262144, %if.then12 ], [ 65536, %entry.if.end17_crit_edge ]
  %check_card_cd7 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %check_card_cd7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %check_card_cd7, align 4
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %done = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trans_done, ptr %done, align 4
  %trans_result = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %trans_result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %trans_result, align 4
  %8 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %trans_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %trans_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %trans_state = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %trans_state, align 1
  %host_cmds_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 5
  %10 = ptrtoint ptr %host_cmds_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_cmds_addr, align 4
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %16 = call i32 @llvm.bswap.i32(i32 %11) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #4, !srcloc !78
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ci, align 4
  %mul = shl i32 %18, 2
  %and = and i32 %mul, 16777212
  %or19 = or i32 %and, -1073741824
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr21 = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr21, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %23 = call i32 @llvm.bswap.i32(i32 %or19) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %23) #4, !srcloc !78
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call24 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %do.body, label %if.end34

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_send_cmd.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_send_cmd, %if.then31)) #4
          to label %if.then54 [label %if.then31], !srcloc !76

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %28 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %int_reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_send_cmd.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef %29) #4
  br label %if.then54

if.end34:                                         ; preds = %if.end17
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %30 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %switch.selectcmp84 = icmp eq i8 %31, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  br i1 %switch.selectcmp84, label %if.end34.if.then54_crit_edge, label %finish_send_cmd.thread92

if.end34.if.then54_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

finish_send_cmd.thread92:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %done, align 4
  %33 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %trans_state, align 1
  br label %if.end56

if.then54:                                        ; preds = %if.end34.if.then54_crit_edge, %if.then31, %do.body
  %err.191 = phi i32 [ -110, %if.then31 ], [ -5, %if.end34.if.then54_crit_edge ], [ -110, %do.body ]
  %34 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %done, align 4
  %35 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %trans_state, align 1
  call void @rtsx_stop_cmd(ptr noundef %chip, i32 noundef %conv) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %finish_send_cmd.thread92
  %err.190 = phi i32 [ %err.191, %if.then54 ], [ 0, %finish_send_cmd.thread92 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trans_done) #4
  ret i32 %err.190
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stop_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_transfer_data_partial(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %len, i32 noundef %use_sg, ptr noundef %index, ptr noundef %offset, i32 noundef %dma_dir, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %0 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sg)
  %tobool.not = icmp eq i32 %use_sg, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @rtsx_transfer_sglist_adma_partial(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %use_sg, ptr noundef %index, ptr noundef %offset, i32 noundef %len, i32 noundef %dma_dir, i32 noundef %timeout)
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call fastcc i32 @rtsx_transfer_buf(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %len, i32 noundef %dma_dir, i32 noundef %timeout)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %err.0 = phi i32 [ %call, %if.then1 ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp4 = icmp slt i32 %err.0, 0
  br i1 %cmp4, label %if.then5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 53
  %2 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtsx_flag, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %and10 = and i8 %3, -2
  %5 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and10, ptr %rtsx_flag, align 2
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %6 = ptrtoint ptr %need_reinit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 28, ptr %need_reinit, align 4
  tail call void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %err.0, %if.then5.cleanup_crit_edge ], [ %err.0, %if.then7 ], [ %err.0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_transfer_sglist_adma_partial(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %sg, i32 noundef %num_sg, ptr noundef %index, ptr noundef %offset, i32 noundef %size, i32 noundef %dma_dir, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %trans_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trans_done) #4
  %2 = call ptr @memset(ptr %trans_done, i32 255, i32 56)
  %tobool.not = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_sg)
  %cmp = icmp slt i32 %num_sg, 1
  %or.cond = or i1 %tobool.not, %cmp
  %tobool3.not = icmp eq ptr %offset, null
  %or.cond344 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %index, null
  %or.cond345 = or i1 %tobool5.not, %or.cond344
  br i1 %or.cond345, label %entry.cleanup244_crit_edge, label %if.end

entry.cleanup244_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup244

if.end:                                           ; preds = %entry
  %3 = zext i32 %dma_dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %dma_dir, label %if.end.cleanup244_crit_edge [
    i32 1, label %if.end.if.end12_crit_edge
    i32 2, label %if.then9
  ]

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.cleanup244_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup244

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %dir.0 = phi i32 [ 168, %if.then9 ], [ 136, %if.end.if.end12_crit_edge ]
  %conv = zext i8 %card to i32
  %4 = zext i8 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %card, label %if.else28 [
    i8 4, label %if.end12.if.end32_crit_edge
    i8 8, label %if.then20
    i8 16, label %if.then26
  ]

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.else28:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then26, %if.then20, %if.end12.if.end32_crit_edge
  %.sink = phi i32 [ 131072, %if.then20 ], [ 0, %if.else28 ], [ 262144, %if.then26 ], [ 65536, %if.end12.if.end32_crit_edge ]
  %check_card_cd21 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %check_card_cd21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %check_card_cd21, align 4
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %done = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trans_done, ptr %done, align 4
  %trans_state = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %trans_state, align 1
  %trans_result = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %trans_result to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %trans_result, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call = call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef nonnull %sg, i32 noundef %num_sg, i32 noundef %dma_dir, i32 noundef 0) #4
  %sgi = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %sgi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sgi, align 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34396.not = icmp eq i32 %13, 0
  br i1 %cmp34396.not, label %if.end32.for.cond37.preheader_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.cond37.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.body.for.cond37.preheader_crit_edge, %if.end32.for.cond37.preheader_crit_edge
  %sg_ptr.0.lcssa = phi ptr [ %sg, %if.end32.for.cond37.preheader_crit_edge ], [ %call36, %for.body.for.cond37.preheader_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end32.for.cond37.preheader_crit_edge ], [ %15, %for.body.for.cond37.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %call)
  %cmp38400 = icmp slt i32 %.lcssa, %call
  br i1 %cmp38400, label %for.body40.lr.ph, label %for.cond37.preheader.do.body93_crit_edge

for.cond37.preheader.do.body93_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body93

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %sub75 = add nsw i32 %call, -1
  %host_sg_tbl_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 7
  br label %for.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0398 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %sg_ptr.0397 = phi ptr [ %call36, %for.body.for.body_crit_edge ], [ %sg, %if.end32.for.body_crit_edge ]
  %call36 = call ptr @sg_next(ptr noundef %sg_ptr.0397) #4
  %inc = add nuw i32 %i.0398, 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %cmp34 = icmp ult i32 %inc, %15
  br i1 %cmp34, label %for.body.for.body_crit_edge, label %for.body.for.cond37.preheader_crit_edge

for.body.for.cond37.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond37.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body40:                                       ; preds = %for.inc90.for.body40_crit_edge, %for.body40.lr.ph
  %i.1403 = phi i32 [ %.lcssa, %for.body40.lr.ph ], [ %inc91, %for.inc90.for.body40_crit_edge ]
  %resid.0402 = phi i32 [ %size, %for.body40.lr.ph ], [ %resid.1, %for.inc90.for.body40_crit_edge ]
  %sg_ptr.1401 = phi ptr [ %sg_ptr.0.lcssa, %for.body40.lr.ph ], [ %call87, %for.inc90.for.body40_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.1401, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.1401, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %if.then45)) #4
          to label %do.body48 [label %if.then45], !srcloc !76

if.then45:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %19) #4
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %for.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %if.then60)) #4
          to label %do.end64 [label %if.then60], !srcloc !76

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i377 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug295, ptr noundef %dev.i377, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %31) #4
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add = add i32 %33, %17
  %sub = sub i32 %19, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %resid.0402, i32 %sub)
  %cmp65 = icmp ult i32 %resid.0402, %sub
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  %add68 = add i32 %33, %resid.0402
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add68, ptr %offset, align 4
  br label %if.end74

if.else69:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  %sub71 = sub i32 %resid.0402, %sub
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %offset, align 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %add73 = add i32 %37, 1
  store i32 %add73, ptr %index, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.then67
  %len.0 = phi i32 [ %resid.0402, %if.then67 ], [ %sub, %if.else69 ]
  %resid.1 = phi i32 [ 0, %if.then67 ], [ %sub71, %if.else69 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1403, i32 %sub75)
  %cmp76 = icmp eq i32 %i.1403, %sub75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resid.1)
  %tobool79.not = icmp eq i32 %resid.1, 0
  %or.cond346 = select i1 %cmp76, i1 true, i1 %tobool79.not
  %38 = ptrtoint ptr %host_sg_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host_sg_tbl_ptr.i, align 4
  %40 = select i1 %or.cond346, i64 35, i64 33
  br label %do.body.i

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %if.end74
  %len.addr.0.i = phi i32 [ %len.0, %if.end74 ], [ %sub.i, %if.end11.i.do.body.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %add, %if.end74 ], [ %add.i, %if.end11.i.do.body.i_crit_edge ]
  %41 = call i32 @llvm.umin.i32(i32 %len.addr.0.i, i32 524288) #4
  %42 = ptrtoint ptr %sgi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sgi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %43)
  %cmp7.i = icmp slt i32 %43, 384
  br i1 %cmp7.i, label %if.then9.i, label %do.body.i.if.end11.i_crit_edge

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %len.addr.0.i)
  %cmp.i378 = icmp ugt i32 %len.addr.0.i, 524288
  %conv2.i = zext i32 %addr.addr.0.i to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %44 = shl nuw i32 %41, 12
  %shl4.i = zext i32 %44 to i64
  %or.i = or i64 %shl.i, %shl4.i
  %conv5.i = select i1 %cmp.i378, i64 33, i64 %40
  %or6.i = or i64 %or.i, %conv5.i
  %45 = call i64 @llvm.bswap.i64(i64 %or6.i) #4
  %inc.i = add nsw i32 %43, 1
  %46 = ptrtoint ptr %sgi to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i, ptr %sgi, align 4
  %arrayidx.i = getelementptr i64, ptr %39, i32 %43
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %45, ptr %arrayidx.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %do.body.i.if.end11.i_crit_edge
  %sub.i = sub i32 %len.addr.0.i, %41
  %add.i = add i32 %addr.addr.0.i, %41
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %rtsx_add_sg_tbl.exit, label %if.end11.i.do.body.i_crit_edge

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

rtsx_add_sg_tbl.exit:                             ; preds = %if.end11.i
  br i1 %tobool79.not, label %rtsx_add_sg_tbl.exit.do.body93_crit_edge, label %for.inc90

rtsx_add_sg_tbl.exit.do.body93_crit_edge:         ; preds = %rtsx_add_sg_tbl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body93

for.inc90:                                        ; preds = %rtsx_add_sg_tbl.exit
  %call87 = call ptr @sg_next(ptr noundef %sg_ptr.1401) #4
  %inc91 = add nsw i32 %i.1403, 1
  %exitcond.not = icmp eq i32 %inc91, %call
  br i1 %exitcond.not, label %for.inc90.do.body93_crit_edge, label %for.inc90.for.body40_crit_edge

for.inc90.for.body40_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body40

for.inc90.do.body93_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body93

do.body93:                                        ; preds = %for.inc90.do.body93_crit_edge, %rtsx_add_sg_tbl.exit.do.body93_crit_edge, %for.cond37.preheader.do.body93_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %if.then105)) #4
          to label %do.end110 [label %if.then105], !srcloc !76

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev.i379 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %sgi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sgi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug296, ptr noundef %dev.i379, ptr noundef nonnull @.str.14, i32 noundef %53) #4
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %54 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %trans_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %trans_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %host_sg_tbl_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 8
  %55 = ptrtoint ptr %host_sg_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_sg_tbl_addr, align 4
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %61 = call i32 @llvm.bswap.i32(i32 %56) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %61) #4, !srcloc !78
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chip, align 4
  %remap_addr117 = getelementptr inbounds %struct.rtsx_dev, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %remap_addr117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %remap_addr117, align 4
  %add.ptr118 = getelementptr i8, ptr %65, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %dir.0) #4, !srcloc !78
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call121 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 1
  br i1 %cmp122, label %do.body125, label %if.end159

do.body125:                                       ; preds = %do.end110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %if.then137)) #4
          to label %do.body142 [label %if.then137], !srcloc !76

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dev.i380 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug297, ptr noundef %dev.i380, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 426) #4
  br label %do.body142

do.body142:                                       ; preds = %if.then137, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %out.sink.split)) #4
          to label %out [label %out.sink.split], !srcloc !76

if.end159:                                        ; preds = %do.end110
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %70 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp163 = icmp eq i8 %71, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  br i1 %cmp163, label %if.end159.out_crit_edge, label %if.end167

if.end159.out_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end167:                                        ; preds = %if.end159
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %72 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp172 = icmp eq i8 %73, 0
  br i1 %cmp172, label %if.then174, label %if.else217

if.then174:                                       ; preds = %if.end167
  %74 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %trans_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i367 = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call177 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i367) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 1
  br i1 %cmp178, label %do.body181, label %if.then174.if.end219_crit_edge

if.then174.if.end219_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219

do.body181:                                       ; preds = %if.then174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %if.then193)) #4
          to label %do.body198 [label %if.then193], !srcloc !76

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dev.i383 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug299, ptr noundef %dev.i383, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 450) #4
  br label %do.body198

do.body198:                                       ; preds = %if.then193, %do.body181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma_partial, %out.sink.split)) #4
          to label %out [label %out.sink.split], !srcloc !76

if.else217:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  br label %if.end219

if.end219:                                        ; preds = %if.else217, %if.then174.if.end219_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %79 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %switch.selectcmp347 = icmp eq i8 %80, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %spec.select = select i1 %switch.selectcmp347, i32 -5, i32 0
  br label %out

out.sink.split:                                   ; preds = %do.body198, %do.body142
  %rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300.sink = phi ptr [ @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug298, %do.body142 ], [ @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300, %do.body198 ]
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %dev.i384 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %int_reg212 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %85 = ptrtoint ptr %int_reg212 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %int_reg212, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300.sink, ptr noundef %dev.i384, ptr noundef nonnull @.str.6, i32 noundef %86) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end219, %do.body198, %if.end159.out_crit_edge, %do.body142
  %err.1 = phi i32 [ -110, %do.body142 ], [ -110, %do.body198 ], [ -5, %if.end159.out_crit_edge ], [ %spec.select, %if.end219 ], [ -110, %out.sink.split ]
  %87 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %done, align 4
  %88 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %trans_state, align 1
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %dev238 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void @dma_unmap_sg_attrs(ptr noundef %dev238, ptr noundef nonnull %sg, i32 noundef %num_sg, i32 noundef %dma_dir, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp239 = icmp slt i32 %err.1, 0
  br i1 %cmp239, label %if.then241, label %out.cleanup244_crit_edge

out.cleanup244_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup244

if.then241:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_stop_cmd(ptr noundef %chip, i32 noundef %conv) #4
  br label %cleanup244

cleanup244:                                       ; preds = %if.then241, %out.cleanup244_crit_edge, %if.end.cleanup244_crit_edge, %entry.cleanup244_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup244_crit_edge ], [ -6, %if.end.cleanup244_crit_edge ], [ %err.1, %if.then241 ], [ 0, %out.cleanup244_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trans_done) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_transfer_buf(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %len, i32 noundef %dma_dir, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %trans_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trans_done) #4
  %2 = getelementptr inbounds i8, ptr %trans_done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %dma_dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %dma_dir, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 2, label %if.then5
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %dir.0 = phi i32 [ -1610612736, %if.then5 ], [ -2147483648, %if.end.if.end8_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buf) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end8
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i147, !prof !72

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i147:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i147.dev_name.exit.i_crit_edge

if.then.i147.dev_name.exit.i_crit_edge:           ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i147.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i147.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef %len) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %dma_dir, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i148 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev10, i32 noundef %retval.0.i148) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i148)
  %cmp.i149 = icmp eq i32 %retval.0.i148, -1
  br i1 %cmp.i149, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end14

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %dma_map_single_attrs.exit
  %conv = zext i8 %card to i32
  %15 = zext i8 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %card, label %if.else30 [
    i8 4, label %if.end14.if.end34_crit_edge
    i8 8, label %if.then22
    i8 16, label %if.then28
  ]

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.else30:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then28, %if.then22, %if.end14.if.end34_crit_edge
  %.sink = phi i32 [ 131072, %if.then22 ], [ 0, %if.else30 ], [ 262144, %if.then28 ], [ 65536, %if.end14.if.end34_crit_edge ]
  %check_card_cd23 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %check_card_cd23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %check_card_cd23, align 4
  %and36 = and i32 %len, 16777215
  %or37 = or i32 %dir.0, %and36
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %done = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %trans_done, ptr %done, align 4
  %18 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %trans_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %trans_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %trans_state = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %trans_state, align 1
  %trans_result = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %trans_result to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %trans_result, align 4
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %25 = call i32 @llvm.bswap.i32(i32 %retval.0.i148) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #4, !srcloc !78
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %remap_addr40 = getelementptr inbounds %struct.rtsx_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr40, align 4
  %add.ptr41 = getelementptr i8, ptr %29, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %30 = call i32 @llvm.bswap.i32(i32 %or37) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %30) #4, !srcloc !78
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call44 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %do.body, label %if.end72

do.body:                                          ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_buf.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_buf, %if.then52)) #4
          to label %do.body55 [label %if.then52], !srcloc !76

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_buf.__UNIQUE_ID_ddebug307, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 684) #4
  br label %do.body55

do.body55:                                        ; preds = %if.then52, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_buf.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_buf, %if.then67)) #4
          to label %out [label %if.then67], !srcloc !76

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev.i150 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %39 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %int_reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_buf.__UNIQUE_ID_ddebug308, ptr noundef %dev.i150, ptr noundef nonnull @.str.6, i32 noundef %40) #4
  br label %out

if.end72:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %41 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %switch.selectcmp141 = icmp eq i8 %42, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %spec.select = select i1 %switch.selectcmp141, i32 -5, i32 0
  br label %out

out:                                              ; preds = %if.end72, %if.then67, %do.body55
  %err.1 = phi i32 [ -110, %if.then67 ], [ -110, %do.body55 ], [ %spec.select, %if.end72 ]
  %43 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %done, align 4
  %44 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %trans_state, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev91, i32 noundef %retval.0.i148, i32 noundef %len, i32 noundef %dma_dir, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp92 = icmp slt i32 %err.1, 0
  br i1 %cmp92, label %if.then94, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then94:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_stop_cmd(ptr noundef %chip, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %out.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %err.1, %if.then94 ], [ 0, %out.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trans_done) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_reinit_cards(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %len, i32 noundef %use_sg, i32 noundef %dma_dir, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_data.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_data, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_data.__UNIQUE_ID_ddebug309, ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %use_sg) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %4 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sg)
  %tobool6.not = icmp eq i32 %use_sg, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call fastcc i32 @rtsx_transfer_sglist_adma(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %use_sg, i32 noundef %dma_dir, i32 noundef %timeout)
  br label %if.end10

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call fastcc i32 @rtsx_transfer_buf(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %buf, i32 noundef %len, i32 noundef %dma_dir, i32 noundef %timeout)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call8, %if.then7 ], [ %call9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp11 = icmp slt i32 %err.0, 0
  br i1 %cmp11, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 53
  %6 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rtsx_flag, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.then14

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %and17 = and i8 %7, -2
  %9 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and17, ptr %rtsx_flag, align 2
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %10 = ptrtoint ptr %need_reinit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 28, ptr %need_reinit, align 4
  tail call void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ %err.0, %if.then12.cleanup_crit_edge ], [ %err.0, %if.then14 ], [ %err.0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_transfer_sglist_adma(ptr noundef %chip, i8 noundef zeroext %card, ptr noundef %sg, i32 noundef %num_sg, i32 noundef %dma_dir, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %trans_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trans_done) #4
  %2 = call ptr @memset(ptr %trans_done, i32 255, i32 56)
  %tobool.not = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_sg)
  %cmp = icmp slt i32 %num_sg, 1
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup213_crit_edge, label %if.end

entry.cleanup213_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup213

if.end:                                           ; preds = %entry
  %3 = zext i32 %dma_dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %dma_dir, label %if.end.cleanup213_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 2, label %if.then5
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end.cleanup213_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup213

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %dir.0 = phi i32 [ 168, %if.then5 ], [ 136, %if.end.if.end8_crit_edge ]
  %conv = zext i8 %card to i32
  %4 = zext i8 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %card, label %if.else24 [
    i8 4, label %if.end8.if.end28_crit_edge
    i8 8, label %if.then16
    i8 16, label %if.then22
  ]

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.else24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then22, %if.then16, %if.end8.if.end28_crit_edge
  %.sink = phi i32 [ 131072, %if.then16 ], [ 0, %if.else24 ], [ 262144, %if.then22 ], [ 65536, %if.end8.if.end28_crit_edge ]
  %check_card_cd17 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %check_card_cd17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %check_card_cd17, align 4
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %done = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trans_done, ptr %done, align 4
  %trans_state = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %trans_state, align 1
  %trans_result = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %trans_result to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %trans_result, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call = call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef nonnull %sg, i32 noundef %num_sg, i32 noundef %dma_dir, i32 noundef 0) #4
  %call.frozen = freeze i32 %call
  %div = sdiv i32 %call.frozen, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -383, i32 %call)
  %cmp30.not347 = icmp slt i32 %call, -383
  br i1 %cmp30.not347, label %if.end28.for.end137_crit_edge, label %for.body.lr.ph

if.end28.for.end137_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end137

for.body.lr.ph:                                   ; preds = %if.end28
  %11 = mul i32 %div, 384
  %rem.decomposed = sub i32 %call.frozen, %11
  %sgi = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 9
  %host_sg_tbl_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 7
  %wait.i = getelementptr inbounds %struct.completion, ptr %trans_done, i32 0, i32 1
  %host_sg_tbl_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc135.for.body_crit_edge, %for.body.lr.ph
  %i.0349 = phi i32 [ 0, %for.body.lr.ph ], [ %inc136, %for.inc135.for.body_crit_edge ]
  %sg_ptr.0348 = phi ptr [ %sg, %for.body.lr.ph ], [ %add.ptr132, %for.inc135.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0349, i32 %div)
  %cmp33 = icmp eq i32 %i.0349, %div
  %sg_cnt.0 = select i1 %cmp33, i32 %rem.decomposed, i32 384
  %12 = ptrtoint ptr %sgi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sgi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_cnt.0)
  %cmp39344 = icmp sgt i32 %sg_cnt.0, 0
  br i1 %cmp39344, label %for.body41.lr.ph, label %for.body.do.body56_crit_edge

for.body.do.body56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

for.body41.lr.ph:                                 ; preds = %for.body
  %sub = add nsw i32 %sg_cnt.0, -1
  br label %for.body41

for.body41:                                       ; preds = %rtsx_add_sg_tbl.exit.for.body41_crit_edge, %for.body41.lr.ph
  %sg_ptr.1346 = phi ptr [ %sg_ptr.0348, %for.body41.lr.ph ], [ %call55, %rtsx_add_sg_tbl.exit.for.body41_crit_edge ]
  %j.0345 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc, %rtsx_add_sg_tbl.exit.for.body41_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.1346, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.1346, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %if.then46)) #4
          to label %do.end [label %if.then46], !srcloc !76

if.then46:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %14, i32 noundef %16) #4
  br label %do.end

do.end:                                           ; preds = %if.then46, %for.body41
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0345, i32 %sub)
  %cmp49 = icmp eq i32 %j.0345, %sub
  %21 = ptrtoint ptr %host_sg_tbl_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_sg_tbl_ptr.i, align 4
  %23 = select i1 %cmp49, i64 35, i64 33
  br label %do.body.i

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %do.end
  %len.addr.0.i = phi i32 [ %16, %do.end ], [ %sub.i, %if.end11.i.do.body.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %14, %do.end ], [ %add.i, %if.end11.i.do.body.i_crit_edge ]
  %24 = call i32 @llvm.umin.i32(i32 %len.addr.0.i, i32 524288) #4
  %25 = ptrtoint ptr %sgi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sgi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %26)
  %cmp7.i = icmp slt i32 %26, 384
  br i1 %cmp7.i, label %if.then9.i, label %do.body.i.if.end11.i_crit_edge

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %len.addr.0.i)
  %cmp.i318 = icmp ugt i32 %len.addr.0.i, 524288
  %conv2.i = zext i32 %addr.addr.0.i to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %27 = shl nuw i32 %24, 12
  %shl4.i = zext i32 %27 to i64
  %or.i = or i64 %shl.i, %shl4.i
  %conv5.i = select i1 %cmp.i318, i64 33, i64 %23
  %or6.i = or i64 %or.i, %conv5.i
  %28 = call i64 @llvm.bswap.i64(i64 %or6.i) #4
  %inc.i = add nsw i32 %26, 1
  %29 = ptrtoint ptr %sgi to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %sgi, align 4
  %arrayidx.i = getelementptr i64, ptr %22, i32 %26
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %arrayidx.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %do.body.i.if.end11.i_crit_edge
  %sub.i = sub i32 %len.addr.0.i, %24
  %add.i = add i32 %addr.addr.0.i, %24
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %rtsx_add_sg_tbl.exit, label %if.end11.i.do.body.i_crit_edge

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

rtsx_add_sg_tbl.exit:                             ; preds = %if.end11.i
  %call55 = call ptr @sg_next(ptr noundef %sg_ptr.1346) #4
  %inc = add nuw nsw i32 %j.0345, 1
  %exitcond.not = icmp eq i32 %inc, %sg_cnt.0
  br i1 %exitcond.not, label %rtsx_add_sg_tbl.exit.do.body56_crit_edge, label %rtsx_add_sg_tbl.exit.for.body41_crit_edge

rtsx_add_sg_tbl.exit.for.body41_crit_edge:        ; preds = %rtsx_add_sg_tbl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body41

rtsx_add_sg_tbl.exit.do.body56_crit_edge:         ; preds = %rtsx_add_sg_tbl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

do.body56:                                        ; preds = %rtsx_add_sg_tbl.exit.do.body56_crit_edge, %for.body.do.body56_crit_edge
  %sg_ptr.1.lcssa = phi ptr [ %sg_ptr.0348, %for.body.do.body56_crit_edge ], [ %call55, %rtsx_add_sg_tbl.exit.do.body56_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %if.then68)) #4
          to label %do.end73 [label %if.then68], !srcloc !76

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i319 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %sgi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sgi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug302, ptr noundef %dev.i319, ptr noundef nonnull @.str.14, i32 noundef %36) #4
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body56
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %37 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %trans_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %38 = ptrtoint ptr %host_sg_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_sg_tbl_addr, align 4
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  %44 = call i32 @llvm.bswap.i32(i32 %39) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #4, !srcloc !78
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %remap_addr80 = getelementptr inbounds %struct.rtsx_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %remap_addr80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr80, align 4
  %add.ptr81 = getelementptr i8, ptr %48, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %dir.0) #4, !srcloc !78
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call84 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 1
  br i1 %cmp85, label %do.body88, label %if.end122

do.body88:                                        ; preds = %do.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %if.then100)) #4
          to label %do.body105 [label %if.then100], !srcloc !76

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev.i320 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug303, ptr noundef %dev.i320, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, i32 noundef 570) #4
  br label %do.body105

do.body105:                                       ; preds = %if.then100, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %out.sink.split)) #4
          to label %out [label %out.sink.split], !srcloc !76

if.end122:                                        ; preds = %do.end73
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %53 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp126 = icmp eq i8 %54, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  br i1 %cmp126, label %if.end122.out_crit_edge, label %for.inc135

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.inc135:                                       ; preds = %if.end122
  %add.ptr132 = getelementptr %struct.scatterlist, ptr %sg_ptr.1.lcssa, i32 %sg_cnt.0
  %inc136 = add nuw nsw i32 %i.0349, 1
  %exitcond350 = icmp eq i32 %i.0349, %div
  br i1 %exitcond350, label %for.inc135.for.end137_crit_edge, label %for.inc135.for.body_crit_edge

for.inc135.for.body_crit_edge:                    ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end137

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %if.end28.for.end137_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %55 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp141 = icmp eq i8 %56, 0
  br i1 %cmp141, label %if.then143, label %if.else186

if.then143:                                       ; preds = %for.end137
  %57 = ptrtoint ptr %trans_done to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %trans_done, align 4
  %wait.i322 = getelementptr inbounds %struct.completion, ptr %trans_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i322, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %call2.i308 = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #4
  %call146 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %trans_done, i32 noundef %call2.i308) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 1
  br i1 %cmp147, label %do.body150, label %if.then143.if.end188_crit_edge

if.then143.if.end188_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end188

do.body150:                                       ; preds = %if.then143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %if.then162)) #4
          to label %do.body167 [label %if.then162], !srcloc !76

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i323 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug305, ptr noundef %dev.i323, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, i32 noundef 597) #4
  br label %do.body167

do.body167:                                       ; preds = %if.then162, %do.body150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_transfer_sglist_adma, %out.sink.split)) #4
          to label %out [label %out.sink.split], !srcloc !76

if.else186:                                       ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  br label %if.end188

if.end188:                                        ; preds = %if.else186, %if.then143.if.end188_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #4
  %62 = ptrtoint ptr %trans_result to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %trans_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %switch.selectcmp342 = icmp eq i8 %63, 2
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #4
  %spec.select351 = select i1 %switch.selectcmp342, i32 -5, i32 0
  br label %out

out.sink.split:                                   ; preds = %do.body167, %do.body105
  %rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304.sink = phi ptr [ @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304, %do.body105 ], [ @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug306, %do.body167 ]
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %dev.i321 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %68 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %int_reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304.sink, ptr noundef %dev.i321, ptr noundef nonnull @.str.6, i32 noundef %69) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end188, %do.body167, %if.end122.out_crit_edge, %do.body105
  %err.3 = phi i32 [ -110, %do.body105 ], [ -110, %do.body167 ], [ %spec.select351, %if.end188 ], [ -110, %out.sink.split ], [ -5, %if.end122.out_crit_edge ]
  %70 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %done, align 4
  %71 = ptrtoint ptr %trans_state to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %trans_state, align 1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %dev207 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  call void @dma_unmap_sg_attrs(ptr noundef %dev207, ptr noundef nonnull %sg, i32 noundef %num_sg, i32 noundef %dma_dir, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %cmp208 = icmp slt i32 %err.3, 0
  br i1 %cmp208, label %if.then210, label %out.cleanup213_crit_edge

out.cleanup213_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup213

if.then210:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_stop_cmd(ptr noundef %chip, i32 noundef %conv) #4
  br label %cleanup213

cleanup213:                                       ; preds = %if.then210, %out.cleanup213_crit_edge, %if.end.cleanup213_crit_edge, %entry.cleanup213_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup213_crit_edge ], [ -6, %if.end.cleanup213_crit_edge ], [ %err.3, %if.then210 ], [ 0, %out.cleanup213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trans_done) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 162, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtsx_invoke_transport.__UNIQUE_ID_ddebug291, !1, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 169, i32 3}
!8 = !{ptr @rtsx_invoke_transport.__UNIQUE_ID_ddebug292, !7, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 263, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtsx_send_cmd.__UNIQUE_ID_ddebug293, !10, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 747, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtsx_transfer_data.__UNIQUE_ID_ddebug309, !14, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 379, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug294, !23, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 381, i32 3}
!28 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug295, !27, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 408, i32 2}
!31 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug296, !30, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 425, i32 3}
!34 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug297, !33, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!35 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug298, !36, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!36 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 427, i32 3}
!37 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug299, !38, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!38 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 449, i32 4}
!39 = !{ptr @rtsx_transfer_sglist_adma_partial.__UNIQUE_ID_ddebug300, !40, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!40 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 451, i32 4}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 683, i32 3}
!43 = !{ptr @rtsx_transfer_buf.__UNIQUE_ID_ddebug307, !42, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!44 = !{ptr @rtsx_transfer_buf.__UNIQUE_ID_ddebug308, !45, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!45 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 685, i32 3}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 540, i32 4}
!52 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug301, !51, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!53 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug302, !54, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!54 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 552, i32 3}
!55 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug303, !56, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!56 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 569, i32 4}
!57 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug304, !58, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!58 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 571, i32 4}
!59 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug305, !60, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!60 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 596, i32 4}
!61 = !{ptr @rtsx_transfer_sglist_adma.__UNIQUE_ID_ddebug306, !62, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!62 = !{!"../drivers/staging/rts5208/rtsx_transport.c", i32 598, i32 4}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2154749469, i64 2154749961, i64 2154749506, i64 2154749562, i64 2154749596, i64 2154749620, i64 2154749661, i64 2154749682, i64 2154749710, i64 2154749744}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{i64 2148289433, i64 2148289438, i64 2148289451, i64 2148289495, i64 2148289529, i64 2148289550}
!77 = !{i64 2153507804}
!78 = !{i64 5965682}
