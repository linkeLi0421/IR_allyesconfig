; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c_pt.bc'
source_filename = "../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.c8sectpfei = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.atomic_t, i32, %struct.c8sectpfe_hw, [3 x ptr], [16 x i32], %struct.mutex, %struct.timer_list, ptr, ptr, i32, [8 x ptr], ptr, i32, i32, i32, i32, i32 }
%struct.c8sectpfe_hw = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.channel_info = type { i32, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.completion, %struct.tasklet_struct, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.dvb_demux_feed = type { %union.anon.124, %union.anon.125, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.124 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.125 = type { ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stdemux = type { %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }

@__UNIQUE_ID_firmware386 = internal constant [39 x i8] c"c8sectpfe.firmware=pti_memdma_h407.elf\00", section ".modinfo", align 1
@__initcall__kmod_c8sectpfe__398_1190_c8sectpfe_driver_init6 = internal global ptr @c8sectpfe_driver_init, section ".initcall6.init", align 4
@c8sectpfe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @c8sectpfe_probe, ptr @c8sectpfe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @c8sectpfe_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_c8sectpfe_driver_exit = internal global ptr @c8sectpfe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author399 = internal constant [54 x i8] c"c8sectpfe.author=Peter Bennett <peter.bennett@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author400 = internal constant [58 x i8] c"c8sectpfe.author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description401 = internal constant [47 x i8] c"c8sectpfe.description=C8SECTPFE STi DVB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file402 = internal constant [62 x i8] c"c8sectpfe.file=drivers/media/platform/sti/c8sectpfe/c8sectpfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license403 = internal constant [22 x i8] c"c8sectpfe.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"c8sectpfe\00", [22 x i8] zeroinitializer }, align 32
@c8sectpfe_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-c8sectpfe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c8sectpfe-ram\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c8sectpfe-idle-irq\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c8sectpfe-error-irq\00", [44 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 704, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"c8sectpfe clk not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c8sectpfe_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr = internal global ptr @c8sectpfe_probe._entry, section ".printk_index", align 4
@c8sectpfe_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 710, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable c8sectpfe clock\0A\00", [62 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.11 = internal global ptr @c8sectpfe_probe._entry.9, section ".printk_index", align 4
@c8sectpfe_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 728, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't register c8sectpfe-idle-irq IRQ.\0A\00", [56 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.14 = internal global ptr @c8sectpfe_probe._entry.12, section ".printk_index", align 4
@c8sectpfe_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 736, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't register c8sectpfe-error-irq IRQ.\0A\00", [55 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.17 = internal global ptr @c8sectpfe_probe._entry.15, section ".printk_index", align 4
@c8sectpfe_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"More tsin declared than exist on SoC!\0A\00", [57 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.20 = internal global ptr @c8sectpfe_probe._entry.18, section ".printk_index", align 4
@c8sectpfe_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 753, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error getting tsin pins\0A\00", [39 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.23 = internal global ptr @c8sectpfe_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tsin-num\00", [23 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 776, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No tsin_num found\0A\00", [45 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.27 = internal global ptr @c8sectpfe_probe._entry.25, section ".printk_index", align 4
@c8sectpfe_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 784, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"tsin-num %d specified greater than number\0A\09of input block hw in SoC! (%d)\00", [54 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.30 = internal global ptr @c8sectpfe_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invert-ts-clk\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"serial-not-parallel\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"async-not-sync\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb-card\00", [23 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str.6, i32 801, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No dvb-card found\0A\00", [45 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.37 = internal global ptr @c8sectpfe_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-bus\00", [24 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.5, ptr @.str.6, i32 807, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No i2c-bus found\0A\00", [46 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.41 = internal global ptr @c8sectpfe_probe._entry.39, section ".printk_index", align 4
@c8sectpfe_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.5, ptr @.str.6, i32 814, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No i2c adapter found\0A\00", [42 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.44 = internal global ptr @c8sectpfe_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.5, ptr @.str.6, i32 827, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reset gpio for tsin%d not valid (gpio=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.48 = internal global ptr @c8sectpfe_probe._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NIM reset\00", [22 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.5, ptr @.str.6, i32 836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't request tsin%d reset gpio\0A\00", [63 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.52 = internal global ptr @c8sectpfe_probe._entry.50, section ".printk_index", align 4
@c8sectpfe_probe.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.53, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"channel=%p n=%d tsin_num=%d, invert-ts-clk=%d\0A\09serial-not-parallel=%d pkt-clk-valid=%d dvb-card=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@c8sectpfe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&fei->timer)\00", [18 x i8] zeroinitializer }, align 32
@c8sectpfe_probe.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fei->lock\00", [21 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.5, ptr @.str.6, i32 872, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"c8sectpfe_tuner_register_frontend failed (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@c8sectpfe_probe._entry_ptr.59 = internal global ptr @c8sectpfe_probe._entry.57, section ".printk_index", align 4
@c8sectpfe_getconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 387, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"C8SECTPFE hw supports the following:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c8sectpfe_getconfig\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr = internal global ptr @c8sectpfe_getconfig._entry, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.6, i32 388, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Input Blocks: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.65 = internal global ptr @c8sectpfe_getconfig._entry.63, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.6, i32 389, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Merged Input Blocks: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.68 = internal global ptr @c8sectpfe_getconfig._entry.66, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.61, ptr @.str.6, i32 391, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Software Transport Stream Inputs: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.71 = internal global ptr @c8sectpfe_getconfig._entry.69, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.61, ptr @.str.6, i32 392, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Transport Stream Output: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.74 = internal global ptr @c8sectpfe_getconfig._entry.72, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.61, ptr @.str.6, i32 393, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cable Card Converter: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.77 = internal global ptr @c8sectpfe_getconfig._entry.75, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.61, ptr @.str.6, i32 394, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RAMs supported by C8SECTPFE: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.80 = internal global ptr @c8sectpfe_getconfig._entry.78, section ".printk_index", align 4
@c8sectpfe_getconfig._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.61, ptr @.str.6, i32 396, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tango TPs supported by C8SECTPFE: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@c8sectpfe_getconfig._entry_ptr.83 = internal global ptr @c8sectpfe_getconfig._entry.81, section ".printk_index", align 4
@c8sectpfe_error_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: error handling not yet implemented\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"c8sectpfe_error_irq_handler\00", [36 x i8] zeroinitializer }, align 32
@c8sectpfe_error_irq_handler._entry_ptr = internal global ptr @c8sectpfe_error_irq_handler._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@c8sectpfe_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 150, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%d Error bailing\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c8sectpfe_start_feed\00", [43 x i8] zeroinitializer }, align 32
@c8sectpfe_start_feed._entry_ptr = internal global ptr @c8sectpfe_start_feed._entry, section ".printk_index", align 4
@c8sectpfe_start_feed._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 164, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@c8sectpfe_start_feed._entry_ptr.89 = internal global ptr @c8sectpfe_start_feed._entry.88, section ".printk_index", align 4
@c8sectpfe_start_feed.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.6, ptr @.str.90, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Starting channel=%p\0A\00", [43 x i8] zeroinitializer }, align 32
@c8sectpfe_start_feed.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.6, ptr @.str.91, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d Starting DMA feed on stdemux=%p\0A\00", [57 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 1134, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Loading firmware: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load_c8sectpfe_fw\00", [46 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry_ptr = internal global ptr @load_c8sectpfe_fw._entry, section ".printk_index", align 4
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pti_memdma_h407.elf\00", [44 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.93, ptr @.str.6, i32 1143, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"c8sectpfe_elf_sanity_check failed err=(%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry_ptr.97 = internal global ptr @load_c8sectpfe_fw._entry.95, section ".printk_index", align 4
@load_c8sectpfe_fw._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.93, ptr @.str.6, i32 1150, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"load_slim_core_fw failed err=(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry_ptr.100 = internal global ptr @load_c8sectpfe_fw._entry.98, section ".printk_index", align 4
@load_c8sectpfe_fw._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.93, ptr @.str.6, i32 1157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"configure_channels failed err=(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry_ptr.103 = internal global ptr @load_c8sectpfe_fw._entry.101, section ".printk_index", align 4
@load_c8sectpfe_fw._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.93, ptr @.str.6, i32 1167, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Boot the memdma SLIM core\0A\00", [37 x i8] zeroinitializer }, align 32
@load_c8sectpfe_fw._entry_ptr.106 = internal global ptr @load_c8sectpfe_fw._entry.104, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.6, i32 958, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to load %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"c8sectpfe_elf_sanity_check\00", [37 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr = internal global ptr @c8sectpfe_elf_sanity_check._entry, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.6, i32 963, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Image is too small\0A\00", [44 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.111 = internal global ptr @c8sectpfe_elf_sanity_check._entry.109, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.6, i32 972, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported class: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.114 = internal global ptr @c8sectpfe_elf_sanity_check._entry.112, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.6, i32 977, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported firmware endianness\0A\00", [63 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.117 = internal global ptr @c8sectpfe_elf_sanity_check._entry.115, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.6, i32 982, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.119 = internal global ptr @c8sectpfe_elf_sanity_check._entry.118, section ".printk_index", align 4
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.108, ptr @.str.6, i32 987, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Image is corrupted (bad magic)\0A\00", [32 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.123 = internal global ptr @c8sectpfe_elf_sanity_check._entry.121, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.108, ptr @.str.6, i32 997, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid ELF magic\0A\00", [45 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.126 = internal global ptr @c8sectpfe_elf_sanity_check._entry.124, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.108, ptr @.str.6, i32 1002, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported ELF header type\0A\00", [35 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.129 = internal global ptr @c8sectpfe_elf_sanity_check._entry.127, section ".printk_index", align 4
@c8sectpfe_elf_sanity_check._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.108, ptr @.str.6, i32 1007, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware size is too small\0A\00", [36 x i8] zeroinitializer }, align 32
@c8sectpfe_elf_sanity_check._entry_ptr.132 = internal global ptr @c8sectpfe_elf_sanity_check._entry.130, section ".printk_index", align 4
@load_slim_core_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.6, i32 1095, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Segment %d is outside of firmware file\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load_slim_core_fw\00", [46 x i8] zeroinitializer }, align 32
@load_slim_core_fw._entry_ptr = internal global ptr @load_slim_core_fw._entry, section ".printk_index", align 4
@load_imem_segment.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.6, ptr @.str.136, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load_imem_segment\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Loading IMEM segment %d 0x%08x\0A\09 (0x%x bytes) -> 0x%p (0x%x bytes)\0A\00", [60 x i8] zeroinitializer }, align 32
@load_dmem_segment.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.6, ptr @.str.138, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load_dmem_segment\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Loading DMEM segment %d 0x%08x\0A\09(0x%x bytes) -> 0x%p (0x%x bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@configure_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.6, i32 936, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"configure_memdma_and_inputblock failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"configure_channels\00", [45 x i8] zeroinitializer }, align 32
@configure_channels._entry_ptr = internal global ptr @configure_channels._entry, section ".printk_index", align 4
@configure_memdma_and_inputblock.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.6, ptr @.str.142, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"configure_memdma_and_inputblock\00", [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d Configuring channel=%p tsin=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.6, i32 482, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to map back_buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry_ptr = internal global ptr @configure_memdma_and_inputblock._entry, section ".printk_index", align 4
@configure_memdma_and_inputblock._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.141, ptr @.str.6, i32 518, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map pid_bitmap\0A\00", [38 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry_ptr.146 = internal global ptr @configure_memdma_and_inputblock._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tsin%d-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"parallel\00", [23 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.141, ptr @.str.6, i32 535, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: pinctrl_lookup_state couldn't find %s state\0A\00", [47 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry_ptr.152 = internal global ptr @configure_memdma_and_inputblock._entry.150, section ".printk_index", align 4
@configure_memdma_and_inputblock._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.141, ptr @.str.6, i32 544, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: pinctrl_select_state failed\0A\00", [63 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock._entry_ptr.155 = internal global ptr @configure_memdma_and_inputblock._entry.153, section ".printk_index", align 4
@configure_memdma_and_inputblock.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.6, ptr @.str.156, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"chan=%d PIDF_BASE=0x%x pid_bus_addr=%pad\0A\00", [54 x i8] zeroinitializer }, align 32
@configure_memdma_and_inputblock.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.6, ptr @.str.157, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"chan=%d setting wp: %d, rp: %d, buf: %d-%d\0A\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@channel_swdemux_tsklet.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.6, ptr @.str.162, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"channel_swdemux_tsklet\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"chan=%d channel=%p num_packets = %d, buf = %p, pos = 0x%x\0A\09rp=0x%lx, wp=0x%lx\0A\00", [49 x i8] zeroinitializer }, align 32
@c8sectpfe_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.6, i32 316, ptr @.str.165, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for idle irq on tsin%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c8sectpfe_stop_feed\00", [44 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@c8sectpfe_stop_feed._entry_ptr = internal global ptr @c8sectpfe_stop_feed._entry, section ".printk_index", align 4
@c8sectpfe_stop_feed.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.164, ptr @.str.6, ptr @.str.166, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d stopping DMA feed on stdemux=%p channel=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@c8sectpfe_stop_feed.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.164, ptr @.str.6, ptr @.str.167, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d global_feed_count=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@c8sectpfe_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.6, i32 907, ptr @.str.62, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Stopping memdma SLIM core\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c8sectpfe_remove\00", [47 x i8] zeroinitializer }, align 32
@c8sectpfe_remove._entry_ptr = internal global ptr @c8sectpfe_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.170 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 20]
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"c8sectpfe_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1181, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1183, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"c8sectpfe_match\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1175, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 685, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 692, i32 48 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 696, i32 49 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 704, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 710, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 728, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 736, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 745, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 753, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 774, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 776, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 782, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 790, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 793, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 796, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 798, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 801, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 805, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 807, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 814, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 821, i32 45 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 825, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 833, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 835, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 850, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 861, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 863, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 871, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 387, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 388, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 389, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 390, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 392, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 393, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 394, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 395, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 652, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 149, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 163, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 208, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 241, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1134, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1142, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1150, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1157, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1167, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 958, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 963, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 972, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 977, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 982, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 986, i32 28 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 987, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 997, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1002, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1007, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1094, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1029, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1058, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 935, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 456, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 482, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 518, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 529, i32 36 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 530, i32 32 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 530, i32 43 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 534, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 543, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 587, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 604, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 87, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 326, i32 6 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 112, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 314, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 331, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 349, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.616 = private constant [57 x i8] c"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 907, i32 2 }
@llvm.compiler.used = appending global [205 x ptr] [ptr @__UNIQUE_ID_author399, ptr @__UNIQUE_ID_author400, ptr @__UNIQUE_ID_description401, ptr @__UNIQUE_ID_file402, ptr @__UNIQUE_ID_firmware386, ptr @__UNIQUE_ID_license403, ptr @__exitcall_c8sectpfe_driver_exit, ptr @__initcall__kmod_c8sectpfe__398_1190_c8sectpfe_driver_init6, ptr @c8sectpfe_driver_exit, ptr @c8sectpfe_elf_sanity_check._entry, ptr @c8sectpfe_elf_sanity_check._entry.109, ptr @c8sectpfe_elf_sanity_check._entry.112, ptr @c8sectpfe_elf_sanity_check._entry.115, ptr @c8sectpfe_elf_sanity_check._entry.118, ptr @c8sectpfe_elf_sanity_check._entry.121, ptr @c8sectpfe_elf_sanity_check._entry.124, ptr @c8sectpfe_elf_sanity_check._entry.127, ptr @c8sectpfe_elf_sanity_check._entry.130, ptr @c8sectpfe_elf_sanity_check._entry_ptr, ptr @c8sectpfe_elf_sanity_check._entry_ptr.111, ptr @c8sectpfe_elf_sanity_check._entry_ptr.114, ptr @c8sectpfe_elf_sanity_check._entry_ptr.117, ptr @c8sectpfe_elf_sanity_check._entry_ptr.119, ptr @c8sectpfe_elf_sanity_check._entry_ptr.123, ptr @c8sectpfe_elf_sanity_check._entry_ptr.126, ptr @c8sectpfe_elf_sanity_check._entry_ptr.129, ptr @c8sectpfe_elf_sanity_check._entry_ptr.132, ptr @c8sectpfe_error_irq_handler._entry, ptr @c8sectpfe_error_irq_handler._entry_ptr, ptr @c8sectpfe_getconfig._entry, ptr @c8sectpfe_getconfig._entry.63, ptr @c8sectpfe_getconfig._entry.66, ptr @c8sectpfe_getconfig._entry.69, ptr @c8sectpfe_getconfig._entry.72, ptr @c8sectpfe_getconfig._entry.75, ptr @c8sectpfe_getconfig._entry.78, ptr @c8sectpfe_getconfig._entry.81, ptr @c8sectpfe_getconfig._entry_ptr, ptr @c8sectpfe_getconfig._entry_ptr.65, ptr @c8sectpfe_getconfig._entry_ptr.68, ptr @c8sectpfe_getconfig._entry_ptr.71, ptr @c8sectpfe_getconfig._entry_ptr.74, ptr @c8sectpfe_getconfig._entry_ptr.77, ptr @c8sectpfe_getconfig._entry_ptr.80, ptr @c8sectpfe_getconfig._entry_ptr.83, ptr @c8sectpfe_probe._entry, ptr @c8sectpfe_probe._entry.12, ptr @c8sectpfe_probe._entry.15, ptr @c8sectpfe_probe._entry.18, ptr @c8sectpfe_probe._entry.21, ptr @c8sectpfe_probe._entry.25, ptr @c8sectpfe_probe._entry.28, ptr @c8sectpfe_probe._entry.35, ptr @c8sectpfe_probe._entry.39, ptr @c8sectpfe_probe._entry.42, ptr @c8sectpfe_probe._entry.46, ptr @c8sectpfe_probe._entry.50, ptr @c8sectpfe_probe._entry.57, ptr @c8sectpfe_probe._entry.9, ptr @c8sectpfe_probe._entry_ptr, ptr @c8sectpfe_probe._entry_ptr.11, ptr @c8sectpfe_probe._entry_ptr.14, ptr @c8sectpfe_probe._entry_ptr.17, ptr @c8sectpfe_probe._entry_ptr.20, ptr @c8sectpfe_probe._entry_ptr.23, ptr @c8sectpfe_probe._entry_ptr.27, ptr @c8sectpfe_probe._entry_ptr.30, ptr @c8sectpfe_probe._entry_ptr.37, ptr @c8sectpfe_probe._entry_ptr.41, ptr @c8sectpfe_probe._entry_ptr.44, ptr @c8sectpfe_probe._entry_ptr.48, ptr @c8sectpfe_probe._entry_ptr.52, ptr @c8sectpfe_probe._entry_ptr.59, ptr @c8sectpfe_remove._entry, ptr @c8sectpfe_remove._entry_ptr, ptr @c8sectpfe_start_feed._entry, ptr @c8sectpfe_start_feed._entry.88, ptr @c8sectpfe_start_feed._entry_ptr, ptr @c8sectpfe_start_feed._entry_ptr.89, ptr @c8sectpfe_stop_feed._entry, ptr @c8sectpfe_stop_feed._entry_ptr, ptr @configure_channels._entry, ptr @configure_channels._entry_ptr, ptr @configure_memdma_and_inputblock._entry, ptr @configure_memdma_and_inputblock._entry.144, ptr @configure_memdma_and_inputblock._entry.150, ptr @configure_memdma_and_inputblock._entry.153, ptr @configure_memdma_and_inputblock._entry_ptr, ptr @configure_memdma_and_inputblock._entry_ptr.146, ptr @configure_memdma_and_inputblock._entry_ptr.152, ptr @configure_memdma_and_inputblock._entry_ptr.155, ptr @load_c8sectpfe_fw._entry, ptr @load_c8sectpfe_fw._entry.101, ptr @load_c8sectpfe_fw._entry.104, ptr @load_c8sectpfe_fw._entry.95, ptr @load_c8sectpfe_fw._entry.98, ptr @load_c8sectpfe_fw._entry_ptr, ptr @load_c8sectpfe_fw._entry_ptr.100, ptr @load_c8sectpfe_fw._entry_ptr.103, ptr @load_c8sectpfe_fw._entry_ptr.106, ptr @load_c8sectpfe_fw._entry_ptr.97, ptr @load_slim_core_fw._entry, ptr @load_slim_core_fw._entry_ptr, ptr @c8sectpfe_driver, ptr @.str, ptr @c8sectpfe_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @c8sectpfe_probe.__key, ptr @.str.54, ptr @c8sectpfe_probe.__key.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @init_completion.__key, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_getconfig._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_error_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_start_feed._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_c8sectpfe_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_c8sectpfe_fw._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_c8sectpfe_fw._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_c8sectpfe_fw._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_c8sectpfe_fw._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_elf_sanity_check._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_slim_core_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_memdma_and_inputblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_memdma_and_inputblock._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_memdma_and_inputblock._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_memdma_and_inputblock._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @c8sectpfe_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c8sectpfe_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @c8sectpfe_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 392, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup226_crit_edge, label %if.end

entry.cleanup226_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup226

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str) #11
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #11
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %io, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup226

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #11
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call11) #11
  %sram = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %sram, align 4
  %cmp.i371 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i371, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call12 to i32
  br label %cleanup226

if.end18:                                         ; preds = %if.end10
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call11, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %10
  %sram_size = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %sram_size, align 4
  %call20 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #11
  %idle_irq = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %idle_irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call20, ptr %idle_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end18.cleanup226_crit_edge, label %if.end24

if.end18.cleanup226_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup226

if.end24:                                         ; preds = %if.end18
  %call25 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #11
  %error_irq = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %error_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call25, ptr %error_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  br i1 %cmp27, label %if.end24.cleanup226_crit_edge, label %if.end30

if.end24.cleanup226_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup226

if.end30:                                         ; preds = %if.end24
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str) #11
  %c8sectpfeclk = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %c8sectpfeclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %c8sectpfeclk, align 4
  %cmp.i372 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i372, label %do.end, label %if.end37

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #14
  %16 = ptrtoint ptr %c8sectpfeclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c8sectpfeclk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup226

if.end37:                                         ; preds = %if.end30
  %call.i373 = tail call i32 @clk_prepare(ptr noundef %call31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %tobool.not.i = icmp eq i32 %call.i373, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.do.end44_crit_edge

if.end37.do.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

if.end.i:                                         ; preds = %if.end37
  %call1.i = tail call i32 @clk_enable(ptr noundef %call31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %call31) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i, %if.end37.do.end44_crit_edge
  %retval.0.i374.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i373, %if.end37.do.end44_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #14
  br label %cleanup226

do.body46:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %add.ptr54 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 16777216) #11, !srcloc !312
  %23 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sram, align 4
  %25 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sram_size, align 4
  tail call void @mmioset(ptr noundef %24, i32 noundef 0, i32 noundef %26) #11
  %hw_stats.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 512
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !314
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  %31 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hw_stats.i, align 4
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 4
  %add.ptr5.i = getelementptr i8, ptr %33, i32 516
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !314
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  %num_mib.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %num_mib.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_mib.i, align 4
  %37 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io, align 4
  %add.ptr12.i = getelementptr i8, ptr %38, i32 520
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !314
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  %num_swts.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %num_swts.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %num_swts.i, align 4
  %42 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io, align 4
  %add.ptr19.i = getelementptr i8, ptr %43, i32 524
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #11, !srcloc !314
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  %num_tsout.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %num_tsout.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %num_tsout.i, align 4
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %add.ptr26.i = getelementptr i8, ptr %48, i32 528
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #11, !srcloc !314
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  %num_ccsc.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %num_ccsc.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %num_ccsc.i, align 4
  %52 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io, align 4
  %add.ptr33.i = getelementptr i8, ptr %53, i32 532
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #11, !srcloc !314
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  %num_ram.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 5
  %56 = ptrtoint ptr %num_ram.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num_ram.i, align 4
  %57 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io, align 4
  %add.ptr40.i = getelementptr i8, ptr %58, i32 536
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #11, !srcloc !314
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %num_tp.i = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 7, i32 6
  %61 = ptrtoint ptr %num_tp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %num_tp.i, align 4
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.60) #14
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %66 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_stats.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.64, i32 noundef %67) #14
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %70 = ptrtoint ptr %num_mib.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_mib.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.67, i32 noundef %71) #14
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %74 = ptrtoint ptr %num_swts.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_swts.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.70, i32 noundef %75) #14
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %78 = ptrtoint ptr %num_tsout.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_tsout.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.73, i32 noundef %79) #14
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %82 = ptrtoint ptr %num_ccsc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_ccsc.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.76, i32 noundef %83) #14
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %86 = ptrtoint ptr %num_ram.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_ram.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.79, i32 noundef %87) #14
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %90 = ptrtoint ptr %num_tp.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_tp.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.82, i32 noundef %91) #14
  %92 = ptrtoint ptr %idle_irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %idle_irq, align 4
  %call.i375 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %93, ptr noundef nonnull @c8sectpfe_idle_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %tobool59.not = icmp eq i32 %call.i375, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #14
  br label %err_clk_disable

if.end64:                                         ; preds = %do.body46
  %94 = ptrtoint ptr %error_irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %error_irq, align 4
  %call.i376 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %95, ptr noundef nonnull @c8sectpfe_error_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i376)
  %tobool67.not = icmp eq i32 %call.i376, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  br label %err_clk_disable

if.end72:                                         ; preds = %if.end64
  %call.i377 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #11
  %cmp.not5.i = icmp eq ptr %call.i377, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %if.end72.for.body.i_crit_edge

if.end72.for.body.i_crit_edge:                    ; preds = %if.end72
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %tsin_count400 = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 6
  %96 = ptrtoint ptr %tsin_count400 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %tsin_count400, align 4
  br label %lor.lhs.false

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end72.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end72.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i378, %for.body.i.for.body.i_crit_edge ], [ %call.i377, %if.end72.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i378 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #11
  %cmp.not.i = icmp eq ptr %call1.i378, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %tsin_count = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 6
  %97 = ptrtoint ptr %tsin_count to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %inc.i, ptr %tsin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp75 = icmp sgt i32 %inc.i, 8
  br i1 %cmp75, label %of_get_child_count.exit.do.end81_crit_edge, label %of_get_child_count.exit.lor.lhs.false_crit_edge

of_get_child_count.exit.lor.lhs.false_crit_edge:  ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

of_get_child_count.exit.do.end81_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

lor.lhs.false:                                    ; preds = %of_get_child_count.exit.lor.lhs.false_crit_edge, %of_get_child_count.exit.thread
  %num.0.lcssa.i402 = phi i32 [ 0, %of_get_child_count.exit.thread ], [ %inc.i, %of_get_child_count.exit.lor.lhs.false_crit_edge ]
  %98 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hw_stats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i402, i32 %99)
  %cmp77 = icmp sgt i32 %num.0.lcssa.i402, %99
  br i1 %cmp77, label %lor.lhs.false.do.end81_crit_edge, label %if.end82

lor.lhs.false.do.end81_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

do.end81:                                         ; preds = %lor.lhs.false.do.end81_crit_edge, %of_get_child_count.exit.do.end81_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #14
  br label %err_clk_disable

if.end82:                                         ; preds = %lor.lhs.false
  %call83 = tail call ptr @devm_pinctrl_get(ptr noundef %dev1) #11
  %pinctrl = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 1
  %100 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call83, ptr %pinctrl, align 4
  %cmp.i379 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i379, label %do.end89, label %if.end92

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #14
  %101 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pinctrl, align 4
  %103 = ptrtoint ptr %102 to i32
  br label %err_clk_disable

if.end92:                                         ; preds = %if.end82
  %call93 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #11
  %cmp94.not467 = icmp eq ptr %call93, null
  br i1 %cmp94.not467, label %if.end92.do.body211_crit_edge, label %if.end92.for.body_crit_edge

if.end92.for.body_crit_edge:                      ; preds = %if.end92
  br label %for.body

if.end92.do.body211_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end92.for.body_crit_edge
  %index.0469 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end92.for.body_crit_edge ]
  %child.0468 = phi ptr [ %call210, %for.inc.for.body_crit_edge ], [ %call93, %if.end92.for.body_crit_edge ]
  %call.i380 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #11
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %call.i, i32 0, i32 15, i32 %index.0469
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i380, ptr %arrayidx, align 4
  %tobool98.not = icmp eq ptr %call.i380, null
  br i1 %tobool98.not, label %for.body.err_node_put_crit_edge, label %if.end100

for.body.err_node_put_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_node_put

if.end100:                                        ; preds = %for.body
  %fei103 = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 24
  %105 = ptrtoint ptr %fei103 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i, ptr %fei103, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i380, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool105.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool105.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #14
  br label %err_node_put

if.end111:                                        ; preds = %if.end100
  %106 = ptrtoint ptr %call.i380 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %call.i380, align 4
  %108 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw_stats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp115 = icmp sgt i32 %107, %109
  br i1 %cmp115, label %do.end119, label %if.end124

do.end119:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %107, i32 noundef %109) #14
  br label %err_node_put

if.end124:                                        ; preds = %if.end111
  %call.i381 = call ptr @of_find_property(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.31, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i381, null
  %invert_ts_clk = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 1
  %frombool = zext i1 %tobool.i to i8
  %110 = ptrtoint ptr %invert_ts_clk to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %frombool, ptr %invert_ts_clk, align 4
  %call.i382 = call ptr @of_find_property(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.32, ptr noundef null) #11
  %tobool.i383 = icmp ne ptr %call.i382, null
  %serial_not_parallel = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 2
  %frombool127 = zext i1 %tobool.i383 to i8
  %111 = ptrtoint ptr %serial_not_parallel to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %frombool127, ptr %serial_not_parallel, align 1
  %call.i384 = call ptr @of_find_property(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.33, ptr noundef null) #11
  %tobool.i385 = icmp ne ptr %call.i384, null
  %async_not_sync = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 3
  %frombool129 = zext i1 %tobool.i385 to i8
  %112 = ptrtoint ptr %async_not_sync to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %frombool129, ptr %async_not_sync, align 2
  %dvb_card = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 5
  %call.i.i386 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.34, ptr noundef %dvb_card, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i386)
  %tobool131.not = icmp sgt i32 %call.i.i386, -1
  br i1 %tobool131.not, label %if.end137, label %do.end135

do.end135:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #14
  br label %err_node_put

if.end137:                                        ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %113 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i387 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %tobool.not.i388 = icmp eq i32 %call.i387, 0
  br i1 %tobool.not.i388, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %do.end143

of_parse_phandle.exit:                            ; preds = %if.end137
  %114 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool139.not = icmp eq ptr %115, null
  br i1 %tobool139.not, label %of_parse_phandle.exit.do.end143_crit_edge, label %if.end145

of_parse_phandle.exit.do.end143_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

do.end143:                                        ; preds = %of_parse_phandle.exit.do.end143_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #14
  br label %err_node_put

if.end145:                                        ; preds = %of_parse_phandle.exit
  %call146 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %115) #11
  %i2c_adapter = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 7
  %116 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call146, ptr %i2c_adapter, align 4
  %tobool148.not = icmp eq ptr %call146, null
  br i1 %tobool148.not, label %do.end152, label %if.end154

do.end152:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #14
  call void @of_node_put(ptr noundef nonnull %115) #11
  br label %err_node_put

if.end154:                                        ; preds = %if.end145
  call void @of_node_put(ptr noundef nonnull %115) #11
  %call.i391 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %child.0468, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef null) #11
  %rst_gpio = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 6
  %117 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call.i391, ptr %rst_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i391)
  %118 = icmp ult i32 %call.i391, 2048
  br i1 %118, label %if.end165, label %do.end162

do.end162:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %call.i380 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %call.i380, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %120, i32 noundef %call.i391) #14
  br label %err_node_put

if.end165:                                        ; preds = %if.end154
  %call167 = call i32 @devm_gpio_request_one(ptr noundef %dev1, i32 noundef %call.i391, i32 noundef 0, ptr noundef nonnull @.str.49) #11
  %121 = zext i32 %call167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call167, label %do.end174 [
    i32 0, label %if.then180
    i32 -16, label %if.end165.if.end185_crit_edge
  ]

if.end165.if.end185_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

do.end174:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %125) #14
  br label %err_node_put

if.then180:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rst_gpio, align 4
  %call.i392 = call ptr @gpio_to_desc(i32 noundef %127) #11
  %call1.i393 = call i32 @gpiod_direction_output_raw(ptr noundef %call.i392, i32 noundef 0) #11
  call void @usleep_range_state(i32 noundef 3500, i32 noundef 5000, i32 noundef 2) #11
  %128 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rst_gpio, align 4
  %call.i394 = call ptr @gpio_to_desc(i32 noundef %129) #11
  %call1.i395 = call i32 @gpiod_direction_output_raw(ptr noundef %call.i394, i32 noundef 1) #11
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #11
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.end165.if.end185_crit_edge
  %demux_mapping = getelementptr inbounds %struct.channel_info, ptr %call.i380, i32 0, i32 13
  %130 = ptrtoint ptr %demux_mapping to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %index.0469, ptr %demux_mapping, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c8sectpfe_probe.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c8sectpfe_probe, %if.then192)) #11
          to label %for.inc [label %if.then192], !srcloc !322

if.then192:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  %133 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx, align 4
  %135 = ptrtoint ptr %call.i380 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %call.i380, align 4
  %137 = ptrtoint ptr %invert_ts_clk to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %invert_ts_clk, align 4, !range !323
  %139 = zext i8 %138 to i32
  %140 = ptrtoint ptr %serial_not_parallel to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %serial_not_parallel, align 1, !range !323
  %142 = zext i8 %141 to i32
  %143 = ptrtoint ptr %async_not_sync to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %async_not_sync, align 2, !range !323
  %145 = zext i8 %144 to i32
  %146 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dvb_card, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c8sectpfe_probe.__UNIQUE_ID_ddebug395, ptr noundef %132, ptr noundef nonnull @.str.53, ptr noundef %134, i32 noundef %index.0469, i32 noundef %136, i32 noundef %139, i32 noundef %142, i32 noundef %145, i32 noundef %147) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then192, %if.end185
  %inc = add i32 %index.0469, 1
  %call210 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0468) #11
  %cmp94.not = icmp eq ptr %call210, null
  br i1 %cmp94.not, label %for.inc.do.body211_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body211_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

do.body211:                                       ; preds = %for.inc.do.body211_crit_edge, %if.end92.do.body211_crit_edge
  %timer = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 11
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @c8sectpfe_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @c8sectpfe_probe.__key) #11
  %lock = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.56, ptr noundef nonnull @c8sectpfe_probe.__key.55) #11
  %c8sectpfe = getelementptr inbounds %struct.c8sectpfei, ptr %call.i, i32 0, i32 8
  %call218 = call i32 @c8sectpfe_tuner_register_frontend(ptr noundef %c8sectpfe, ptr noundef nonnull %call.i, ptr noundef nonnull @c8sectpfe_start_feed, ptr noundef nonnull @c8sectpfe_stop_feed) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end224, label %do.end223

do.end223:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %call218) #14
  br label %err_clk_disable

if.end224:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  call void @c8sectpfe_debugfs_init(ptr noundef nonnull %call.i) #11
  br label %cleanup226

err_node_put:                                     ; preds = %do.end174, %do.end162, %do.end152, %do.end143, %do.end135, %do.end119, %do.end109, %for.body.err_node_put_crit_edge
  %ret.0.ph = phi i32 [ -19, %do.end143 ], [ -19, %do.end152 ], [ -22, %do.end162 ], [ %call167, %do.end174 ], [ %call.i.i386, %do.end135 ], [ -22, %do.end119 ], [ %call.i.i, %do.end109 ], [ -12, %for.body.err_node_put_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0468) #11
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_node_put, %do.end223, %do.end89, %do.end81, %do.end71, %do.end63
  %ret.1 = phi i32 [ %call.i375, %do.end63 ], [ %call.i376, %do.end71 ], [ -22, %do.end81 ], [ %103, %do.end89 ], [ %ret.0.ph, %err_node_put ], [ %call218, %do.end223 ]
  %148 = ptrtoint ptr %c8sectpfeclk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %c8sectpfeclk, align 4
  call void @clk_disable(ptr noundef %149) #11
  call void @clk_unprepare(ptr noundef %149) #11
  br label %cleanup226

cleanup226:                                       ; preds = %err_clk_disable, %if.end224, %do.end44, %do.end, %if.end24.cleanup226_crit_edge, %if.end18.cleanup226_crit_edge, %if.then15, %if.then7, %entry.cleanup226_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %6, %if.then15 ], [ %18, %do.end ], [ %retval.0.i374.ph, %do.end44 ], [ %ret.1, %err_clk_disable ], [ 0, %if.end224 ], [ -12, %entry.cleanup226_crit_edge ], [ %call20, %if.end18.cleanup226_crit_edge ], [ %call25, %if.end24.cleanup226_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_ack = getelementptr inbounds %struct.c8sectpfei, ptr %1, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %fw_ack) #11
  %c8sectpfe = getelementptr inbounds %struct.c8sectpfei, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c8sectpfe, align 4
  tail call void @c8sectpfe_tuner_unregister_frontend(ptr noundef %3, ptr noundef %1) #11
  %tsin_count = getelementptr inbounds %struct.c8sectpfei, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tsin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp60 = icmp sgt i32 %5, 0
  br i1 %cmp60, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.c8sectpfei, ptr %1, i32 0, i32 15, i32 %i.061
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  tail call fastcc void @free_input_block(ptr noundef %1, ptr noundef %7)
  %inc = add nuw nsw i32 %i.061, 1
  %8 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tsin_count, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @c8sectpfe_debugfs_exit(ptr noundef %1) #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.168) #14
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 49160
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.body4

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 49160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #11, !srcloc !312
  br label %if.end

if.end:                                           ; preds = %do.body4, %for.end.if.end_crit_edge
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %add.ptr12 = getelementptr i8, ptr %18, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end.if.end23_crit_edge, label %do.body18

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #11, !srcloc !312
  br label %if.end23

if.end23:                                         ; preds = %do.body18, %if.end.if.end23_crit_edge
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not = icmp eq i32 %24, 0
  br i1 %tobool31.not, label %if.end23.if.end38_crit_edge, label %do.body33

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %add.ptr37 = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #11, !srcloc !312
  br label %if.end38

if.end38:                                         ; preds = %do.body33, %if.end23.if.end38_crit_edge
  %c8sectpfeclk = getelementptr inbounds %struct.c8sectpfei, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %c8sectpfeclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c8sectpfeclk, align 4
  %tobool39.not = icmp eq ptr %28, null
  br i1 %tobool39.not, label %if.end38.if.end42_crit_edge, label %if.then40

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef nonnull %28) #11
  tail call void @clk_unprepare(ptr noundef nonnull %28) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_idle_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !314
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp, align 4
  %hw_stats = getelementptr inbounds %struct.c8sectpfei, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_stats, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp, i32 noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %8)
  %cmp23 = icmp slt i32 %call3, %8
  br i1 %cmp23, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 0
  %arrayidx.1.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 1
  %arrayidx.2.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 2
  %arrayidx.3.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 3
  %arrayidx.4.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 4
  %arrayidx.5.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 5
  %arrayidx.6.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 6
  %arrayidx.7.i = getelementptr %struct.c8sectpfei, ptr %priv, i32 0, i32 15, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.024 = phi i32 [ %call3, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.for.inc.i_crit_edge, label %if.end.i

for.body.for.inc.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %bit.024)
  %cmp3.i = icmp eq i32 %12, %bit.024
  br i1 %cmp3.i, label %if.end.i.if.then_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.for.inc.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %14, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %bit.024)
  %cmp3.1.i = icmp eq i32 %16, %bit.024
  br i1 %cmp3.1.i, label %if.end.1.i.if.then_crit_edge, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.1.i.if.then_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %18, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %bit.024)
  %cmp3.2.i = icmp eq i32 %20, %bit.024
  br i1 %cmp3.2.i, label %if.end.2.i.if.then_crit_edge, label %if.end.2.i.for.inc.2.i_crit_edge

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end.2.i.if.then_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.2.i:                                      ; preds = %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %22, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %bit.024)
  %cmp3.3.i = icmp eq i32 %24, %bit.024
  br i1 %cmp3.3.i, label %if.end.3.i.if.then_crit_edge, label %if.end.3.i.for.inc.3.i_crit_edge

if.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.end.3.i.if.then_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.3.i:                                      ; preds = %if.end.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %26, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %bit.024)
  %cmp3.4.i = icmp eq i32 %28, %bit.024
  br i1 %cmp3.4.i, label %if.end.4.i.if.then_crit_edge, label %if.end.4.i.for.inc.4.i_crit_edge

if.end.4.i.for.inc.4.i_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.end.4.i.if.then_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.4.i:                                      ; preds = %if.end.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %30, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.end.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

if.end.5.i:                                       ; preds = %for.inc.4.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %bit.024)
  %cmp3.5.i = icmp eq i32 %32, %bit.024
  br i1 %cmp3.5.i, label %if.end.5.i.if.then_crit_edge, label %if.end.5.i.for.inc.5.i_crit_edge

if.end.5.i.for.inc.5.i_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

if.end.5.i.if.then_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.5.i:                                      ; preds = %if.end.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %34, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.end.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i

if.end.6.i:                                       ; preds = %for.inc.5.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %bit.024)
  %cmp3.6.i = icmp eq i32 %36, %bit.024
  br i1 %cmp3.6.i, label %if.end.6.i.if.then_crit_edge, label %if.end.6.i.for.inc.6.i_crit_edge

if.end.6.i.for.inc.6.i_crit_edge:                 ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i

if.end.6.i.if.then_crit_edge:                     ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.6.i:                                      ; preds = %if.end.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %37 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %38, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc_crit_edge, label %if.end.7.i

for.inc.6.i.for.inc_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.7.i:                                       ; preds = %for.inc.6.i
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %bit.024)
  %cmp3.7.i = icmp eq i32 %40, %bit.024
  br i1 %cmp3.7.i, label %if.end.7.i.if.then_crit_edge, label %if.end.7.i.for.inc_crit_edge

if.end.7.i.for.inc_crit_edge:                     ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.7.i.if.then_crit_edge:                     ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.end.7.i.if.then_crit_edge, %if.end.6.i.if.then_crit_edge, %if.end.5.i.if.then_crit_edge, %if.end.4.i.if.then_crit_edge, %if.end.3.i.if.then_crit_edge, %if.end.2.i.if.then_crit_edge, %if.end.1.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i.ph = phi ptr [ %38, %if.end.7.i.if.then_crit_edge ], [ %34, %if.end.6.i.if.then_crit_edge ], [ %30, %if.end.5.i.if.then_crit_edge ], [ %26, %if.end.4.i.if.then_crit_edge ], [ %22, %if.end.3.i.if.then_crit_edge ], [ %18, %if.end.2.i.if.then_crit_edge ], [ %14, %if.end.1.i.if.then_crit_edge ], [ %10, %if.end.i.if.then_crit_edge ]
  %idle_completion = getelementptr inbounds %struct.channel_info, ptr %retval.0.i.ph, i32 0, i32 22
  call void @complete(ptr noundef %idle_completion) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end.7.i.for.inc_crit_edge, %for.inc.6.i.for.inc_crit_edge
  %41 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_stats, align 4
  %add = add nsw i32 %bit.024, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp, i32 noundef %42, i32 noundef %add) #11
  %43 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_stats, align 4
  %cmp = icmp slt i32 %call9, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io, align 4
  %add.ptr11 = getelementptr i8, ptr %46, i32 32784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #11, !srcloc !312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_error_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c8sectpfe_timer_interrupt(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tsin_count = getelementptr i8, ptr %t, i32 -200
  %0 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_data = getelementptr i8, ptr %t, i32 60
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chan_num.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %channel_data, i32 0, i32 %chan_num.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %irec = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irec, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add.ptr2 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %state.i = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 23, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tsklet = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 23
  tail call void @__tasklet_schedule(ptr noundef %tsklet) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %chan_num.016, 1
  %7 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tsin_count, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 5
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c8sectpfe_tuner_register_frontend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %c8sectpfei = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %c8sectpfei to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c8sectpfei, align 8
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 150) #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %10 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pes_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %11, label %do.end6 [
    i32 1, label %if.then.if.end_crit_edge
    i32 0, label %if.then.if.end_crit_edge216
    i32 2, label %if.then.if.end_crit_edge217
    i32 4, label %if.then.if.end_crit_edge218
    i32 20, label %if.then.if.end_crit_edge219
  ]

if.then.if.end_crit_edge219:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge218:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge217:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge216:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 164) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge216, %if.then.if.end_crit_edge217, %if.then.if.end_crit_edge218, %if.then.if.end_crit_edge219, %sw.epilog.if.end_crit_edge
  %fw_loaded = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_loaded, i32 noundef 4) #11
  %15 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %fw_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %if.end
  %call10 = tail call fastcc i32 @load_c8sectpfe_fw(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %lock = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %tsin_index = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %tsin_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tsin_index, align 8
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %5, i32 0, i32 15, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %22)
  %cmp15 = icmp eq i16 %22, 8192
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 12
  %23 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %20, align 4
  %mul = shl i32 %26, 6
  %add18 = add i32 %mul, 4108
  %add.ptr = getelementptr i8, ptr %24, i32 %add18
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %28 = and i32 %27, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %20, align 4
  %mul27 = shl i32 %32, 6
  %add29 = add i32 %mul27, 4108
  %add.ptr30 = getelementptr i8, ptr %30, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %28) #11, !srcloc !312
  br label %if.end33

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %22 to i32
  %pid_buffer_aligned = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 19
  %33 = ptrtoint ptr %pid_buffer_aligned to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pid_buffer_aligned, align 4
  %rem.i.i = and i32 %conv, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv, 5
  %add.ptr.i.i = getelementptr i32, ptr %34, i32 %div2.i.i
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %36, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then17
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %pid_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 20
  %39 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid_buffer_busaddr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %38, i32 noundef %40, i32 noundef 1024, i32 noundef 1) #11
  %active = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 14
  %41 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %active, align 4
  %global_feed_count = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 21
  %42 = ptrtoint ptr %global_feed_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %global_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp35 = icmp eq i32 %43, 0
  br i1 %cmp35, label %if.then37, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add40 = add i32 %44, 1
  %timer = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 11
  %expires = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 11, i32 1
  %45 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add40, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end33.if.end42_crit_edge
  %running_feed_count = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 5
  %46 = ptrtoint ptr %running_feed_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %running_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43 = icmp eq i32 %47, 0
  br i1 %cmp43, label %do.body46, label %if.end42.if.end146_crit_edge

if.end42.if.end146_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

do.body46:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c8sectpfe_start_feed.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c8sectpfe_start_feed, %if.then52)) #11
          to label %do.end56 [label %if.then52], !srcloc !322

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c8sectpfe_start_feed.__UNIQUE_ID_ddebug388, ptr noundef %49, ptr noundef nonnull @.str.90, ptr noundef %20) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body46
  %tsklet = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 23
  tail call void @tasklet_setup(ptr noundef %tsklet, ptr noundef nonnull @channel_swdemux_tsklet) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  tail call void @arm_heavy_mb() #11
  %fifo = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 21
  %50 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %io60 = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 12
  %53 = ptrtoint ptr %io60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io60, align 4
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %20, align 4
  %mul62 = shl i32 %56, 6
  %add64 = add i32 %mul62, 4116
  %add.ptr65 = getelementptr i8, ptr %54, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %52) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fifo, align 4
  %sub = add i32 %58, 1023
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %60 = ptrtoint ptr %io60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io60, align 4
  %62 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %20, align 4
  %mul73 = shl i32 %63, 6
  %add75 = add i32 %mul73, 4120
  %add.ptr76 = getelementptr i8, ptr %61, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %59) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fifo, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %io60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io60, align 4
  %69 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %20, align 4
  %mul83 = shl i32 %70, 6
  %add85 = add i32 %mul83, 4124
  %add.ptr86 = getelementptr i8, ptr %68, i32 %add85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %66) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fifo, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %io60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io60, align 4
  %76 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %20, align 4
  %mul93 = shl i32 %77, 6
  %add95 = add i32 %mul93, 4128
  %add.ptr96 = getelementptr i8, ptr %75, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %73) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %back_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 17
  %78 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %back_buffer_busaddr, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %irec = getelementptr inbounds %struct.channel_info, ptr %20, i32 0, i32 25
  %81 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irec, align 4
  %add.ptr100 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %80) #11, !srcloc !312
  %83 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %back_buffer_busaddr, align 4
  %sub103 = add i32 %84, 522239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  tail call void @arm_heavy_mb() #11
  %85 = tail call i32 @llvm.bswap.i32(i32 %sub103)
  %86 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %irec, align 4
  %add.ptr108 = getelementptr i8, ptr %87, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %85) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %back_buffer_busaddr, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %irec, align 4
  %add.ptr114 = getelementptr i8, ptr %92, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %90) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %io60 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io60, align 4
  %95 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %20, align 4
  %mul120 = shl i32 %96, 6
  %add122 = add i32 %mul120, 4144
  %add.ptr123 = getelementptr i8, ptr %94, i32 %add122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 50331648) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %97 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %irec, align 4
  %add.ptr128 = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 16777216) #11, !srcloc !312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c8sectpfe_start_feed.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c8sectpfe_start_feed, %if.then141)) #11
          to label %if.end146 [label %if.then141], !srcloc !322

if.then141:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c8sectpfe_start_feed.__UNIQUE_ID_ddebug389, ptr noundef %100, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.87, i32 noundef 242, ptr noundef %3) #11
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %do.end56, %if.end42.if.end146_crit_edge
  %101 = ptrtoint ptr %running_feed_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %running_feed_count, align 4
  %inc = add i32 %102, 1
  store i32 %inc, ptr %running_feed_count, align 4
  %103 = ptrtoint ptr %global_feed_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %global_feed_count, align 4
  %inc149 = add i32 %104, 1
  store i32 %inc149, ptr %global_feed_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %if.then9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.end146 ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c8sectpfe_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %c8sectpfei = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %c8sectpfei to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c8sectpfei, align 8
  %fw_loaded = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_loaded, i32 noundef 4) #11
  %6 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fw_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @load_c8sectpfe_fw(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %lock = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %tsin_index = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tsin_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tsin_index, align 8
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %5, i32 0, i32 15, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %13)
  %cmp = icmp eq i16 %13, 8192
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %mul = shl i32 %17, 6
  %add8 = add i32 %mul, 4108
  %add.ptr = getelementptr i8, ptr %15, i32 %add8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %19 = or i32 %18, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  %mul14 = shl i32 %23, 6
  %add16 = add i32 %mul14, 4108
  %add.ptr17 = getelementptr i8, ptr %21, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %19) #11, !srcloc !312
  br label %if.end20

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %13 to i32
  %pid_buffer_aligned = getelementptr inbounds %struct.channel_info, ptr %11, i32 0, i32 19
  %24 = ptrtoint ptr %pid_buffer_aligned to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pid_buffer_aligned, align 4
  %rem.i.i = and i32 %conv, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv, 5
  %add.ptr.i.i = getelementptr i32, ptr %25, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %27, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then7
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %pid_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %11, i32 0, i32 20
  %30 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid_buffer_busaddr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %29, i32 noundef %31, i32 noundef 1024, i32 noundef 1) #11
  %running_feed_count = getelementptr inbounds %struct.stdemux, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %running_feed_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %running_feed_count, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %running_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp eq i32 %dec, 0
  br i1 %cmp21, label %if.then23, label %if.end20.if.end92_crit_edge

if.end20.if.end92_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then23:                                        ; preds = %if.end20
  %34 = ptrtoint ptr %tsin_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tsin_index, align 8
  %arrayidx26 = getelementptr %struct.c8sectpfei, ptr %5, i32 0, i32 15, i32 %35
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %io30 = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 12
  %38 = ptrtoint ptr %io30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io30, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %mul32 = shl i32 %41, 6
  %add34 = add i32 %mul32, 4144
  %add.ptr35 = getelementptr i8, ptr %39, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  tail call void @arm_heavy_mb() #11
  %irec = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 25
  %42 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irec, align 4
  %add.ptr39 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #11, !srcloc !312
  %tsklet = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 23
  %count.i.i = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 23, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #11, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @tasklet_unlock_wait(ptr noundef %tsklet) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !350
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %37, align 4
  %shl = shl nuw i32 1, %46
  %or41 = or i32 %shl, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %48 = ptrtoint ptr %io30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io30, align 4
  %add.ptr46 = getelementptr i8, ptr %49, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %47) #11, !srcloc !312
  %idle_completion = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 22
  %call48 = tail call i32 @wait_for_completion_timeout(ptr noundef %idle_completion, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %if.then23.if.end57_crit_edge

if.then23.if.end57_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.end54:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %52 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.163, i32 noundef %53) #14
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.then23.if.end57_crit_edge
  %54 = ptrtoint ptr %idle_completion to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %idle_completion, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  tail call void @arm_heavy_mb() #11
  %back_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 17
  %55 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %back_buffer_busaddr, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %irec, align 4
  %add.ptr63 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %57) #11, !srcloc !312
  %60 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %back_buffer_busaddr, align 4
  %sub = add i32 %61, 522239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %63 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %irec, align 4
  %add.ptr70 = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %62) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %back_buffer_busaddr, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %irec, align 4
  %add.ptr76 = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %67) #11, !srcloc !312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c8sectpfe_stop_feed, %if.then83)) #11
          to label %do.end88 [label %if.then83], !srcloc !322

if.then83:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %72 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug390, ptr noundef %71, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164, i32 noundef 333, ptr noundef %3, i32 noundef %73) #11
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %if.end57
  %pid_buffer_aligned89 = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 19
  %74 = ptrtoint ptr %pid_buffer_aligned89 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pid_buffer_aligned89, align 4
  %76 = call ptr @memset(ptr %75, i32 0, i32 1024)
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %5, align 4
  %pid_buffer_busaddr91 = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 20
  %79 = ptrtoint ptr %pid_buffer_busaddr91 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid_buffer_busaddr91, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %78, i32 noundef %80, i32 noundef 1024, i32 noundef 1) #11
  %active = getelementptr inbounds %struct.channel_info, ptr %37, i32 0, i32 14
  %81 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %active, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.end88, %if.end20.if.end92_crit_edge
  %global_feed_count = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 21
  %82 = ptrtoint ptr %global_feed_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %global_feed_count, align 4
  %dec93 = add i32 %83, -1
  store i32 %dec93, ptr %global_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93)
  %cmp94 = icmp eq i32 %dec93, 0
  br i1 %cmp94, label %do.body97, label %if.end92.if.end116_crit_edge

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

do.body97:                                        ; preds = %if.end92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c8sectpfe_stop_feed, %if.then109)) #11
          to label %do.end114 [label %if.then109], !srcloc !322

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 4
  %86 = ptrtoint ptr %global_feed_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %global_feed_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug391, ptr noundef %85, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.164, i32 noundef 350, i32 noundef %87) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then109, %do.body97
  %timer = getelementptr inbounds %struct.c8sectpfei, ptr %5, i32 0, i32 11
  %call115 = tail call i32 @del_timer(ptr noundef %timer) #11
  br label %if.end116

if.end116:                                        ; preds = %do.end114, %if.end92.if.end116_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end116 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c8sectpfe_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_c8sectpfe_fw(ptr noundef %fei) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !355
  %1 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fei, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.94) #14
  %3 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fei, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.94, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.94) #14
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %10)
  %cmp.i = icmp ult i32 %10, 52
  br i1 %cmp.i, label %do.end4.i, label %if.end6.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.110) #14
  br label %do.end7

if.end6.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp7.not.i = icmp eq i8 %16, 1
  br i1 %cmp7.not.i, label %if.end15.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.113, i32 noundef %conv.i) #14
  br label %do.end7

if.end15.i:                                       ; preds = %if.end6.i
  %arrayidx17.i = getelementptr [16 x i8], ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp19.not.i = icmp eq i8 %20, 1
  br i1 %cmp19.not.i, label %if.end26.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.116) #14
  br label %do.end7

if.end26.i:                                       ; preds = %if.end15.i
  %e_shoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 6
  %23 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %e_shoff.i, align 4
  %add.i = add i32 %24, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp28.i = icmp ult i32 %10, %add.i
  br i1 %cmp28.i, label %do.end33.i, label %if.end35.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.110) #14
  br label %do.end7

if.end35.i:                                       ; preds = %if.end26.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %14, ptr noundef nonnull dereferenceable(4) @.str.120, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool37.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.122) #14
  br label %do.end7

if.end43.i:                                       ; preds = %if.end35.i
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %30)
  %cmp48.not.i = icmp eq i8 %30, 127
  br i1 %cmp48.not.i, label %lor.lhs.false.i, label %if.end43.i.do.end70.i_crit_edge

if.end43.i.do.end70.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70.i

lor.lhs.false.i:                                  ; preds = %if.end43.i
  %arrayidx51.i = getelementptr [16 x i8], ptr %14, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %32)
  %cmp53.not.i = icmp eq i8 %32, 69
  br i1 %cmp53.not.i, label %lor.lhs.false55.i, label %lor.lhs.false.i.do.end70.i_crit_edge

lor.lhs.false.i.do.end70.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70.i

lor.lhs.false55.i:                                ; preds = %lor.lhs.false.i
  %arrayidx57.i = getelementptr [16 x i8], ptr %14, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx57.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %34)
  %cmp59.not.i = icmp eq i8 %34, 76
  br i1 %cmp59.not.i, label %lor.lhs.false61.i, label %lor.lhs.false55.i.do.end70.i_crit_edge

lor.lhs.false55.i.do.end70.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70.i

lor.lhs.false61.i:                                ; preds = %lor.lhs.false55.i
  %arrayidx63.i = getelementptr [16 x i8], ptr %14, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %36)
  %cmp65.not.i = icmp eq i8 %36, 70
  br i1 %cmp65.not.i, label %if.end72.i, label %lor.lhs.false61.i.do.end70.i_crit_edge

lor.lhs.false61.i.do.end70.i_crit_edge:           ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70.i

do.end70.i:                                       ; preds = %lor.lhs.false61.i.do.end70.i_crit_edge, %lor.lhs.false55.i.do.end70.i_crit_edge, %lor.lhs.false.i.do.end70.i_crit_edge, %if.end43.i.do.end70.i_crit_edge
  %37 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.125) #14
  br label %do.end7

if.end72.i:                                       ; preds = %lor.lhs.false61.i
  %e_type.i = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 1
  %39 = ptrtoint ptr %e_type.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %e_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %40)
  %cmp74.not.i = icmp eq i16 %40, 2
  br i1 %cmp74.not.i, label %if.end81.i, label %do.end79.i

do.end79.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.128) #14
  br label %do.end7

if.end81.i:                                       ; preds = %if.end72.i
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 5
  %43 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %e_phoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %10)
  %cmp83.i = icmp ugt i32 %44, %10
  br i1 %cmp83.i, label %do.end88.i, label %if.end9

do.end88.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.131) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end88.i, %do.end79.i, %do.end70.i, %do.end41.i, %do.end33.i, %do.end24.i, %do.end12.i, %do.end4.i, %do.end.i
  %47 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.96, i32 noundef -22) #14
  %49 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %50) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end81.i
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  %call10 = call fastcc i32 @load_slim_core_fw(ptr noundef %52, ptr noundef %fei)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.99, i32 noundef %call10) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = call fastcc i32 @configure_channels(ptr noundef %fei)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.102, i32 noundef %call18) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  call void @arm_heavy_mb() #11
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 12
  %57 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 65416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #11, !srcloc !312
  %59 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.105) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io, align 4
  %add.ptr37 = getelementptr i8, ptr %62, i32 49160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16777216) #11, !srcloc !312
  %fw_loaded = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fw_loaded, i32 noundef 4) #11
  %63 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %fw_loaded, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body26, %do.end23, %do.end15, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call10, %do.end15 ], [ %call18, %do.end23 ], [ 0, %do.body26 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @channel_swdemux_tsklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -136
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !358

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %irec = getelementptr i8, ptr %t, i32 28
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irec, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !358

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %fei5 = getelementptr i8, ptr %t, i32 24
  %2 = ptrtoint ptr %fei5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fei5, align 4
  %add.ptr7 = getelementptr i8, ptr %1, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !314
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  %6 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irec, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !314
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  %back_buffer_busaddr = getelementptr i8, ptr %t, i32 -76
  %10 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %back_buffer_busaddr, align 4
  %sub = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp = icmp ult i32 %5, %9
  %add = add i32 %11, 522240
  %spec.select = select i1 %cmp, i32 %add, i32 %5
  %sub20 = sub i32 %spec.select, %9
  %div = sdiv i32 %sub20, 192
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %9, i32 noundef %sub20, i32 noundef 2) #11
  %back_buffer_aligned = getelementptr i8, ptr %t, i32 -80
  %14 = ptrtoint ptr %back_buffer_aligned to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %back_buffer_aligned, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @channel_swdemux_tsklet.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@channel_swdemux_tsklet, %if.then30)) #11
          to label %do.end [label %if.then30], !srcloc !322

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @channel_swdemux_tsklet.__UNIQUE_ID_ddebug387, ptr noundef %17, ptr noundef nonnull @.str.162, i32 noundef %19, ptr noundef nonnull %add.ptr, i32 noundef %div, ptr noundef %15, i32 noundef %sub, i32 noundef %9, i32 noundef %spec.select) #11
  br label %do.end

do.end:                                           ; preds = %if.then30, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %sub20)
  %cmp3392 = icmp sgt i32 %sub20, 191
  br i1 %cmp3392, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %c8sectpfe = getelementptr inbounds %struct.c8sectpfei, ptr %3, i32 0, i32 8
  %demux_mapping = getelementptr i8, ptr %t, i32 -92
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.094 = phi i32 [ %sub, %for.body.lr.ph ], [ %add36, %for.body.for.body_crit_edge ]
  %n.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %c8sectpfe, align 4
  %22 = ptrtoint ptr %demux_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %demux_mapping, align 4
  %arrayidx34 = getelementptr [7 x %struct.stdemux], ptr %21, i32 0, i32 %23
  %arrayidx35 = getelementptr i8, ptr %15, i32 %pos.094
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %arrayidx34, ptr noundef %arrayidx35, i32 noundef 1) #11
  %add36 = add i32 %pos.094, 192
  %inc = add nuw nsw i32 %n.093, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %24 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %back_buffer_busaddr, align 4
  %add38 = add i32 %25, 522240
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %add38)
  %cmp39 = icmp eq i32 %spec.select, %add38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %cmp39, label %do.body41, label %do.body47

do.body41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %back_buffer_busaddr, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irec, align 4
  %add.ptr46 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %28) #11, !srcloc !312
  br label %cleanup

do.body47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %32 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irec, align 4
  %add.ptr51 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %31) #11, !srcloc !312
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %do.body41, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_slim_core_fw(ptr noundef %fw, ptr noundef readonly %fei) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  %tobool1.not = icmp eq ptr %fei, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp57.not = icmp eq i16 %3, 0
  br i1 %cmp57.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_phoff, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %phdr.058 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %phdr.058 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phdr.058, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.not = icmp eq i32 %7, 1
  br i1 %cmp4.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 1
  %8 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_offset, align 4
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 4
  %10 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_filesz, align 4
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp8 = icmp ugt i32 %add, %13
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fei, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.133, i32 noundef %i.060) #14
  br label %for.end

if.end11:                                         ; preds = %if.end7
  %p_flags = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 6
  %16 = ptrtoint ptr %p_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr14 = getelementptr i8, ptr %19, i32 16384
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 3
  %20 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p_paddr, align 4
  %and15 = shl i32 %21, 2
  %mul = and i32 %and15, 4194300
  %add.ptr16 = getelementptr i8, ptr %add.ptr14, i32 %mul
  tail call fastcc void @load_imem_segment(ptr noundef nonnull %fei, ptr noundef %phdr.058, ptr noundef nonnull %fw, ptr noundef %add.ptr16, i32 noundef %i.060)
  br label %for.inc

if.else:                                          ; preds = %if.end11
  %add.ptr18 = getelementptr i8, ptr %19, i32 32768
  %p_paddr19 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 3
  %22 = ptrtoint ptr %p_paddr19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_paddr19, align 4
  %and20 = shl i32 %23, 2
  %mul21 = and i32 %and20, 4194300
  %add.ptr22 = getelementptr i8, ptr %add.ptr18, i32 %mul21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_dmem_segment.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_slim_core_fw, %if.then.i)) #11
          to label %load_dmem_segment.exit [label %if.then.i], !srcloc !322

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fei, align 4
  %26 = ptrtoint ptr %p_paddr19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_paddr19, align 4
  %28 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p_filesz, align 4
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 5
  %30 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p_memsz.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_dmem_segment.__UNIQUE_ID_ddebug397, ptr noundef %25, ptr noundef nonnull @.str.138, i32 noundef %i.060, i32 noundef %27, i32 noundef %29, ptr noundef %add.ptr22, i32 noundef %31) #11
  br label %load_dmem_segment.exit

load_dmem_segment.exit:                           ; preds = %if.then.i, %if.else
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_filesz, align 4
  %38 = call ptr @memcpy(ptr %add.ptr22, ptr %add.ptr.i, i32 %37)
  %39 = load i32, ptr %p_filesz, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr22, i32 %39
  %p_memsz6.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.058, i32 0, i32 5
  %40 = ptrtoint ptr %p_memsz6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p_memsz6.i, align 4
  %sub.i = sub i32 %41, %39
  %42 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  br label %for.inc

for.inc:                                          ; preds = %load_dmem_segment.exit, %if.then13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr.058, i32 1
  %43 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %44 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %if.end.for.end_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @release_firmware(ptr noundef nonnull %fw) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_channels(ptr noundef %fei) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fei, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #11
  %cmp.not23 = icmp eq ptr %call, null
  br i1 %cmp.not23, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %child.025 = phi ptr [ %call3, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %index.024 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %fei, i32 0, i32 15, i32 %index.024
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @configure_memdma_and_inputblock(ptr noundef %fei, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fei, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.139) #14
  %dec26 = add i32 %index.024, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec26)
  %cmp427 = icmp sgt i32 %dec26, -1
  br i1 %cmp427, label %do.end.while.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

if.end:                                           ; preds = %for.body
  %inc = add i32 %index.024, 1
  %call3 = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef nonnull %child.025) #11
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %dec28 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec26, %do.end.while.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.c8sectpfei, ptr %fei, i32 0, i32 15, i32 %dec28
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  tail call fastcc void @free_input_block(ptr noundef %fei, ptr noundef %9)
  %dec = add nsw i32 %dec28, -1
  %cmp4 = icmp sgt i32 %dec28, 0
  br i1 %cmp4, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %while.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_imem_segment(ptr nocapture noundef readonly %fei, ptr nocapture noundef readonly %phdr, ptr nocapture noundef readonly %fw, ptr noundef %dest, i32 noundef %seg_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 1
  %2 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_imem_segment.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_imem_segment, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fei, align 4
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 3
  %6 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_paddr, align 4
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 4
  %8 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_filesz, align 4
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 5
  %10 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_memsz, align 4
  %div = udiv i32 %11, 3
  %add = add i32 %div, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_imem_segment.__UNIQUE_ID_ddebug396, ptr noundef %5, ptr noundef nonnull @.str.136, i32 noundef %seg_num, i32 noundef %7, i32 noundef %9, ptr noundef %dest, i32 noundef %add) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %p_filesz4 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 4
  %12 = ptrtoint ptr %p_filesz4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_filesz4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp32.not = icmp eq i32 %13, 0
  br i1 %cmp32.not, label %do.end.for.end_crit_edge, label %do.end.do.body5_crit_edge

do.end.do.body5_crit_edge:                        ; preds = %do.end
  br label %do.body5

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body5:                                         ; preds = %if.end16.do.body5_crit_edge, %do.end.do.body5_crit_edge
  %dest.addr.035 = phi ptr [ %incdec.ptr17, %if.end16.do.body5_crit_edge ], [ %dest, %do.end.do.body5_crit_edge ]
  %imem_src.034 = phi ptr [ %incdec.ptr18, %if.end16.do.body5_crit_edge ], [ %add.ptr, %do.end.do.body5_crit_edge ]
  %i.033 = phi i32 [ %inc, %if.end16.do.body5_crit_edge ], [ 0, %do.end.do.body5_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %imem_src.034) #11, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %dest.addr.035, i8 %14) #11, !srcloc !364
  %rem = srem i32 %i.033, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 2
  br i1 %cmp11, label %if.then12, label %do.body5.if.end16_crit_edge

do.body5.if.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %dest.addr.035, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr, i8 0) #11, !srcloc !364
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.body5.if.end16_crit_edge
  %dest.addr.1 = phi ptr [ %incdec.ptr, %if.then12 ], [ %dest.addr.035, %do.body5.if.end16_crit_edge ]
  %incdec.ptr17 = getelementptr i8, ptr %dest.addr.1, i32 1
  %incdec.ptr18 = getelementptr i8, ptr %imem_src.034, i32 1
  %inc = add nuw i32 %i.033, 1
  %15 = ptrtoint ptr %p_filesz4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_filesz4, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %if.end16.do.body5_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end16.do.body5_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_memdma_and_inputblock(ptr noundef %fei, ptr noundef %tsin) unnamed_addr #2 align 64 {
entry:
  %tsin_pin_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tsin_pin_name) #11
  %tobool.not = icmp eq ptr %fei, null
  %tobool1.not = icmp eq ptr %tsin, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %0 = call ptr @memset(ptr %tsin_pin_name, i32 255, i32 20)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_memdma_and_inputblock, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !322

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fei, align 4
  %3 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tsin, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug392, ptr noundef %2, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i32 noundef 457, ptr noundef nonnull %tsin, i32 noundef %4) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %idle_completion = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 22
  %5 = ptrtoint ptr %idle_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idle_completion, align 4
  %wait.i = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #11
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 522272, i32 noundef 3520, i32 noundef 7) #16
  %back_buffer_start = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 15
  %6 = ptrtoint ptr %back_buffer_start to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i, ptr %back_buffer_start, align 4
  %tobool10.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool10.not, label %do.end.err_unmap_crit_edge, label %if.end12

do.end.err_unmap_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap

if.end12:                                         ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 32
  %back_buffer_aligned = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 16
  %7 = ptrtoint ptr %back_buffer_aligned to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %back_buffer_aligned, align 4
  %8 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fei, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %add.ptr) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end12
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !366

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.160, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr to i32
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef nonnull %add.ptr, i32 noundef 522240) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 522240, i32 noundef 0, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i471 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %back_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 17
  %16 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i471, ptr %back_buffer_busaddr, align 4
  %17 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fei, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %retval.0.i471) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i471)
  %cmp.i = icmp eq i32 %retval.0.i471, -1
  br i1 %cmp.i, label %do.end26, label %if.end28

do.end26:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fei, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.143) #14
  br label %err_unmap

if.end28:                                         ; preds = %dma_map_single_attrs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 2048) #17
  %pid_buffer_start = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 18
  %22 = ptrtoint ptr %pid_buffer_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %pid_buffer_start, align 4
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.end28.err_unmap_crit_edge, label %if.end33

if.end28.err_unmap_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap

if.end33:                                         ; preds = %if.end28
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 1024
  %pid_buffer_aligned = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 19
  %23 = ptrtoint ptr %add.ptr35 to i32
  %and37 = and i32 %23, -1024
  %24 = inttoptr i32 %and37 to ptr
  %25 = ptrtoint ptr %pid_buffer_aligned to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %pid_buffer_aligned, align 4
  %26 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fei, align 4
  %call.i473 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #11
  br i1 %call.i473, label %land.rhs.i475, label %if.end39.i488

land.rhs.i475:                                    ; preds = %if.end33
  %.b1.i474 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i474, label %land.rhs.i475.dma_map_single_attrs.exit490_crit_edge, label %if.then.i479, !prof !366

land.rhs.i475.dma_map_single_attrs.exit490_crit_edge: ; preds = %land.rhs.i475
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit490

if.then.i479:                                     ; preds = %land.rhs.i475
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i476 = tail call ptr @dev_driver_string(ptr noundef %27) #11
  %init_name.i.i477 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i477 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i477, align 8
  %tobool.not.i.i478 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i478, label %if.end.i.i480, label %if.then.i479.dev_name.exit.i482_crit_edge

if.then.i479.dev_name.exit.i482_crit_edge:        ; preds = %if.then.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i482

if.end.i.i480:                                    ; preds = %if.then.i479
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit.i482

dev_name.exit.i482:                               ; preds = %if.end.i.i480, %if.then.i479.dev_name.exit.i482_crit_edge
  %retval.0.i.i481 = phi ptr [ %31, %if.end.i.i480 ], [ %29, %if.then.i479.dev_name.exit.i482_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.160, ptr noundef %call16.i476, ptr noundef %retval.0.i.i481) #11
  br label %dma_map_single_attrs.exit490

if.end39.i488:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %27, ptr noundef %24, i32 noundef 1024) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %sub.i483 = add i32 %and37, 1073741824
  %shr.i484 = lshr i32 %sub.i483, 12
  %add.ptr.i485 = getelementptr %struct.page, ptr %32, i32 %shr.i484
  %and.i486 = and i32 %23, 3072
  %call41.i487 = tail call i32 @dma_map_page_attrs(ptr noundef %27, ptr noundef %add.ptr.i485, i32 noundef %and.i486, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit490

dma_map_single_attrs.exit490:                     ; preds = %if.end39.i488, %dev_name.exit.i482, %land.rhs.i475.dma_map_single_attrs.exit490_crit_edge
  %retval.0.i489 = phi i32 [ %call41.i487, %if.end39.i488 ], [ -1, %dev_name.exit.i482 ], [ -1, %land.rhs.i475.dma_map_single_attrs.exit490_crit_edge ]
  %pid_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 20
  %33 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i489, ptr %pid_buffer_busaddr, align 4
  %34 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fei, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %retval.0.i489) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i489)
  %cmp.i491 = icmp eq i32 %retval.0.i489, -1
  %36 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fei, align 4
  br i1 %cmp.i491, label %do.end49, label %if.end51

do.end49:                                         ; preds = %dma_map_single_attrs.exit490
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.145) #14
  br label %err_unmap

if.end51:                                         ; preds = %dma_map_single_attrs.exit490
  %38 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid_buffer_busaddr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %37, i32 noundef %39, i32 noundef 1024, i32 noundef 1) #11
  %40 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tsin, align 4
  %serial_not_parallel = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 2
  %42 = ptrtoint ptr %serial_not_parallel to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %serial_not_parallel, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool55.not = icmp eq i8 %43, 0
  %cond = select i1 %tobool55.not, ptr @.str.149, ptr @.str.148
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tsin_pin_name, i32 noundef 20, ptr noundef nonnull @.str.147, i32 noundef %41, ptr noundef nonnull %cond)
  %pinctrl = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 1
  %44 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pinctrl, align 4
  %call58 = call ptr @pinctrl_lookup_state(ptr noundef %45, ptr noundef nonnull %tsin_pin_name) #11
  %pstate = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 12
  %46 = ptrtoint ptr %pstate to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call58, ptr %pstate, align 4
  %cmp.i493 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i493, label %do.end64, label %if.end69

do.end64:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.141, ptr noundef nonnull %tsin_pin_name) #14
  %49 = ptrtoint ptr %pstate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pstate, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %err_unmap

if.end69:                                         ; preds = %if.end51
  %52 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pinctrl, align 4
  %call72 = call i32 @pinctrl_select_state(ptr noundef %53, ptr noundef %call58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.141) #14
  br label %err_unmap

if.end79:                                         ; preds = %if.end69
  %io = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 12
  %56 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io, align 4
  %add.ptr80 = getelementptr i8, ptr %57, i32 48
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #11, !srcloc !314
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  %60 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tsin, align 4
  %shl = shl nuw i32 1, %61
  %or = or i32 %shl, %59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  call void @arm_heavy_mb() #11
  %62 = call i32 @llvm.bswap.i32(i32 %or)
  %63 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io, align 4
  %add.ptr89 = getelementptr i8, ptr %64, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %62) #11, !srcloc !312
  %65 = ptrtoint ptr %serial_not_parallel to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %serial_not_parallel, align 1, !range !323
  %67 = zext i8 %66 to i32
  %spec.select = or i32 %or, %67
  %invert_ts_clk = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 1
  %68 = ptrtoint ptr %invert_ts_clk to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %invert_ts_clk, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool95.not = icmp eq i8 %69, 0
  %or97 = or i32 %spec.select, 16
  %tmp.1 = select i1 %tobool95.not, i32 %spec.select, i32 %or97
  %async_not_sync = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 3
  %70 = ptrtoint ptr %async_not_sync to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %async_not_sync, align 2, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool99.not = icmp eq i8 %71, 0
  %or101 = or i32 %tmp.1, 4
  %tmp.2 = select i1 %tobool99.not, i32 %tmp.1, i32 %or101
  %or103 = or i32 %tmp.2, 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  call void @arm_heavy_mb() #11
  %72 = call i32 @llvm.bswap.i32(i32 %or103)
  %73 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io, align 4
  %75 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tsin, align 4
  %mul = shl i32 %76, 6
  %add = add i32 %mul, 4096
  %add.ptr110 = getelementptr i8, ptr %74, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %72) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io, align 4
  %79 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tsin, align 4
  %mul116 = shl i32 %80, 6
  %add118 = add i32 %mul116, 4100
  %add.ptr119 = getelementptr i8, ptr %78, i32 %add118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 155648000) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io, align 4
  %83 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tsin, align 4
  %mul125 = shl i32 %84, 6
  %add127 = add i32 %mul125, 4112
  %add.ptr128 = getelementptr i8, ptr %82, i32 %add127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 -1140850688) #11, !srcloc !312
  %85 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tsin, align 4
  %mul130 = shl i32 %86, 10
  %fifo = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 21
  %87 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul130, ptr %fifo, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fifo, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io, align 4
  %93 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tsin, align 4
  %mul137 = shl i32 %94, 6
  %add139 = add i32 %mul137, 4116
  %add.ptr140 = getelementptr i8, ptr %92, i32 %add139
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %90) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  call void @arm_heavy_mb() #11
  %95 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fifo, align 4
  %sub = add i32 %96, 1023
  %97 = call i32 @llvm.bswap.i32(i32 %sub)
  %98 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io, align 4
  %100 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tsin, align 4
  %mul148 = shl i32 %101, 6
  %add150 = add i32 %mul148, 4120
  %add.ptr151 = getelementptr i8, ptr %99, i32 %add150
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %97) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  call void @arm_heavy_mb() #11
  %102 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fifo, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103)
  %105 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io, align 4
  %107 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tsin, align 4
  %mul158 = shl i32 %108, 6
  %add160 = add i32 %mul158, 4124
  %add.ptr161 = getelementptr i8, ptr %106, i32 %add160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %104) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  call void @arm_heavy_mb() #11
  %109 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fifo, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io, align 4
  %114 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tsin, align 4
  %mul168 = shl i32 %115, 6
  %add170 = add i32 %mul168, 4128
  %add.ptr171 = getelementptr i8, ptr %113, i32 %add170
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %111) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  call void @arm_heavy_mb() #11
  %116 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pid_buffer_busaddr, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117)
  %119 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %io, align 4
  %121 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tsin, align 4
  %mul178 = shl i32 %122, 2
  %add179 = add i32 %mul178, 10240
  %add.ptr180 = getelementptr i8, ptr %120, i32 %add179
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %118) #11, !srcloc !312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_memdma_and_inputblock, %if.then193)) #11
          to label %do.end209 [label %if.then193], !srcloc !322

if.then193:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fei, align 4
  %125 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tsin, align 4
  %127 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io, align 4
  %mul200 = shl i32 %126, 2
  %add201 = add i32 %mul200, 10240
  %add.ptr202 = getelementptr i8, ptr %128, i32 %add201
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #11, !srcloc !314
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug393, ptr noundef %124, ptr noundef nonnull @.str.156, i32 noundef %126, i32 noundef %130, ptr noundef %pid_buffer_busaddr) #11
  br label %do.end209

do.end209:                                        ; preds = %if.then193, %if.end79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %131 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %io, align 4
  %133 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tsin, align 4
  %mul215 = shl i32 %134, 6
  %add217 = add i32 %mul215, 4108
  %add.ptr218 = getelementptr i8, ptr %132, i32 %add217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 1745027200) #11, !srcloc !312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_memdma_and_inputblock, %if.then231)) #11
          to label %do.end280 [label %if.then231], !srcloc !322

if.then231:                                       ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fei, align 4
  %137 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tsin, align 4
  %139 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %io, align 4
  %mul238 = shl i32 %138, 6
  %add240 = add i32 %mul238, 4128
  %add.ptr241 = getelementptr i8, ptr %140, i32 %add240
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241) #11, !srcloc !314
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  %143 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %io, align 4
  %145 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tsin, align 4
  %mul249 = shl i32 %146, 6
  %add251 = add i32 %mul249, 4124
  %add.ptr252 = getelementptr i8, ptr %144, i32 %add251
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr252) #11, !srcloc !314
  %148 = call i32 @llvm.bswap.i32(i32 %147)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  %149 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %io, align 4
  %151 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tsin, align 4
  %mul260 = shl i32 %152, 6
  %add262 = add i32 %mul260, 4116
  %add.ptr263 = getelementptr i8, ptr %150, i32 %add262
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr263) #11, !srcloc !314
  %154 = call i32 @llvm.bswap.i32(i32 %153)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  %155 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io, align 4
  %157 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tsin, align 4
  %mul271 = shl i32 %158, 6
  %add273 = add i32 %mul271, 4120
  %add.ptr274 = getelementptr i8, ptr %156, i32 %add273
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr274) #11, !srcloc !314
  %160 = call i32 @llvm.bswap.i32(i32 %159)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug394, ptr noundef %136, ptr noundef nonnull @.str.157, i32 noundef %138, i32 noundef %142, i32 noundef %148, i32 noundef %154, i32 noundef %160) #11
  br label %do.end280

do.end280:                                        ; preds = %if.then231, %do.end209
  %161 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %io, align 4
  %add.ptr283 = getelementptr i8, ptr %162, i32 32768
  %add.ptr287 = getelementptr i8, ptr %162, i32 32772
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr287) #11, !srcloc !314
  %164 = call i32 @llvm.bswap.i32(i32 %163)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  %add.ptr291 = getelementptr i8, ptr %add.ptr283, i32 %164
  %irec = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 25
  %165 = ptrtoint ptr %tsin to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tsin, align 4
  %mul293 = shl i32 %166, 5
  %add.ptr295 = getelementptr i8, ptr %add.ptr291, i32 %mul293
  %167 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %add.ptr295, ptr %irec, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  call void @arm_heavy_mb() #11
  %168 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fifo, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169)
  %171 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %irec, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  call void @arm_heavy_mb() #11
  %173 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %fifo, align 4
  %sub307 = add i32 %174, 1023
  %175 = call i32 @llvm.bswap.i32(i32 %sub307)
  %176 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %irec, align 4
  %add.ptr309 = getelementptr i8, ptr %177, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr309, i32 %175) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  call void @arm_heavy_mb() #11
  %178 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %irec, align 4
  %add.ptr314 = getelementptr i8, ptr %179, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314, i32 -1073741824) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  call void @arm_heavy_mb() #11
  %180 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %irec, align 4
  %add.ptr319 = getelementptr i8, ptr %181, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 16777216) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  call void @arm_heavy_mb() #11
  %182 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %back_buffer_busaddr, align 4
  %184 = call i32 @llvm.bswap.i32(i32 %183)
  %185 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %irec, align 4
  %add.ptr325 = getelementptr i8, ptr %186, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr325, i32 %184) #11, !srcloc !312
  %187 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %back_buffer_busaddr, align 4
  %sub328 = add i32 %188, 522239
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  call void @arm_heavy_mb() #11
  %189 = call i32 @llvm.bswap.i32(i32 %sub328)
  %190 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %irec, align 4
  %add.ptr333 = getelementptr i8, ptr %191, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %189) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  call void @arm_heavy_mb() #11
  %192 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %back_buffer_busaddr, align 4
  %194 = call i32 @llvm.bswap.i32(i32 %193)
  %195 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %irec, align 4
  %add.ptr339 = getelementptr i8, ptr %196, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 %194) #11, !srcloc !312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  call void @arm_heavy_mb() #11
  %197 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %back_buffer_busaddr, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198)
  %200 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %irec, align 4
  %add.ptr345 = getelementptr i8, ptr %201, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr345, i32 %199) #11, !srcloc !312
  %tsklet = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 23
  call void @tasklet_setup(ptr noundef %tsklet, ptr noundef nonnull @channel_swdemux_tsklet) #11
  br label %cleanup

err_unmap:                                        ; preds = %do.end77, %do.end64, %do.end49, %if.end28.err_unmap_crit_edge, %do.end26, %do.end.err_unmap_crit_edge
  %ret.0 = phi i32 [ -14, %do.end26 ], [ -14, %do.end49 ], [ %51, %do.end64 ], [ %call72, %do.end77 ], [ -12, %do.end.err_unmap_crit_edge ], [ -12, %if.end28.err_unmap_crit_edge ]
  call fastcc void @free_input_block(ptr noundef nonnull %fei, ptr noundef nonnull %tsin)
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %do.end280, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unmap ], [ 0, %do.end280 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tsin_pin_name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_input_block(ptr noundef readonly %fei, ptr noundef readonly %tsin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fei, null
  %tobool1.not = icmp eq ptr %tsin, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %back_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 17
  %0 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %back_buffer_busaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fei, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, -1
  br i1 %cmp.i.not, label %if.then3.if.end10_crit_edge, label %if.then6

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fei, align 4
  %6 = ptrtoint ptr %back_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %back_buffer_busaddr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %7, i32 noundef 522240, i32 noundef 0, i32 noundef 0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %back_buffer_start = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 15
  %8 = ptrtoint ptr %back_buffer_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back_buffer_start, align 4
  tail call void @kfree(ptr noundef %9) #11
  %pid_buffer_busaddr = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 20
  %10 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid_buffer_busaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end21_crit_edge, label %if.then12

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fei, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i35.not = icmp eq i32 %11, -1
  br i1 %cmp.i35.not, label %if.then12.if.end21_crit_edge, label %if.then17

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fei, align 4
  %16 = ptrtoint ptr %pid_buffer_busaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid_buffer_busaddr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then12.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %pid_buffer_start = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 18
  %18 = ptrtoint ptr %pid_buffer_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pid_buffer_start, align 4
  tail call void @kfree(ptr noundef %19) #11
  br label %return

return:                                           ; preds = %if.end21, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c8sectpfe_tuner_unregister_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c8sectpfe_debugfs_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !256, !258, !260, !261, !262, !264, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !289, !291, !292, !294, !295, !297, !298, !299, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__UNIQUE_ID_firmware386, !1, !"__UNIQUE_ID_firmware386", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 43, i32 1}
!2 = !{ptr @__initcall__kmod_c8sectpfe__398_1190_c8sectpfe_driver_init6, !3, !"__initcall__kmod_c8sectpfe__398_1190_c8sectpfe_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1190, i32 1}
!4 = !{ptr @__exitcall_c8sectpfe_driver_exit, !3, !"__exitcall_c8sectpfe_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author399, !6, !"__UNIQUE_ID_author399", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1192, i32 1}
!7 = !{ptr @__UNIQUE_ID_author400, !8, !"__UNIQUE_ID_author400", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1193, i32 1}
!9 = !{ptr @__UNIQUE_ID_description401, !10, !"__UNIQUE_ID_description401", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1194, i32 1}
!11 = !{ptr @__UNIQUE_ID_file402, !12, !"__UNIQUE_ID_file402", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1195, i32 1}
!13 = !{ptr @__UNIQUE_ID_license403, !12, !"__UNIQUE_ID_license403", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1183, i32 11}
!16 = !{ptr @c8sectpfe_driver, !17, !"c8sectpfe_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1181, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 685, i32 6}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 692, i32 48}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 696, i32 49}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 704, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @c8sectpfe_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @c8sectpfe_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 710, i32 3}
!34 = !{ptr @c8sectpfe_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @c8sectpfe_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 728, i32 3}
!38 = !{ptr @c8sectpfe_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @c8sectpfe_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 736, i32 3}
!42 = !{ptr @c8sectpfe_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @c8sectpfe_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 745, i32 3}
!46 = !{ptr @c8sectpfe_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @c8sectpfe_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 753, i32 3}
!50 = !{ptr @c8sectpfe_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @c8sectpfe_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 774, i32 37}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 776, i32 4}
!56 = !{ptr @c8sectpfe_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @c8sectpfe_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 782, i32 4}
!60 = !{ptr @c8sectpfe_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @c8sectpfe_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 790, i32 8}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 793, i32 8}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 796, i32 8}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 798, i32 37}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 801, i32 4}
!72 = !{ptr @c8sectpfe_probe._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @c8sectpfe_probe._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 805, i32 37}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 807, i32 4}
!78 = !{ptr @c8sectpfe_probe._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @c8sectpfe_probe._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 814, i32 4}
!82 = !{ptr @c8sectpfe_probe._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @c8sectpfe_probe._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 821, i32 45}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 825, i32 4}
!88 = !{ptr @c8sectpfe_probe._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @c8sectpfe_probe._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 833, i32 26}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 835, i32 4}
!94 = !{ptr @c8sectpfe_probe._entry.50, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @c8sectpfe_probe._entry_ptr.52, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 850, i32 3}
!98 = !{ptr @c8sectpfe_probe.__UNIQUE_ID_ddebug395, !97, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!99 = !{ptr @c8sectpfe_probe.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 861, i32 2}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @c8sectpfe_probe.__key.55, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 863, i32 2}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 871, i32 3}
!107 = !{ptr @c8sectpfe_probe._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @c8sectpfe_probe._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 387, i32 2}
!111 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @c8sectpfe_getconfig._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @c8sectpfe_getconfig._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 388, i32 2}
!117 = !{ptr @c8sectpfe_getconfig._entry.63, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @c8sectpfe_getconfig._entry_ptr.65, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 389, i32 2}
!121 = !{ptr @c8sectpfe_getconfig._entry.66, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @c8sectpfe_getconfig._entry_ptr.68, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 390, i32 2}
!125 = !{ptr @c8sectpfe_getconfig._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @c8sectpfe_getconfig._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 392, i32 2}
!129 = !{ptr @c8sectpfe_getconfig._entry.72, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @c8sectpfe_getconfig._entry_ptr.74, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 393, i32 2}
!133 = !{ptr @c8sectpfe_getconfig._entry.75, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @c8sectpfe_getconfig._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 394, i32 2}
!137 = !{ptr @c8sectpfe_getconfig._entry.78, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @c8sectpfe_getconfig._entry_ptr.80, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 395, i32 2}
!141 = !{ptr @c8sectpfe_getconfig._entry.81, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @c8sectpfe_getconfig._entry_ptr.83, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.84, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 652, i32 2}
!145 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @c8sectpfe_error_irq_handler._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @c8sectpfe_error_irq_handler._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 149, i32 3}
!150 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @c8sectpfe_start_feed._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @c8sectpfe_start_feed._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @c8sectpfe_start_feed._entry.88, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 163, i32 4}
!155 = !{ptr @c8sectpfe_start_feed._entry_ptr.89, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 208, i32 3}
!158 = !{ptr @c8sectpfe_start_feed.__UNIQUE_ID_ddebug388, !157, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 241, i32 3}
!161 = !{ptr @c8sectpfe_start_feed.__UNIQUE_ID_ddebug389, !160, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1134, i32 2}
!164 = !{ptr @.str.93, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @load_c8sectpfe_fw._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @load_c8sectpfe_fw._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1142, i32 3}
!170 = !{ptr @load_c8sectpfe_fw._entry.95, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @load_c8sectpfe_fw._entry_ptr.97, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.99, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1150, i32 3}
!174 = !{ptr @load_c8sectpfe_fw._entry.98, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @load_c8sectpfe_fw._entry_ptr.100, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1157, i32 3}
!178 = !{ptr @load_c8sectpfe_fw._entry.101, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @load_c8sectpfe_fw._entry_ptr.103, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1167, i32 2}
!182 = !{ptr @load_c8sectpfe_fw._entry.104, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @load_c8sectpfe_fw._entry_ptr.106, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 958, i32 3}
!186 = !{ptr @.str.108, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @c8sectpfe_elf_sanity_check._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.110, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 963, i32 3}
!191 = !{ptr @c8sectpfe_elf_sanity_check._entry.109, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.111, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 972, i32 3}
!195 = !{ptr @c8sectpfe_elf_sanity_check._entry.112, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.114, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 977, i32 3}
!199 = !{ptr @c8sectpfe_elf_sanity_check._entry.115, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.117, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @c8sectpfe_elf_sanity_check._entry.118, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 982, i32 3}
!203 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.119, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.120, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 986, i32 28}
!206 = !{ptr @.str.122, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 987, i32 3}
!208 = !{ptr @c8sectpfe_elf_sanity_check._entry.121, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.123, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.125, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 997, i32 3}
!212 = !{ptr @c8sectpfe_elf_sanity_check._entry.124, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.126, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.128, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1002, i32 3}
!216 = !{ptr @c8sectpfe_elf_sanity_check._entry.127, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.129, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.131, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1007, i32 3}
!220 = !{ptr @c8sectpfe_elf_sanity_check._entry.130, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @c8sectpfe_elf_sanity_check._entry_ptr.132, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.133, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1094, i32 4}
!224 = !{ptr @.str.134, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @load_slim_core_fw._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @load_slim_core_fw._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.135, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1029, i32 2}
!229 = !{ptr @.str.136, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @load_imem_segment.__UNIQUE_ID_ddebug396, !228, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!231 = !{ptr @.str.137, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1058, i32 2}
!233 = !{ptr @.str.138, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @load_dmem_segment.__UNIQUE_ID_ddebug397, !232, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!235 = !{ptr @.str.139, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 935, i32 4}
!237 = !{ptr @.str.140, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @configure_channels._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @configure_channels._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.141, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 456, i32 2}
!242 = !{ptr @.str.142, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug392, !241, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!244 = !{ptr @.str.143, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 482, i32 3}
!246 = !{ptr @configure_memdma_and_inputblock._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @configure_memdma_and_inputblock._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.145, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 518, i32 3}
!250 = !{ptr @configure_memdma_and_inputblock._entry.144, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @configure_memdma_and_inputblock._entry_ptr.146, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.147, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 529, i32 36}
!254 = !{ptr @.str.148, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 530, i32 32}
!256 = !{ptr @.str.149, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 530, i32 43}
!258 = !{ptr @.str.151, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 534, i32 3}
!260 = !{ptr @configure_memdma_and_inputblock._entry.150, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @configure_memdma_and_inputblock._entry_ptr.152, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.154, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 543, i32 3}
!264 = !{ptr @configure_memdma_and_inputblock._entry.153, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @configure_memdma_and_inputblock._entry_ptr.155, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.156, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 587, i32 2}
!268 = !{ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug393, !267, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!269 = !{ptr @.str.157, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 604, i32 2}
!271 = !{ptr @configure_memdma_and_inputblock.__UNIQUE_ID_ddebug394, !270, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!272 = !{ptr @init_completion.__key, !273, !"__key", i1 false, i1 false}
!273 = !{!"../include/linux/completion.h", i32 87, i32 2}
!274 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!275 = distinct !{null, !276, !"__already_done", i1 false, i1 false}
!276 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!277 = !{ptr @.str.159, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.160, !276, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.161, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 112, i32 2}
!281 = !{ptr @.str.162, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @channel_swdemux_tsklet.__UNIQUE_ID_ddebug387, !280, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!283 = !{ptr @.str.163, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 314, i32 4}
!285 = !{ptr @.str.164, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.165, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @c8sectpfe_stop_feed._entry, !284, !"_entry", i1 false, i1 false}
!288 = !{ptr @c8sectpfe_stop_feed._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.166, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 331, i32 3}
!291 = !{ptr @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug390, !290, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!292 = !{ptr @.str.167, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 349, i32 3}
!294 = !{ptr @c8sectpfe_stop_feed.__UNIQUE_ID_ddebug391, !293, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!295 = !{ptr @.str.168, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 907, i32 2}
!297 = !{ptr @.str.169, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @c8sectpfe_remove._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @c8sectpfe_remove._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @c8sectpfe_match, !301, !"c8sectpfe_match", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c", i32 1175, i32 34}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{i64 2158234948}
!312 = !{i64 6284572}
!313 = !{i64 2158235436}
!314 = !{i64 6284990}
!315 = !{i64 2158179604}
!316 = !{i64 2158180088}
!317 = !{i64 2158180572}
!318 = !{i64 2158181056}
!319 = !{i64 2158181540}
!320 = !{i64 2158182024}
!321 = !{i64 2158182508}
!322 = !{i64 2148750424, i64 2148750429, i64 2148750442, i64 2148750486, i64 2148750520, i64 2148750541}
!323 = !{i8 0, i8 2}
!324 = !{i64 2158263144}
!325 = !{i64 2158263425}
!326 = !{i64 2158264096}
!327 = !{i64 2158264310}
!328 = !{i64 2158264955}
!329 = !{i64 2158265169}
!330 = !{i64 2158196734}
!331 = !{i64 2158197384}
!332 = !{i64 2158141397}
!333 = !{i64 2158156352}
!334 = !{i64 2158156807}
!335 = !{i64 2158159694}
!336 = !{i64 2158160336}
!337 = !{i64 2158160995}
!338 = !{i64 2158161621}
!339 = !{i64 2158162155}
!340 = !{i64 2158162753}
!341 = !{i64 2158163252}
!342 = !{i64 2158164115}
!343 = !{i64 2158164712}
!344 = !{i64 2158168219}
!345 = !{i64 2158168674}
!346 = !{i64 2158169263}
!347 = !{i64 2158169690}
!348 = !{i64 2148146987, i64 2148147013, i64 2148147042, i64 2148147076, i64 2148147107, i64 2148147130}
!349 = !{i64 2154188823}
!350 = !{i64 2154189465}
!351 = !{i64 2158170240}
!352 = !{i64 2158172535}
!353 = !{i64 2158173133}
!354 = !{i64 2158173632}
!355 = !{!"auto-init"}
!356 = !{i64 2158302276}
!357 = !{i64 2158304399}
!358 = !{!"branch_weights", i32 1, i32 2000}
!359 = !{i64 2158147362}
!360 = !{i64 2158147981}
!361 = !{i64 2158285672}
!362 = !{i64 6284770}
!363 = !{i64 2158285853}
!364 = !{i64 6284375}
!365 = !{i64 2158286115}
!366 = !{!"branch_weights", i32 2000, i32 1}
!367 = !{i64 2158208502}
!368 = !{i64 2158208805}
!369 = !{i64 2158209749}
!370 = !{i64 2158210434}
!371 = !{i64 2158211177}
!372 = !{i64 2158211763}
!373 = !{i64 2158212381}
!374 = !{i64 2158213016}
!375 = !{i64 2158213618}
!376 = !{i64 2158214153}
!377 = !{i64 2158217824}
!378 = !{i64 2158218306}
!379 = !{i64 2158222689}
!380 = !{i64 2158223434}
!381 = !{i64 2158224179}
!382 = !{i64 2158224924}
!383 = !{i64 2158225550}
!384 = !{i64 2158225781}
!385 = !{i64 2158226216}
!386 = !{i64 2158226670}
!387 = !{i64 2158227088}
!388 = !{i64 2158227545}
!389 = !{i64 2158228128}
!390 = !{i64 2158228618}
!391 = !{i64 2158229174}
